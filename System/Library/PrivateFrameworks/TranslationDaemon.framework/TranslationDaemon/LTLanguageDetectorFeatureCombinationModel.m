@interface LTLanguageDetectorFeatureCombinationModel
@end

@implementation LTLanguageDetectorFeatureCombinationModel

void __61___LTLanguageDetectorFeatureCombinationModel_initWithConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  ModelFeature = getModelFeature(v3);
  if (ModelFeature > 0x13)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = _LTOSLogLID();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61___LTLanguageDetectorFeatureCombinationModel_initWithConfig___block_invoke_cold_1(v3, v7);
    }
  }

  else
  {
    v5 = *(*(a1 + 32) + 40);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ModelFeature];
    [v5 addObject:v6];
  }
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(*(a1 + 32) + 48);
  switch([a2 integerValue])
  {
    case 0:
      v7 = *(a1 + 40);
      if (v7)
      {
        v8 = MEMORY[0x277CCABB0];
        v9 = [v7 bestTranscription];
        [v9 minConfidence];
        v10 = [v8 numberWithDouble:?];

        v6 = v9;
      }

      else
      {
        v10 = *(*(a1 + 32) + 48);
      }

      v73 = _LTOSLogLID();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_20(v73);
      }

      goto LABEL_98;
    case 1:
      v34 = *(a1 + 40);
      if (v34)
      {
        v35 = MEMORY[0x277CCABB0];
        v36 = [v34 bestTranscription];
        [v36 maxConfidence];
        v10 = [v35 numberWithDouble:?];

        v6 = v36;
      }

      else
      {
        v10 = *(*(a1 + 32) + 48);
      }

      v74 = _LTOSLogLID();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_19(v74);
      }

      goto LABEL_98;
    case 2:
      v24 = *(a1 + 40);
      if (v24)
      {
        v25 = MEMORY[0x277CCABB0];
        v26 = [v24 bestTranscription];
        [v26 confidence];
        v10 = [v25 numberWithDouble:?];

        v6 = v26;
      }

      else
      {
        v10 = *(*(a1 + 32) + 48);
      }

      v71 = _LTOSLogLID();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_18(v71);
      }

      goto LABEL_98;
    case 3:
      if (*(a1 + 40))
      {
        v29 = MEMORY[0x277CCABB0];
        v30 = [*(a1 + 56) bestTranscription];
        [v30 minConfidence];
        v10 = [v29 numberWithDouble:?];

        v6 = v30;
      }

      else
      {
        v10 = *(*(a1 + 32) + 48);
      }

      v72 = _LTOSLogLID();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_17(v72);
      }

      goto LABEL_98;
    case 4:
      if (*(a1 + 40))
      {
        v17 = MEMORY[0x277CCABB0];
        v18 = [*(a1 + 56) bestTranscription];
        [v18 maxConfidence];
        v10 = [v17 numberWithDouble:?];

        v6 = v18;
      }

      else
      {
        v10 = *(*(a1 + 32) + 48);
      }

      v70 = _LTOSLogLID();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_16(v70);
      }

      goto LABEL_98;
    case 5:
      if (*(a1 + 40))
      {
        v41 = MEMORY[0x277CCABB0];
        v42 = [*(a1 + 56) bestTranscription];
        [v42 confidence];
        v10 = [v41 numberWithDouble:?];

        v6 = v42;
      }

      else
      {
        v10 = *(*(a1 + 32) + 48);
      }

      v75 = _LTOSLogLID();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_15(v75);
      }

      goto LABEL_98;
    case 6:
      v45 = *(a1 + 32);
      v46 = [*(a1 + 64) count];
      if (v46)
      {
        v47 = [*(a1 + 64) lastObject];
      }

      else
      {
        v47 = 0;
      }

      v77 = [*(a1 + 72) sourceLocale];
      v10 = [v45 getAcousticLidConfidenceFromResult:v47 locale:v77];

      if (v46)
      {
      }

      v78 = _LTOSLogLID();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_14(v78);
      }

      goto LABEL_110;
    case 7:
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 64), "count")}];

      v31 = _LTOSLogLID();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_13(v31);
      }

      [*(a1 + 48) setObject:v10 atIndexedSubscript:a3];
      v32 = *(*(a1 + 104) + 8);
      if (*(v32 + 24))
      {
        goto LABEL_111;
      }

      v33 = [*(a1 + 64) count] != 0;
      v32 = *(*(a1 + 104) + 8);
      goto LABEL_114;
    case 8:
      v55 = *(a1 + 32);
      v56 = [*(a1 + 64) count];
      if (v56)
      {
        v57 = [*(a1 + 64) objectAtIndex:0];
      }

      else
      {
        v57 = 0;
      }

      v79 = [*(a1 + 72) sourceLocale];
      v10 = [v55 getAcousticLidConfidenceFromResult:v57 locale:v79];

      if (v56)
      {
      }

      v80 = _LTOSLogLID();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_12(v80);
      }

      goto LABEL_110;
    case 9:
      v21 = *(a1 + 32);
      v22 = [*(a1 + 64) count];
      if (v22 < 2)
      {
        v23 = 0;
      }

      else
      {
        v23 = [*(a1 + 64) objectAtIndex:1];
      }

      v66 = [*(a1 + 72) sourceLocale];
      v10 = [v21 getAcousticLidConfidenceFromResult:v23 locale:v66];

      if (v22 >= 2)
      {
      }

      v67 = _LTOSLogLID();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_11(v67);
      }

      goto LABEL_110;
    case 10:
      v52 = *(a1 + 32);
      v53 = [*(a1 + 64) count];
      if (v53 < 3)
      {
        v54 = 0;
      }

      else
      {
        v54 = [*(a1 + 64) objectAtIndex:2];
      }

      v68 = [*(a1 + 72) sourceLocale];
      v10 = [v52 getAcousticLidConfidenceFromResult:v54 locale:v68];

      if (v53 >= 3)
      {
      }

      v69 = _LTOSLogLID();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_10(v69);
      }

LABEL_110:
      [*(a1 + 48) setObject:v10 atIndexedSubscript:a3];
      v32 = *(*(a1 + 104) + 8);
      if (*(v32 + 24))
      {
        goto LABEL_111;
      }

      v76 = *(*(a1 + 32) + 56);
      goto LABEL_113;
    case 11:
      v15 = *(a1 + 80);
      if (v15 && [v15 count])
      {
        v16 = [*(a1 + 80) lastObject];
      }

      else
      {
        v16 = *(*(a1 + 32) + 48);
      }

      v10 = v16;

      v62 = _LTOSLogLID();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_9(v62);
      }

      goto LABEL_98;
    case 12:
      v19 = *(a1 + 80);
      if (v19 && [v19 count])
      {
        v20 = [*(a1 + 80) valueForKeyPath:@"@max.doubleValue"];
      }

      else
      {
        v20 = *(*(a1 + 32) + 48);
      }

      v10 = v20;

      v63 = _LTOSLogLID();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_8(v63);
      }

      goto LABEL_98;
    case 13:
      v43 = *(a1 + 80);
      if (v43 && [v43 count])
      {
        v44 = [*(a1 + 80) valueForKeyPath:@"@avg.doubleValue"];
      }

      else
      {
        v44 = *(*(a1 + 32) + 48);
      }

      v10 = v44;

      v65 = _LTOSLogLID();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_7(v65);
      }

      goto LABEL_98;
    case 14:
      v13 = *(a1 + 88);
      if (v13 && [v13 count])
      {
        v14 = [*(a1 + 88) lastObject];
      }

      else
      {
        v14 = *(*(a1 + 32) + 48);
      }

      v10 = v14;

      v61 = _LTOSLogLID();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_6(v61);
      }

      goto LABEL_98;
    case 15:
      v27 = *(a1 + 88);
      if (v27 && [v27 count])
      {
        v28 = [*(a1 + 88) valueForKeyPath:@"@max.doubleValue"];
      }

      else
      {
        v28 = *(*(a1 + 32) + 48);
      }

      v10 = v28;

      v64 = _LTOSLogLID();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_5(v64);
      }

      goto LABEL_98;
    case 16:
      v11 = *(a1 + 88);
      if (v11 && [v11 count])
      {
        v12 = [*(a1 + 88) valueForKeyPath:@"@avg.doubleValue"];
      }

      else
      {
        v12 = *(*(a1 + 32) + 48);
      }

      v10 = v12;

      v60 = _LTOSLogLID();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_4(v60);
      }

LABEL_98:
      [*(a1 + 48) setObject:v10 atIndexedSubscript:a3];
      v32 = *(*(a1 + 104) + 8);
      if (*(v32 + 24))
      {
LABEL_111:
        v33 = 1;
      }

      else
      {
        v76 = *(*(a1 + 32) + 48);
LABEL_113:
        v33 = v10 != v76;
      }

LABEL_114:
      *(v32 + 24) = v33;
      break;
    case 17:
      v37 = *(*(a1 + 32) + 64);
      v38 = [*(a1 + 72) sourceLocale];
      v39 = [v38 localeIdentifier];
      v10 = [v37 objectForKeyedSubscript:v39];

      v40 = _LTOSLogLID();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_3((a1 + 72), v40, v10);
      }

      goto LABEL_51;
    case 18:
      v48 = *(*(a1 + 32) + 64);
      v49 = [*(a1 + 72) targetLocale];
      v50 = [v49 localeIdentifier];
      v10 = [v48 objectForKeyedSubscript:v50];

      v51 = _LTOSLogLID();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_2((a1 + 72), v51, v10);
      }

      goto LABEL_51;
    case 19:
      v58 = [*(a1 + 72) sourceLocale];
      v10 = _LTPreferencesLanguageDetectorFeatureCombinationASRTypeIdentifierForASRDataPack(v58, *(a1 + 96));

      v59 = _LTOSLogLID();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_1((a1 + 96), v59);
      }

LABEL_51:
      [*(a1 + 48) setObject:v10 atIndexedSubscript:a3];
      break;
    default:
      v10 = v6;
      break;
  }
}

void __61___LTLanguageDetectorFeatureCombinationModel_initWithConfig___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Unknown feature in model file: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_2(uint64_t *a1, void *a2, void *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v6 = OUTLINED_FUNCTION_9(a1, a2);
  v7 = [v3 targetLocale];
  v8 = [v7 localeIdentifier];
  [a3 floatValue];
  OUTLINED_FUNCTION_7_0(v9);
  OUTLINED_FUNCTION_0_9(&dword_232E53000, v10, v11, "Language %{public}@ locale identifier source: %f", v12, v13, v14, v15, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_3(uint64_t *a1, void *a2, void *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v6 = OUTLINED_FUNCTION_9(a1, a2);
  v7 = [v3 sourceLocale];
  v8 = [v7 localeIdentifier];
  [a3 floatValue];
  OUTLINED_FUNCTION_7_0(v9);
  OUTLINED_FUNCTION_0_9(&dword_232E53000, v10, v11, "Language %{public}@ locale identifier source: %f", v12, v13, v14, v15, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_5(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_6(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_7(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_8(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_9(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_10(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() doubleValue];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_11(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() doubleValue];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_12(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() doubleValue];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_13(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() integerValue];
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_14(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() doubleValue];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_15(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_16(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_17(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_18(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_19(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke_cold_20(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_7() floatValue];
  OUTLINED_FUNCTION_1_6(v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

@end