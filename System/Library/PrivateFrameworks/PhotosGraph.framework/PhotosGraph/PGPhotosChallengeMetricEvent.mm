@interface PGPhotosChallengeMetricEvent
+ (BOOL)_isHighPrecisionCityscapeAsset:(id)a3;
+ (BOOL)_isHighPrecisionLandscapeAsset:(id)a3;
+ (id)_isVIPStringForResult:(BOOL)a3;
+ (id)_passedFilteringStringForResult:(BOOL)a3;
+ (id)_passedHighPrecisionStringForResult:(BOOL)a3;
+ (id)allMetricEventsWithGraphManager:(id)a3;
+ (id)meaningLabelFromMeaningQuestionMetricType:(unsigned __int16)a3;
+ (id)personActivityMeaningLabelFromMeaningQuestionMetricType:(unsigned __int16)a3;
+ (id)questionEntityTypesFromQuestionMetricType:(unsigned __int16)a3;
+ (id)relationshipLabelFromRelationshipQuestionMetricType:(unsigned __int16)a3;
+ (id)stringFromQuestionMetricType:(unsigned __int16)a3;
+ (unint64_t)algorithmVersionFromQuestionMetricType:(unsigned __int16)a3 withEventLabelingConfiguration:(id)a4;
+ (unsigned)questionTypeFromQuestionMetricType:(unsigned __int16)a3;
+ (unsigned)wallpaperSuggestionSubtypeForQuestionMetricType:(unsigned __int16)a3;
- (BOOL)_relatonshipInferenceResultForPersonNode:(id)a3 questionMetricType:(unsigned __int16)a4;
- (id)_ageCategoryInferenceResultsForAgeCategoryByPersonUUIDs:(id)a3;
- (id)_businessInferenceResultsForBusinessIdByAssetIds:(id)a3;
- (id)_currentPetInferenceResultsForPetUUIDs:(id)a3;
- (id)_featuredPhotoInferenceResultsForAnswerDateByAssetIds:(id)a3 questionMetricType:(unsigned __int16)a4;
- (id)_frequentLocationInferenceResultsForLocationByAssetIds:(id)a3 locationType:(id)a4;
- (id)_getInferredReasonFromMatchedConditions:(id)a3 withFallbackReason:(id)a4;
- (id)_groundTruthByAssetIdentifiersFromQuestions:(id)a3;
- (id)_groundTruthByPersonUUIDFromQuestions:(id)a3;
- (id)_groundTruthForAgeCategoryFromQuestions:(id)a3;
- (id)_groundTruthForBusinessFromQuestions:(id)a3;
- (id)_groundTruthForCurrentPetInferenceFromQuestions:(id)a3;
- (id)_groundTruthForFeaturedPhotoFromQuestions:(id)a3;
- (id)_groundTruthForFrequentLocationFromQuestions:(id)a3;
- (id)_groundTruthForHolidayFromQuestions:(id)a3;
- (id)_groundTruthForMusicQualityQuestions:(id)a3;
- (id)_groundTruthForNamingFromQuestions:(id)a3;
- (id)_groundTruthForPublicEventFromQuestions:(id)a3;
- (id)_groundTruthForStoryPromptSuggestionsQuestions:(id)a3;
- (id)_groundTruthForTitlingQuestions:(id)a3 questionType:(unsigned __int16)a4;
- (id)_groundTruthForTripTitlingQuestions:(id)a3;
- (id)_holidayInferenceResultByEntityIdentifierForHolidayQuestions:(id)a3;
- (id)_inferredReasonForLocationRepresentativeAssets:(id)a3;
- (id)_inferredResultsForLocationRepresentativeAssets:(id)a3;
- (id)_locationRepresentativeAssetFromQuestion:(id)a3;
- (id)_locationRepresentativeAssetsGroundTruthByAssetIdentifiersFromQuestions:(id)a3;
- (id)_meaningInferenceResultsForMeaningLabel:(id)a3 assetIds:(id)a4;
- (id)_meaningInferenceResultsForMeaningLabel:(id)a3 momentUUIDs:(id)a4 isEventLabelingMetricEvent:(BOOL)a5;
- (id)_meaningLabelsOfMomentNode:(id)a3 forMeaningLabel:(id)a4 isEventLabelingMetricEvent:(BOOL)a5;
- (id)_namingInferenceResultsForContactIdentifierByPersonUUIDs:(id)a3;
- (id)_personActivityMeaningInferenceResultsForPersonActivityMeaningLabel:(id)a3 assetIds:(id)a4;
- (id)_publicEventInferenceResultsForPublicEventIdByAssetIds:(id)a3;
- (id)_reasonByAssetEntityIdentifierForHolidayQuestions:(id)a3;
- (id)_reasonResultByAssetEntityIdentifierForMusicQualityQuestions:(id)a3;
- (id)_reasonResultByAssetEntityIdentifierForStoryPromptSuggestionsQuestions:(id)a3;
- (id)_reasonResultByAssetEntityIdentifierForTitlingQuestions:(id)a3 questionType:(unsigned __int16)a4;
- (id)_reasonResultByAssetSyndicationIdentifierForQuestions:(id)a3;
- (id)_reasonResultsForPublicEventQuestions:(id)a3;
- (id)_reasonResultsForQuestions:(id)a3 inferenceResults:(id)a4 inferenceReasons:(id)a5;
- (id)_relationshipInferenceResultsForQuestionMetricType:(unsigned __int16)a3 personUUIDs:(id)a4 useGraphInference:(BOOL)a5;
- (id)_syndicatedAssetFromQuestion:(id)a3;
- (id)_syndicatedAssetsGroundTruthByAssetIdentifiersFromQuestions:(id)a3;
- (id)_syndicatedAssetsInferenceResultsForAssetSyndicationIdentifiers:(id)a3;
- (id)_tripTitlingReasonResultByAssetEntityIdentifierForQuestions:(id)a3;
- (id)_vipPersonIdentifiersWithCurationContext:(id)a3;
- (id)_vipPetIdentifiersWithCurationContext:(id)a3;
- (id)groundTruthByMomentUUIDFromExhaustiveMomentLabelingQuestions:(id)a3 meaningLabel:(id)a4 withMetricsCache:(id)a5;
- (id)memoryCategorySubCategoryByQuestionMetricType;
- (id)payload;
- (id)payloadForVerification;
- (id)preparePayloadForPrecisionRecallEval:(id)a3 withEvaluations:(id)a4;
- (unint64_t)_relationshipTagFromQuestionMetricType:(unsigned __int16)a3;
- (void)_deleteOutdatedPetQuestionsWithValidPetUUIDs:(id)a3;
- (void)_gatherDeferredSuggestionInferencesForQuestions:(id)a3 momentUUIDS:(id)a4 inferenceResults:(id)a5 reasonResultByAssetIdentifier:(id)a6 progressBlock:(id)a7;
- (void)_gatherMetricsForAgeCategoryQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForBusinessQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForCameraLibrarySwitchQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForExternalAssetRelevanceQuestions:(id)a3 questionMetricType:(unsigned __int16)a4 progressBlock:(id)a5;
- (void)_gatherMetricsForFrequentLocationQuestions:(id)a3 questionMetricType:(unsigned __int16)a4 progressBlock:(id)a5;
- (void)_gatherMetricsForHighlightTitlingQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForHolidayQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForLocationRepresentativeAssetQuestions:(id)a3 questionMetricType:(unsigned __int16)a4 progressBlock:(id)a5;
- (void)_gatherMetricsForMemoryMusicQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForMemoryQuestions:(id)a3 questionMetricType:(unsigned __int16)a4 progressBlock:(id)a5;
- (void)_gatherMetricsForNamingQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForPetKnowledgeQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForPetQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForPublicEventQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForRelationshipQuestions:(id)a3 questionMetricType:(unsigned __int16)a4 progressBlock:(id)a5 useGraphInference:(BOOL)a6;
- (void)_gatherMetricsForSharedLibraryAssetsQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForSharedLibraryStartQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForStoryPromptSuggestionsQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForSyndicatedAssetsQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForTripKeyQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForTripTitlingQuestions:(id)a3 progressBlock:(id)a4;
- (void)_gatherMetricsForWallpaperQuestions:(id)a3 questionMetricType:(unsigned __int16)a4 progressBlock:(id)a5;
- (void)_gatherNearLiveSuggestionInferencesForQuestions:(id)a3 inferenceResults:(id)a4 reasonResultByAssetIdentifier:(id)a5 progressBlock:(id)a6;
- (void)gatherMetricsWithProgressBlock:(id)a3;
@end

@implementation PGPhotosChallengeMetricEvent

- (id)preparePayloadForPrecisionRecallEval:(id)a3 withEvaluations:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [v5 evaluationByReason];
  v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v5 evaluationByReason];
        v13 = [v12 objectForKeyedSubscript:v11];

        v14 = [v23 payload];
        v15 = [v14 mutableCopy];

        [v15 setObject:v11 forKeyedSubscript:@"questionInfo"];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "falseNegatives")}];
        [v15 setObject:v16 forKeyedSubscript:@"falseNegativeCount"];

        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "falsePositives")}];
        [v15 setObject:v17 forKeyedSubscript:@"falsePositiveCount"];

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "trueNegatives")}];
        [v15 setObject:v18 forKeyedSubscript:@"trueNegativeCount"];

        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "truePositives")}];
        [v15 setObject:v19 forKeyedSubscript:@"truePositiveCount"];

        [v6 addObject:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)memoryCategorySubCategoryByQuestionMetricType
{
  v6[73] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_284484938;
  v5[1] = &unk_284484980;
  v6[0] = &unk_284486858;
  v6[1] = &unk_284486870;
  v5[2] = &unk_2844849C8;
  v5[3] = &unk_2844849E0;
  v6[2] = &unk_284486888;
  v6[3] = &unk_2844868A0;
  v5[4] = &unk_284484A10;
  v5[5] = &unk_284484A58;
  v6[4] = &unk_2844868B8;
  v6[5] = &unk_2844868D0;
  v5[6] = &unk_284484A88;
  v5[7] = &unk_284484AA0;
  v6[6] = &unk_2844868E8;
  v6[7] = &unk_284486900;
  v5[8] = &unk_284484AD0;
  v5[9] = &unk_284484B00;
  v6[8] = &unk_284486918;
  v6[9] = &unk_284486930;
  v5[10] = &unk_284484B30;
  v5[11] = &unk_284484B48;
  v6[10] = &unk_284486948;
  v6[11] = &unk_284486960;
  v5[12] = &unk_284484B78;
  v5[13] = &unk_284484BA8;
  v6[12] = &unk_284486978;
  v6[13] = &unk_284486990;
  v5[14] = &unk_284484BC0;
  v5[15] = &unk_284484BF0;
  v6[14] = &unk_2844869A8;
  v6[15] = &unk_2844869C0;
  v5[16] = &unk_284484C08;
  v5[17] = &unk_284484C38;
  v6[16] = &unk_2844869D8;
  v6[17] = &unk_2844869F0;
  v5[18] = &unk_284484C50;
  v5[19] = &unk_284484C80;
  v6[18] = &unk_284486A08;
  v6[19] = &unk_284486A20;
  v5[20] = &unk_284484CB0;
  v5[21] = &unk_284484CC8;
  v6[20] = &unk_284486A38;
  v6[21] = &unk_284486A50;
  v5[22] = &unk_284484CE0;
  v5[23] = &unk_284484D10;
  v6[22] = &unk_284486A68;
  v6[23] = &unk_284486A80;
  v5[24] = &unk_284484D40;
  v5[25] = &unk_284484D58;
  v6[24] = &unk_284486A98;
  v6[25] = &unk_284486AB0;
  v5[26] = &unk_284484D88;
  v5[27] = &unk_284484DB8;
  v6[26] = &unk_284486AC8;
  v6[27] = &unk_284486AE0;
  v5[28] = &unk_284484DD0;
  v5[29] = &unk_284484DE8;
  v6[28] = &unk_284486AF8;
  v6[29] = &unk_284486B10;
  v5[30] = &unk_284484E18;
  v5[31] = &unk_284484E48;
  v6[30] = &unk_284486B28;
  v6[31] = &unk_284486B40;
  v5[32] = &unk_284484E60;
  v5[33] = &unk_284484E78;
  v6[32] = &unk_284486B58;
  v6[33] = &unk_284486B70;
  v5[34] = &unk_284484E90;
  v5[35] = &unk_284484EA8;
  v6[34] = &unk_284486B88;
  v6[35] = &unk_284486BA0;
  v5[36] = &unk_284484ED8;
  v5[37] = &unk_284484EF0;
  v6[36] = &unk_284486BB8;
  v6[37] = &unk_284486BD0;
  v5[38] = &unk_284484F08;
  v5[39] = &unk_284484F38;
  v6[38] = &unk_284486BE8;
  v6[39] = &unk_284486C00;
  v5[40] = &unk_284484F68;
  v5[41] = &unk_284484F98;
  v6[40] = &unk_284486C18;
  v6[41] = &unk_284486C30;
  v5[42] = &unk_284484FC8;
  v5[43] = &unk_284485010;
  v6[42] = &unk_284486C48;
  v6[43] = &unk_284486C60;
  v5[44] = &unk_284485040;
  v5[45] = &unk_284485058;
  v6[44] = &unk_284486C78;
  v6[45] = &unk_284486C90;
  v5[46] = &unk_284485070;
  v5[47] = &unk_284485088;
  v6[46] = &unk_284486CA8;
  v6[47] = &unk_284486CC0;
  v5[48] = &unk_2844850A0;
  v5[49] = &unk_2844850B8;
  v6[48] = &unk_284486CD8;
  v6[49] = &unk_284486CF0;
  v5[50] = &unk_2844850D0;
  v5[51] = &unk_2844850E8;
  v6[50] = &unk_284486D08;
  v6[51] = &unk_284486D20;
  v5[52] = &unk_284485100;
  v5[53] = &unk_284485118;
  v6[52] = &unk_284486D38;
  v6[53] = &unk_284486D50;
  v5[54] = &unk_284485130;
  v5[55] = &unk_284485148;
  v6[54] = &unk_284486D68;
  v6[55] = &unk_284486D80;
  v5[56] = &unk_284485160;
  v5[57] = &unk_284485178;
  v6[56] = &unk_284486D98;
  v6[57] = &unk_284486DB0;
  v5[58] = &unk_284485190;
  v5[59] = &unk_2844851A8;
  v6[58] = &unk_284486DC8;
  v6[59] = &unk_284486DE0;
  v5[60] = &unk_2844851C0;
  v5[61] = &unk_2844851D8;
  v6[60] = &unk_284486DF8;
  v6[61] = &unk_284486E10;
  v5[62] = &unk_2844851F0;
  v5[63] = &unk_284485208;
  v6[62] = &unk_284486E28;
  v6[63] = &unk_284486E40;
  v5[64] = &unk_284485220;
  v6[64] = &unk_284486E58;
  v5[65] = &unk_284485238;
  v6[65] = &unk_284486E70;
  v5[66] = &unk_284485250;
  v6[66] = &unk_284486E88;
  v5[67] = &unk_284485280;
  v6[67] = &unk_284486EA0;
  v5[68] = &unk_284485298;
  v6[68] = &unk_284486EB8;
  v5[69] = &unk_2844852B0;
  v6[69] = &unk_284486ED0;
  v5[70] = &unk_2844852C8;
  v6[70] = &unk_284486EE8;
  v5[71] = &unk_2844852E0;
  v6[71] = &unk_284486F00;
  v5[72] = &unk_2844852F8;
  v6[72] = &unk_284486F18;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:73];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_reasonResultByAssetEntityIdentifierForStoryPromptSuggestionsQuestions:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v3;
  v40 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v40)
  {
    v38 = *v43;
    v37 = *MEMORY[0x277D3C9C0];
    v36 = *MEMORY[0x277D3C9B8];
    v4 = *MEMORY[0x277D3C9C8];
    v34 = *MEMORY[0x277D3C9D0];
    v33 = *MEMORY[0x277D3C9D8];
    v32 = *MEMORY[0x277D3C8B8];
    v35 = *MEMORY[0x277D3C9C8];
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v43 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v42 + 1) + 8 * i);
        v7 = [v6 additionalInfo];
        v8 = [v7 objectForKeyedSubscript:v37];
        v9 = [v7 objectForKeyedSubscript:v36];
        v41 = [v9 integerValue];

        v10 = [v7 objectForKeyedSubscript:v4];
        if (v10)
        {
          v11 = [v7 objectForKeyedSubscript:v4];
          v12 = [v11 integerValue];

          v13 = v12;
        }

        else
        {
          v13 = 0xFFFFFFFFLL;
        }

        v14 = [v7 objectForKeyedSubscript:v34];
        v15 = v14;
        v16 = @"no prompt text";
        if (v14)
        {
          v16 = v14;
        }

        v17 = v16;

        v18 = [v7 objectForKeyedSubscript:v33];
        v19 = v18;
        v20 = @"unknown";
        if (v18)
        {
          v20 = v18;
        }

        v21 = v20;

        v22 = [v6 additionalInfo];
        v23 = [v22 objectForKeyedSubscript:v32];
        v24 = v23;
        v25 = @"<none>";
        if (v23)
        {
          v25 = v23;
        }

        v26 = v25;

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"[source:%@]-[isValidated:%@]-[DislikeReason:%@]-[AssetCount:%d]-[MCAvailable:%d]-[PromptText:%@]", v21, v8, v26, v41, v13, v17];

        v28 = [v6 entityIdentifier];
        [v39 setObject:v27 forKeyedSubscript:v28];

        v4 = v35;
      }

      v40 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v40);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)_groundTruthForStoryPromptSuggestionsQuestions:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = MEMORY[0x277CBEC28];
    v10 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 state] == 2)
        {
          v13 = v10;
        }

        else
        {
          v13 = v9;
        }

        v14 = v13;
        v15 = [v12 entityIdentifier];
        [v4 setObject:v14 forKeyedSubscript:v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_gatherMetricsForStoryPromptSuggestionsQuestions:(id)a3 progressBlock:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  v8 = 0.0;
  if (!v7 || (Current = CFAbsoluteTimeGetCurrent(), Current < 0.01))
  {
    v10 = 0;
    goto LABEL_4;
  }

  v24 = 0;
  v7[2](v7, &v24, 0.0);
  v10 = v24;
  if (v24 != 1)
  {
    v8 = Current;
LABEL_4:
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __95__PGPhotosChallengeMetricEvent__gatherMetricsForStoryPromptSuggestionsQuestions_progressBlock___block_invoke;
    v22 = &unk_27888A7E0;
    v12 = v11;
    v23 = v12;
    [v6 enumerateObjectsUsingBlock:&v19];
    v13 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForStoryPromptSuggestionsQuestions:v12, v19, v20, v21, v22];
    v14 = [v13 allKeys];
    v15 = [(PGPhotosChallengeMetricEvent *)self _inferredResultsForEntityIdentifiers:v14 withDefaultBoolValue:1];

    v16 = [(PGPhotosChallengeMetricEvent *)self _reasonResultByAssetEntityIdentifierForStoryPromptSuggestionsQuestions:v12];
    v17 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"storyPromptSuggestions" category:@"storyPromptSuggestions"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v17 evaluateWithGroundTruthResults:v13 inferenceResults:v15 reasonResultByAssetIdentifier:v16];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v17];
    if (v7)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
      {
        v24 = 0;
        v7[2](v7, &v24, 1.0);
        if (v10 | v24)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v26 = 3139;
            v27 = 2080;
            v28 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v26 = 3123;
    v27 = 2080;
    v28 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

void __95__PGPhotosChallengeMetricEvent__gatherMetricsForStoryPromptSuggestionsQuestions_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 30)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)_gatherMetricsForExternalAssetRelevanceQuestions:(id)a3 questionMetricType:(unsigned __int16)a4 progressBlock:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a5);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v29 = v7;
    v32 = [MEMORY[0x277CBEB38] dictionary];
    [MEMORY[0x277CBEB38] dictionary];
    v31 = v30 = v6;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      v14 = *MEMORY[0x277D3C8E8];
      v15 = MEMORY[0x277CBEC28];
      v16 = MEMORY[0x277CBEC38];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v33 + 1) + 8 * i);
          if ([v18 type] == 29)
          {
            v19 = [v18 entityIdentifier];
            if ([v18 state] == 2)
            {
              v20 = v16;
            }

            else
            {
              v20 = v15;
            }

            [v32 setObject:v20 forKeyedSubscript:v19];
            v21 = [v18 additionalInfo];
            v22 = [v21 objectForKeyedSubscript:v14];

            [v31 setObject:v22 forKeyedSubscript:v19];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v12);
    }

    v7 = v29;
    if (v29)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v24 = &unk_22F784000;
      if (Current - v8 >= 0.01)
      {
        v37 = 0;
        v29[2](v29, &v37, 0.9);
        if (v37)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v40 = 3112;
            v41 = 2080;
            v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v6 = v30;
LABEL_32:

          goto LABEL_33;
        }

        v8 = Current;
      }
    }

    else
    {
      v24 = &unk_22F784000;
    }

    v25 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"externalAssetRelevance" category:@"externalAssetRelevance"];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v25];

    v26 = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [v26 evaluateWithGroundTruthResults:v32 andInferenceResults:v31];

    v6 = v30;
    if (v29)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 >= v24[76])
      {
        v37 = 0;
        v29[2](v29, &v37, 1.0);
        if (v37)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v40 = 3116;
            v41 = 2080;
            v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_32;
  }

  v37 = 0;
  v7[2](v7, &v37, 0.0);
  if (v37 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v40 = 3096;
    v41 = 2080;
    v42 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_33:

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_locationRepresentativeAssetFromQuestion:(id)a3
{
  v4 = a3;
  v5 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
  v6 = [v5 assetByAssetIdentifier];
  v7 = [v4 entityIdentifier];

  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

- (id)_locationRepresentativeAssetsGroundTruthByAssetIdentifiersFromQuestions:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(PGPhotosChallengeMetricEvent *)self _locationRepresentativeAssetFromQuestion:v11, v16];
        if (v12)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [(PGPhotosChallengeMetricEvent *)self _groundTruthByAssetIdentifiersFromQuestions:v5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_inferredResultsForLocationRepresentativeAssets:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 iconicScoreProperties];
        [v11 iconicScore];
        v13 = v12;

        v14 = [v10 curationModel];
        v15 = [v14 iconicScoreModel];

        [v15 minimumMeaningfulIconicScore];
        v17 = [MEMORY[0x277CCABB0] numberWithBool:v13 >= v16];
        v18 = [v10 uuid];
        [v4 setObject:v17 forKeyedSubscript:v18];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_inferredReasonForLocationRepresentativeAssets:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v3;
  v41 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v41)
  {
    v5 = 0;
    v40 = *v43;
    v39 = *MEMORY[0x277D3C8A8];
    v37 = v4;
    while (1)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 iconicScoreProperties];
        [v9 iconicScore];
        v11 = v10;

        v12 = [v7 curationModel];
        v13 = [v12 iconicScoreModel];

        [v13 highIconicScore];
        v15 = v14;
        [v13 mediumIconicScore];
        v17 = v16;
        [v13 minimumMeaningfulIconicScore];
        v19 = v18;
        v20 = MEMORY[0x277CD97E8];
        v21 = [v7 location];
        [v21 coordinate];
        v23 = v22;
        v24 = [v7 location];
        [v24 coordinate];
        v25 = [v20 poiGeoHashWithGeoHashSize:v39 latitude:v23 longitude:?];

        if (v11 > v15)
        {
          v26 = MEMORY[0x277CCACA8];
          v27 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
          [v26 stringWithFormat:@"iconicScore>%@", v27];
          v28 = LABEL_8:;
          goto LABEL_15;
        }

        if (v11 <= v17)
        {
          if (v11 <= v19)
          {
            v29 = MEMORY[0x277CCACA8];
            v27 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
            [v29 stringWithFormat:@"iconicScore<%@", v27];
            goto LABEL_8;
          }

          v30 = MEMORY[0x277CCACA8];
          v27 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
          v31 = MEMORY[0x277CCABB0];
          v32 = v17;
        }

        else
        {
          v30 = MEMORY[0x277CCACA8];
          v27 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
          v31 = MEMORY[0x277CCABB0];
          v32 = v15;
        }

        v33 = [v31 numberWithDouble:v32];
        v28 = [v30 stringWithFormat:@"iconicScore:%@-%@", v27, v33];

        v5 = v33;
        v4 = v37;
LABEL_15:

        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v25, v28];

        v34 = [v7 uuid];
        [v4 setObject:v5 forKeyedSubscript:v34];

        objc_autoreleasePoolPop(v8);
      }

      v41 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (!v41)
      {

        break;
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_reasonResultsForQuestions:(id)a3 inferenceResults:(id)a4 inferenceReasons:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v35 = a4;
  v33 = a5;
  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v32 = *v37;
    v31 = *MEMORY[0x277D3C8B8];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = [v11 entityIdentifier];
        if ([v11 state] == 2)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        v14 = v13;
        v15 = [v11 additionalInfo];
        v16 = [v15 objectForKeyedSubscript:v31];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = @"None";
        }

        v19 = v18;

        v20 = [v35 objectForKeyedSubscript:v12];
        if ([v20 isEqual:&unk_284484920])
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        v22 = v21;

        v23 = [v33 objectForKeyedSubscript:v12];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = @"None";
        }

        v26 = v25;

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@->%@]-[%@->%@]", v14, v19, v22, v26];

        [v34 setObject:v27 forKeyedSubscript:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v9);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)_gatherMetricsForLocationRepresentativeAssetQuestions:(id)a3 questionMetricType:(unsigned __int16)a4 progressBlock:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = _Block_copy(a5);
  if (!v8)
  {
    v12 = [(PGPhotosChallengeMetricEvent *)self _locationRepresentativeAssetsGroundTruthByAssetIdentifiersFromQuestions:v7];
    v10 = 0.0;
    goto LABEL_13;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v10 = 0.0;
  if (Current < 0.01)
  {
LABEL_8:
    v12 = [(PGPhotosChallengeMetricEvent *)self _locationRepresentativeAssetsGroundTruthByAssetIdentifiersFromQuestions:v7];
    v13 = CFAbsoluteTimeGetCurrent();
    if (v13 - v10 >= 0.01)
    {
      v24 = 0;
      v8[2](v8, &v24, 0.3);
      if (v24)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v26 = 3007;
          v27 = 2080;
          v28 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_33;
      }

      v10 = v13;
    }

LABEL_13:
    v14 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
    v15 = [v14 assetByAssetIdentifier];
    v16 = [v15 allValues];

    [(CLSCurationSession *)self->_curationSession prepareAssets:v16];
    v17 = [(PGPhotosChallengeMetricEvent *)self _inferredResultsForLocationRepresentativeAssets:v16];
    if (v8)
    {
      v18 = CFAbsoluteTimeGetCurrent();
      if (v18 - v10 >= 0.01)
      {
        v24 = 0;
        v8[2](v8, &v24, 0.6);
        if (v24)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v26 = 3012;
            v27 = 2080;
            v28 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_32;
        }

        v10 = v18;
      }
    }

    v19 = [(PGPhotosChallengeMetricEvent *)self _inferredReasonForLocationRepresentativeAssets:v16];
    v20 = [(PGPhotosChallengeMetricEvent *)self _reasonResultsForQuestions:v7 inferenceResults:v17 inferenceReasons:v19];
    if (v8)
    {
      v21 = CFAbsoluteTimeGetCurrent();
      if (v21 - v10 >= 0.01)
      {
        v24 = 0;
        v8[2](v8, &v24, 0.9);
        if (v24)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v26 = 3016;
            v27 = 2080;
            v28 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_31:

LABEL_32:
LABEL_33:

          goto LABEL_34;
        }

        v10 = v21;
      }
    }

    v22 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"locationRepresentativeAssets" category:@"locationRepresentativeAssets"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v22 evaluateWithGroundTruthResults:v12 inferenceResults:v17 reasonResultByAssetIdentifier:v20];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v22];
    if (v8)
    {
      if (CFAbsoluteTimeGetCurrent() - v10 >= 0.01)
      {
        v24 = 0;
        v8[2](v8, &v24, 1.0);
        if (v24)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v26 = 3021;
            v27 = 2080;
            v28 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_31;
  }

  v11 = Current;
  v24 = 0;
  v8[2](v8, &v24, 0.0);
  if (v24 != 1)
  {
    v10 = v11;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v26 = 3005;
    v27 = 2080;
    v28 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_34:

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_vipPetIdentifiersWithCurationContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [PGGraphPetIdentityProcessor fetchInterestingEligiblePetsForWallpaperWithWorkingContext:self->_workingContext curationContext:a3];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) localIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_vipPersonIdentifiersWithCurationContext:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__70470;
  v19 = __Block_byref_object_dispose__70471;
  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [MEMORY[0x277D3C810] primaryOrientation];
  workingContext = self->_workingContext;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__PGPhotosChallengeMetricEvent__vipPersonIdentifiersWithCurationContext___block_invoke;
  v10[3] = &unk_27888A7B8;
  v14 = v5;
  v7 = v4;
  v11 = v7;
  v12 = self;
  v13 = &v15;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v10];
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __73__PGPhotosChallengeMetricEvent__vipPersonIdentifiersWithCurationContext___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[PGPeopleWallpaperSuggesterFilteringContext alloc] initForPeopleInOrientation:a1[7]];
  v5 = [PGPeopleWallpaperSuggesterPersonImportanceAnalyzer alloc];
  v6 = [v3 graph];

  v7 = a1[4];
  v8 = [*(a1[5] + 8) loggingConnection];
  v9 = [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)v5 initWithGraph:v6 curationContext:v7 loggingConnection:v8];

  [v4 normalizedDeviationForVeryImportantPersons];
  [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)v9 setNormalizedDeviationForVeryImportantPersons:?];
  [v4 normalizedDeviationForImportantPersons];
  [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)v9 setNormalizedDeviationForImportantPersons:?];
  -[PGPeopleWallpaperSuggesterPersonImportanceAnalyzer setFavoritePersonsAreVIPs:](v9, "setFavoritePersonsAreVIPs:", [v4 favoritePersonsAreVIPs]);
  v10 = [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)v9 personInformationsWithProgress:&__block_literal_global_70474];
  v11 = [v4 minimumPersonImportance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__PGPhotosChallengeMetricEvent__vipPersonIdentifiersWithCurationContext___block_invoke_3;
  v12[3] = &unk_27888A790;
  v12[4] = a1[6];
  v12[5] = v11;
  [v10 enumerateObjectsUsingBlock:v12];
}

void __73__PGPhotosChallengeMetricEvent__vipPersonIdentifiersWithCurationContext___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 importance] >= *(a1 + 40) && objc_msgSend(v7, "importance") != 3)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = [v7 personLocalIdentifier];
    [v3 addObject:v4];

    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = [v7 dupedPersonLocalIdentifiers];
    [v5 unionSet:v6];
  }
}

- (void)_gatherMetricsForWallpaperQuestions:(id)a3 questionMetricType:(unsigned __int16)a4 progressBlock:(id)a5
{
  v99 = a4;
  v111 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = _Block_copy(v8);
  if (!v9)
  {
    v11 = 0.0;
    if (![v7 count])
    {
      goto LABEL_77;
    }

    goto LABEL_10;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v11 = 0.0;
  if (Current >= 0.01)
  {
    v12 = Current;
    v104 = 0;
    v9[2](v9, &v104, 0.0);
    if (v104 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v108 = 2815;
        v109 = 2080;
        v110 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
        v13 = MEMORY[0x277D86220];
LABEL_29:
        _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_77;
      }

      goto LABEL_77;
    }

    v11 = v12;
  }

  if ([v7 count])
  {
LABEL_10:
    v85 = v9;
    v83 = v8;
    v98 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v84 = v7;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v100 objects:v106 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v101;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v101 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v100 + 1) + 8 * i);
          v20 = [v19 additionalInfo];
          v21 = [v20 objectForKeyedSubscript:@"suggestionSubtype"];
          v22 = [v21 integerValue];

          if ([objc_opt_class() wallpaperSuggestionSubtypeForQuestionMetricType:v99] == v22)
          {
            [v98 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v100 objects:v106 count:16];
      }

      while (v16);
    }

    v23 = v98;
    v24 = [(PGPhotosChallengeMetricEvent *)self _groundTruthByAssetIdentifiersFromQuestions:v98];
    v9 = v85;
    if (v85)
    {
      v25 = CFAbsoluteTimeGetCurrent();
      if (v25 - v11 >= 0.01)
      {
        v104 = 0;
        v85[2](v85, &v104, 0.5);
        if (v104)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v108 = 2832;
            v109 = 2080;
            v110 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v8 = v83;
          goto LABEL_76;
        }

        v11 = v25;
      }
    }

    v81 = v24;
    v92 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v26 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
    v27 = [(PGPhotosChallengeMetricEvent *)self curationContext];
    v87 = [(PGPhotosChallengeMetricEvent *)self _vipPersonIdentifiersWithCurationContext:v27];

    v28 = [(PGPhotosChallengeMetricEvent *)self curationContext];
    v86 = [(PGPhotosChallengeMetricEvent *)self _vipPetIdentifiersWithCurationContext:v28];

    v82 = v26;
    v29 = [v26 librarySpecificFetchOptions];
    v30 = +[PGCurationManager assetPropertySetsForCuration];
    [v29 setFetchPropertySets:v30];

    if ([v98 count])
    {
      v31 = 0;
      v90 = *MEMORY[0x277D3C8B8];
      v89 = v29;
      while (1)
      {
        v32 = objc_autoreleasePoolPush();
        v33 = [v23 objectAtIndexedSubscript:v31];
        v34 = [v33 additionalInfo];
        v35 = [v34 objectForKeyedSubscript:@"suggestionSubtype"];
        v36 = [v35 integerValue];

        v37 = [v33 entityIdentifier];
        v38 = MEMORY[0x277CD97A8];
        v105 = v37;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
        v40 = [v38 fetchAssetsWithUUIDs:v39 options:v29];

        if ([v40 count])
        {
          break;
        }

LABEL_61:

        objc_autoreleasePoolPop(v32);
        if (++v31 >= [v23 count])
        {
          goto LABEL_62;
        }
      }

      v41 = MEMORY[0x277CD97A8];
      v42 = [(PGPhotosChallengeMetricEvent *)self curationContext];
      v96 = v40;
      v43 = [v41 clsAllAssetsFromFetchResult:v40 prefetchOptions:31 curationContext:v42];
      v97 = [v43 firstObject];

      v44 = [MEMORY[0x277D3C810] primaryOrientation];
      v45 = v36;
      if (v36 <= 0x28Du)
      {
        if (v36 == 652)
        {
          v56 = [(PGPhotosChallengeMetricEvent *)self _fetchPersonFromAsset:v97 detectionType:1];
          v23 = v98;
          v40 = v96;
          if (v56)
          {
            v57 = v56;
            v94 = v37;
            v95 = v32;
            v58 = [(PGPhotosChallengeMetricEvent *)self curationContext];
            v47 = [PGPeopleWallpaperSuggester passesFilteringWithAsset:v97 curationContext:v58 orientation:v44 reason:0];

            v48 = v57;
            v59 = [v57 localIdentifier];
            v50 = [v87 containsObject:v59];

            goto LABEL_47;
          }

LABEL_60:

          goto LABEL_61;
        }

        if (v36 == 653)
        {
          [(PGPhotosChallengeMetricEvent *)self _fetchPersonFromAsset:v97 detectionType:2];
          v23 = v98;
          v88 = v40 = v96;
          if (v88)
          {
            v94 = v37;
            v95 = v32;
            v46 = [(PGPhotosChallengeMetricEvent *)self curationContext];
            v47 = [PGPetWallpaperSuggester passesFilteringWithAsset:v97 curationContext:v46 orientation:v44 reason:0];

            v48 = v88;
            v49 = [v88 localIdentifier];
            v50 = [v86 containsObject:v49];

LABEL_47:
            v93 = v50 & v47;
            v60 = MEMORY[0x277CCACA8];
            v61 = [objc_opt_class() _passedFilteringStringForResult:v47];
            v62 = [objc_opt_class() _isVIPStringForResult:v50];
            v55 = [v60 stringWithFormat:@"%@|%@", v61, v62];

LABEL_50:
            if ([v33 state] == 2)
            {
              v66 = @"YES";
            }

            else
            {
              v66 = @"NO";
            }

            v67 = v66;
            v68 = [v33 additionalInfo];
            v69 = [v68 objectForKeyedSubscript:v90];
            v70 = v69;
            v71 = @"None";
            if (v69)
            {
              v71 = v69;
            }

            v72 = v71;

            if (v93)
            {
              v73 = @"YES";
            }

            else
            {
              v73 = @"NO";
            }

            v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@->%@]-[%@->%@]", v67, v72, v73, v55];

            v75 = [MEMORY[0x277CCABB0] numberWithBool:v93];
            v37 = v94;
            [v92 setObject:v75 forKeyedSubscript:v94];

            [v91 setObject:v74 forKeyedSubscript:v94];
            v23 = v98;
            v29 = v89;
            v32 = v95;
LABEL_59:
            v40 = v96;

            goto LABEL_60;
          }

          goto LABEL_60;
        }

LABEL_42:
        v54 = +[PGLogging sharedLogging];
        v55 = [v54 loggingConnection];

        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v76 = [v33 uuid];
          *buf = 67109378;
          v108 = v45;
          v109 = 2112;
          v110 = v76;
          _os_log_error_impl(&dword_22F0FC000, v55, OS_LOG_TYPE_ERROR, "Unsupported Wallpaper Subtype %d for question %@", buf, 0x12u);
        }

        v23 = v98;
        goto LABEL_59;
      }

      if (v36 == 654)
      {
        v94 = v37;
        v95 = v32;
        v63 = [(PGPhotosChallengeMetricEvent *)self curationContext];
        v52 = [PGLandscapeWallpaperSuggester passesFilteringWithAsset:v97 curationContext:v63 orientation:v44 reason:0];

        v53 = [objc_opt_class() _isHighPrecisionLandscapeAsset:v97];
      }

      else
      {
        if (v36 != 655)
        {
          goto LABEL_42;
        }

        v94 = v37;
        v95 = v32;
        v51 = [(PGPhotosChallengeMetricEvent *)self curationContext];
        v52 = [PGCityscapeWallpaperSuggester passesFilteringWithAsset:v97 curationContext:v51 orientation:v44 reason:0];

        v53 = [objc_opt_class() _isHighPrecisionCityscapeAsset:v97];
      }

      v64 = v53;
      v93 = v52 & v53;
      v65 = MEMORY[0x277CCACA8];
      v48 = [objc_opt_class() _passedFilteringStringForResult:v52];
      v61 = [objc_opt_class() _passedHighPrecisionStringForResult:v64];
      v55 = [v65 stringWithFormat:@"%@|%@", v48, v61];
      goto LABEL_50;
    }

LABEL_62:
    v9 = v85;
    if (v85)
    {
      v77 = CFAbsoluteTimeGetCurrent();
      v24 = v81;
      if (v77 - v11 >= 0.01)
      {
        v104 = 0;
        v85[2](v85, &v104, 0.9);
        if (v104)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v108 = 2906;
            v109 = 2080;
            v110 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_75:
          v8 = v83;
          v7 = v84;

LABEL_76:
          goto LABEL_77;
        }

        v11 = v77;
      }
    }

    else
    {
      v24 = v81;
    }

    v78 = [objc_opt_class() stringFromQuestionMetricType:v99];
    v79 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"wallpaper" category:v78];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v79 evaluateWithGroundTruthResults:v24 inferenceResults:v92 reasonResultByAssetIdentifier:v91];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v79];
    if (v85)
    {
      if (CFAbsoluteTimeGetCurrent() - v11 >= 0.01)
      {
        v104 = 0;
        v85[2](v85, &v104, 1.0);
        if (v104)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v108 = 2914;
            v109 = 2080;
            v110 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_75;
  }

  if (CFAbsoluteTimeGetCurrent() - v11 >= 0.01)
  {
    v104 = 0;
    v9[2](v9, &v104, 1.0);
    if (v104)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v108 = 2818;
        v109 = 2080;
        v110 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
        v13 = MEMORY[0x277D86220];
        goto LABEL_29;
      }
    }
  }

LABEL_77:

  v80 = *MEMORY[0x277D85DE8];
}

- (void)_gatherMetricsForCameraLibrarySwitchQuestions:(id)a3 progressBlock:(id)a4
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthByAssetIdentifiersFromQuestions:v6];
    if (![v10 count])
    {
      v13 = +[PGLogging sharedLogging];
      v14 = [v13 loggingConnection];

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v60 = [v10 count];
        *buf = 67109120;
        v86 = v60;
        _os_log_error_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_ERROR, "Camera library switch: ground truth, %d is empty", buf, 8u);
      }

      v15 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"cameraLibrarySwitch" category:@"sharedLibraryAssets"];
      [(PGAssetsWithReasonPrecisionRecallEvaluation *)v15 evaluateWithGroundTruthResults:v10 inferenceResults:MEMORY[0x277CBEC10] reasonResultByAssetIdentifier:MEMORY[0x277CBEC10]];
      [(PGPhotosChallengeMetricEvent *)self setEvaluation:v15];
      if (v7)
      {
        if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
        {
          v82 = 0;
          v7[2](v7, &v82, 1.0);
          if (v82)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v86 = 2729;
              v87 = 2080;
              v88 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      goto LABEL_79;
    }

    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v82 = 0;
        v7[2](v7, &v82, 0.2);
        if (v82)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v86 = 2733;
            v87 = 2080;
            v88 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v12 = MEMORY[0x277D86220];
LABEL_45:
            _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_79;
          }

          goto LABEL_79;
        }

        v8 = Current;
      }
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v78 objects:v84 count:16];
    v61 = self;
    v62 = v7;
    v63 = v10;
    v64 = v6;
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v79;
      v21 = @"libraryScopeUUID";
      v72 = v16;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v79 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v78 + 1) + 8 * i);
          v24 = [v23 additionalInfo];
          v25 = [v24 objectForKeyedSubscript:v21];

          if (!v25)
          {
            v26 = [v23 additionalInfo];
            v27 = [v26 objectForKeyedSubscript:@"previousCameraLibrarySwitchState"];
            if ([v27 isEqualToString:@"auto on"])
            {

LABEL_39:
              v70 = 0;
              v16 = v72;
              v34 = v72;
              v10 = v63;
              v6 = v64;
              v7 = v62;
              goto LABEL_40;
            }

            v28 = v20;
            v29 = v21;
            v30 = [v23 additionalInfo];
            v31 = [v30 objectForKeyedSubscript:@"currentCameraLibrarySwitchState"];
            v32 = [v31 isEqualToString:@"auto on"];

            if (v32)
            {
              goto LABEL_39;
            }

            v19 = 1;
            v16 = v72;
            v21 = v29;
            v20 = v28;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v78 objects:v84 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      if ((v19 & 1) == 0)
      {
        v70 = 1;
        v10 = v63;
        v6 = v64;
        v7 = v62;
        if (!v62)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }

      v33 = +[PGLogging sharedLogging];
      v34 = [v33 loggingConnection];

      v7 = v62;
      v10 = v63;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_ERROR, "Excluding questions without library scope from Camera library switch challenge evaluation", buf, 2u);
      }

      v70 = 1;
      v6 = v64;
    }

    else
    {
      v70 = 1;
      v34 = v16;
    }

LABEL_40:

    if (!v7)
    {
      goto LABEL_47;
    }

LABEL_41:
    v35 = CFAbsoluteTimeGetCurrent();
    if (v35 - v8 >= 0.01)
    {
      v82 = 0;
      v7[2](v7, &v82, 0.3);
      if (v82)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v86 = 2759;
          v87 = 2080;
          v88 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v12 = MEMORY[0x277D86220];
          goto LABEL_45;
        }

LABEL_79:

        goto LABEL_80;
      }

      v8 = v35;
    }

LABEL_47:
    v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = v16;
    v71 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
    if (v71)
    {
      v69 = *v75;
      v66 = *MEMORY[0x277D3C8B8];
      do
      {
        for (j = 0; j != v71; ++j)
        {
          if (*v75 != v69)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v74 + 1) + 8 * j);
          v38 = [v37 additionalInfo];
          v39 = v38;
          if (!v70 || ([v38 objectForKeyedSubscript:@"libraryScopeUUID"], v40 = objc_claimAutoreleasedReturnValue(), v40, v40))
          {
            v41 = [v37 state];
            v42 = @"NO";
            if (v41 == 2)
            {
              v42 = @"YES";
            }

            v43 = v42;
            v44 = [v39 objectForKeyedSubscript:v66];
            v45 = v44;
            v46 = @"None";
            if (v44)
            {
              v46 = v44;
            }

            v47 = v46;

            v48 = [v39 objectForKeyedSubscript:@"previousCameraLibrarySwitchState"];
            v49 = [v39 objectForKeyedSubscript:@"currentCameraLibrarySwitchState"];
            if (([v49 isEqualToString:@"auto on"] & 1) != 0 || objc_msgSend(v49, "isEqualToString:", @"user on"))
            {
              v50 = 1;
              v51 = @"YES";
            }

            else
            {
              v50 = 0;
              v51 = @"NO";
            }

            [MEMORY[0x277CCACA8] stringWithFormat:@"%@ to %@", v48, v49];
            v52 = v73 = v48;
            v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@->%@]-[%@->%@]", v43, v47, v51, v52];

            v54 = [v37 entityIdentifier];
            [v67 setObject:v53 forKeyedSubscript:v54];
            v55 = [MEMORY[0x277CCABB0] numberWithBool:v50];
            [v68 setObject:v55 forKeyedSubscript:v54];
          }
        }

        v71 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
      }

      while (v71);
    }

    v7 = v62;
    if (v62)
    {
      v56 = CFAbsoluteTimeGetCurrent();
      v10 = v63;
      v6 = v64;
      v57 = v61;
      if (v56 - v8 >= 0.01)
      {
        v82 = 0;
        v62[2](v62, &v82, 0.9);
        if (v82)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v86 = 2786;
            v87 = 2080;
            v88 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_78:

          goto LABEL_79;
        }

        v8 = v56;
      }
    }

    else
    {
      v10 = v63;
      v6 = v64;
      v57 = v61;
    }

    v58 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"cameraLibrarySwitch" category:@"sharedLibraryAssets"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v58 evaluateWithGroundTruthResults:v10 inferenceResults:v68 reasonResultByAssetIdentifier:v67];
    [(PGPhotosChallengeMetricEvent *)v57 setEvaluation:v58];
    if (v62)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
      {
        v82 = 0;
        v62[2](v62, &v82, 1.0);
        if (v82)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v86 = 2791;
            v87 = 2080;
            v88 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_78;
  }

  v82 = 0;
  v7[2](v7, &v82, 0.0);
  if (v82 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v86 = 2719;
    v87 = 2080;
    v88 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_80:

  v59 = *MEMORY[0x277D85DE8];
}

- (void)_gatherMetricsForSharedLibraryStartQuestions:(id)a3 progressBlock:(id)a4
{
  *&v36[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v9 = 0.0;
    if (Current >= 0.01)
    {
      v10 = Current;
      v34 = 0;
      v7[2](v7, &v34, 0.0);
      if (v34 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v36[0] = 2671;
          LOWORD(v36[1]) = 2080;
          *(&v36[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v11 = MEMORY[0x277D86220];
LABEL_30:
          _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_56;
        }

        goto LABEL_56;
      }

      v9 = v10;
    }

    if (![v6 count])
    {
      if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
      {
        v34 = 0;
        v7[2](v7, &v34, 1.0);
        if (v34)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v36[0] = 2674;
            LOWORD(v36[1]) = 2080;
            *(&v36[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v11 = MEMORY[0x277D86220];
            goto LABEL_30;
          }
        }
      }

      goto LABEL_56;
    }
  }

  else
  {
    v9 = 0.0;
    if (![v6 count])
    {
      goto LABEL_56;
    }
  }

  if ([v6 count] < 2)
  {
    metricsCache = self->_metricsCache;
    v33 = 0;
    v15 = [(PGPhotosChallengeMetricEventFetchHelper *)metricsCache suggestsToStartSharedLibraryWithError:&v33];
    v16 = v33;
    if (v16)
    {
      v17 = +[PGLogging sharedLogging];
      v18 = [v17 loggingConnection];

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v36 = v16;
        _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Error getting startSharedLibrarySuggestion: %@", buf, 0xCu);
      }

      if (v7)
      {
        if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
        {
          v34 = 0;
          v7[2](v7, &v34, 1.0);
          if (v34)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v36[0] = 2688;
              LOWORD(v36[1]) = 2080;
              *(&v36[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }
    }

    else
    {
      v19 = [v6 firstObject];
      v20 = [v19 state];
      v21 = 1;
      v22 = v20 == 2;
      if (v20 == 3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
      }

      v23 = 1;
      v24 = v20 == 2;
      if (v20 == 3)
      {
        v24 = 0;
      }

      else
      {
        v23 = 0;
      }

      v25 = !v15;
      v26 = v15 && v24;
      if (v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

      if (v25)
      {
        v28 = v21;
      }

      else
      {
        v28 = 0;
      }

      v29 = v25 && v22;
      v30 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"sharedLibraryStart" category:@"sharedLibraryStart" truePositives:v26 falsePositives:v27 falseNegatives:v29 trueNegatives:v28];
      [(PGPhotosChallengeMetricEvent *)self setEvaluation:v30];

      if (v7)
      {
        if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
        {
          v34 = 0;
          v7[2](v7, &v34, 1.0);
          if (v34)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v36[0] = 2713;
              LOWORD(v36[1]) = 2080;
              *(&v36[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }
    }
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    v13 = [v12 loggingConnection];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v32 = [v6 count];
      *buf = 67109120;
      v36[0] = v32;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "Expected 1 shared library start question, found %d", buf, 8u);
    }

    if (v7)
    {
      if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
      {
        v34 = 0;
        v7[2](v7, &v34, 1.0);
        if (v34)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v36[0] = 2680;
            LOWORD(v36[1]) = 2080;
            *(&v36[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v11 = MEMORY[0x277D86220];
            goto LABEL_30;
          }
        }
      }
    }
  }

LABEL_56:

  v31 = *MEMORY[0x277D85DE8];
}

- (id)_getInferredReasonFromMatchedConditions:(id)a3 withFallbackReason:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  v8 = v6;
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    v8 = v6;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([v12 criteria])
        {
          v13 = PLLibraryScopeConditionStringFromCriteria();
          [v12 type];
          v14 = PLLibraryScopeConditionStringFromType();
          v15 = [v13 stringByAppendingFormat:@" %@", v14];
          v16 = v15;
          if (v8 == v6)
          {
            v17 = v15;
          }

          else
          {
            v17 = [v8 stringByAppendingFormat:@" | %@", v15];
          }

          v18 = v17;

          v8 = v18;
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_gatherNearLiveSuggestionInferencesForQuestions:(id)a3 inferenceResults:(id)a4 reasonResultByAssetIdentifier:(id)a5 progressBlock:(id)a6
{
  v66 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v10 = a4;
  v39 = a5;
  v37 = a6;
  v11 = 0.0;
  v41 = _Block_copy(v37);
  if (!v41 || (v12 = CFAbsoluteTimeGetCurrent(), v12 < 0.01))
  {
LABEL_7:
    *buf = 0;
    *&v62 = buf;
    *(&v62 + 1) = 0x3032000000;
    v63 = __Block_byref_object_copy__70470;
    v64 = __Block_byref_object_dispose__70471;
    v65 = 0;
    v13 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
    v14 = [v13 managedObjectContext];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __141__PGPhotosChallengeMetricEvent__gatherNearLiveSuggestionInferencesForQuestions_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke;
    v54[3] = &unk_27888A700;
    v54[4] = self;
    v54[5] = buf;
    [v14 performBlockAndWait:v54];
    v38 = self;

    v15 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
    v42 = [v15 assetByAssetIdentifier];

    v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v17 = v40;
    v18 = [v17 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v18)
    {
      v19 = *v51;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v51 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v50 + 1) + 8 * i);
          v22 = [v21 entityIdentifier];
          v23 = [v10 objectForKeyedSubscript:v22];
          v24 = [v23 BOOLValue];

          if ((v24 & 1) == 0)
          {
            v25 = [v21 entityIdentifier];
            v26 = [v42 objectForKeyedSubscript:v25];
            v27 = [v26 objectID];

            [v43 addObject:v27];
            [v16 setObject:v21 forKeyedSubscript:v27];
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v18);
    }

    if (v41)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v11 >= 0.01)
      {
        v49 = 0;
        v41[2](v41, &v49, 0.4);
        if (v49)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_30:

            _Block_object_dispose(buf, 8);
            goto LABEL_31;
          }

          *v56 = 67109378;
          v57 = 2614;
          v58 = 2080;
          v59 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v29 = MEMORY[0x277D86220];
LABEL_29:
          _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v56, 0x12u);
          goto LABEL_30;
        }

        v11 = Current;
      }
    }

    if ([v43 count])
    {
      v30 = MEMORY[0x277CCA920];
      v31 = PLManagedAssetPredicateToFetchAssetsToEvaluateSuggestionsForLibraryScope();
      v55[0] = v31;
      v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K & %d) != 0", @"libraryScopeShareState", 2, v37];
      v55[1] = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
      v34 = [v30 orPredicateWithSubpredicates:v33];

      v35 = *(v62 + 40);
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __141__PGPhotosChallengeMetricEvent__gatherNearLiveSuggestionInferencesForQuestions_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke_610;
      v44[3] = &unk_27888A728;
      v45 = v16;
      v46 = v38;
      v47 = v10;
      v48 = v39;
      [v35 evaluateAssetObjectIDs:v43 simulate:1 predicateToFetchAssetsToEvaluate:v34 withResultEnumerationBlock:v44];
    }

    if (!v41)
    {
      goto LABEL_30;
    }

    if (CFAbsoluteTimeGetCurrent() - v11 < 0.01)
    {
      goto LABEL_30;
    }

    v49 = 0;
    v41[2](v41, &v49, 1.0);
    if (!v49 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    *v56 = 67109378;
    v57 = 2642;
    v58 = 2080;
    v59 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v29 = MEMORY[0x277D86220];
    goto LABEL_29;
  }

  v56[0] = 0;
  v41[2](v41, v56, 0.0);
  if (v56[0] != 1)
  {
    v11 = v12;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 2592;
    LOWORD(v62) = 2080;
    *(&v62 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_31:

  v36 = *MEMORY[0x277D85DE8];
}

void __141__PGPhotosChallengeMetricEvent__gatherNearLiveSuggestionInferencesForQuestions_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D3ACA0];
  v3 = [*(*(a1 + 32) + 8) photoLibrary];
  v4 = [v3 managedObjectContext];
  v8 = [v2 activeLibraryScopeInManagedObjectContext:v4];

  v5 = [objc_alloc(MEMORY[0x277D3ACB0]) initWithLibraryScope:v8];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __141__PGPhotosChallengeMetricEvent__gatherNearLiveSuggestionInferencesForQuestions_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke_610(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = a4;
  v6 = [a1[4] objectForKeyedSubscript:a2];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 entityIdentifier];
    v9 = [v7 state];
    v10 = @"NO";
    if (v9 == 2)
    {
      v10 = @"YES";
    }

    v11 = v10;
    v12 = [v7 additionalInfo];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D3C8B8]];
    v14 = v13;
    v15 = @"None";
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;

    v17 = [a1[5] _getInferredReasonFromMatchedConditions:v19 withFallbackReason:@"Near-live"];
    [a1[6] setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v8];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@->%@]-[%@->%@]", v11, v16, @"YES", v17];

    [a1[7] setObject:v18 forKeyedSubscript:v8];
  }
}

- (void)_gatherDeferredSuggestionInferencesForQuestions:(id)a3 momentUUIDS:(id)a4 inferenceResults:(id)a5 reasonResultByAssetIdentifier:(id)a6 progressBlock:(id)a7
{
  v94 = *MEMORY[0x277D85DE8];
  v57 = a3;
  v58 = a4;
  v63 = a5;
  v62 = a6;
  v56 = a7;
  v11 = 0.0;
  v60 = _Block_copy(v56);
  if (!v60 || (v12 = CFAbsoluteTimeGetCurrent(), v12 < 0.01))
  {
LABEL_7:
    v13 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
    v59 = [PGSharedLibrarySuggestionsProcessor libraryScopeToUseWithPhotoLibrary:v13];

    if (!v59)
    {
      v21 = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_DEFAULT, "[PGSharedLibrarySuggestionsProcessor] Cannot instanciate without a valid library scope", buf, 2u);
      }

      goto LABEL_47;
    }

    v14 = [[PGSharedLibrarySuggestionsProcessor alloc] initWithWorkingContext:self->_workingContext libraryScope:v59];
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    *buf = 0;
    *&v92 = buf;
    *(&v92 + 1) = 0x2020000000;
    v93 = 0;
    workingContext = self->_workingContext;
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __153__PGPhotosChallengeMetricEvent__gatherDeferredSuggestionInferencesForQuestions_momentUUIDS_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke;
    v78[3] = &unk_27888A6D8;
    v18 = v14;
    v79 = v18;
    v84 = buf;
    v80 = v58;
    v81 = self;
    v68 = v16;
    v82 = v68;
    v67 = v15;
    v83 = v67;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v78];
    p_super = &v18->super;
    if (v60)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v11 >= 0.01)
      {
        v77 = 0;
        v60[2](v60, &v77, 0.8);
        if (v77)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_46:

            _Block_object_dispose(buf, 8);
            v21 = p_super;
LABEL_47:

            goto LABEL_48;
          }

          *v87 = 67109378;
          v88 = 2545;
          v89 = 2080;
          v90 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v20 = MEMORY[0x277D86220];
LABEL_45:
          _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v87, 0x12u);
          goto LABEL_46;
        }

        v11 = Current;
      }
    }

    if (*(v92 + 24) != 1)
    {
LABEL_40:
      if (!v60)
      {
        goto LABEL_46;
      }

      if (CFAbsoluteTimeGetCurrent() - v11 < 0.01)
      {
        goto LABEL_46;
      }

      v77 = 0;
      v60[2](v60, &v77, 1.0);
      if (!v77 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_46;
      }

      *v87 = 67109378;
      v88 = 2586;
      v89 = 2080;
      v90 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
      v20 = MEMORY[0x277D86220];
      goto LABEL_45;
    }

    v22 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
    v66 = [v22 momentUUIDByAssetIdentifier];

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v57;
    v23 = [obj countByEnumeratingWithState:&v73 objects:v86 count:16];
    if (!v23)
    {
      goto LABEL_39;
    }

    v24 = *MEMORY[0x277D3C8B8];
    v64 = *MEMORY[0x277D3C8B8];
    v65 = *v74;
LABEL_19:
    v25 = 0;
    v69 = v23;
    while (1)
    {
      if (*v74 != v65)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v73 + 1) + 8 * v25);
      context = objc_autoreleasePoolPush();
      v27 = [v26 entityIdentifier];
      v28 = [v66 objectForKeyedSubscript:v27];
      v29 = [v26 state];
      v30 = @"NO";
      if (v29 == 2)
      {
        v30 = @"YES";
      }

      v31 = v30;
      v32 = [v26 additionalInfo];
      v33 = [v32 objectForKeyedSubscript:v64];
      v34 = v33;
      v35 = @"None";
      if (v33)
      {
        v35 = v33;
      }

      v36 = v35;

      v37 = [v68 objectForKeyedSubscript:v28];
      v38 = v37;
      v39 = @"None";
      if (v37)
      {
        v39 = v37;
      }

      v40 = v39;

      if (![v67 containsObject:v28])
      {
        break;
      }

      v41 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
      v42 = [v41 assetByAssetIdentifier];
      v43 = [v42 objectForKeyedSubscript:v27];

      if (v43)
      {
        curationSession = self->_curationSession;
        v85 = v43;
        v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
        [(CLSCurationSession *)curationSession prepareAssets:v45];

        v46 = [(PGPhotosChallengeMetricEvent *)self curationContext];
        v72 = 0;
        v47 = [PGSharedLibrarySuggestionsProcessor shouldIncludeAsset:v43 curationContext:v46 rejectionReason:&v72];
        v48 = v72;

        if (v48)
        {
          v49 = v48;

          v40 = v49;
        }

        goto LABEL_34;
      }

LABEL_37:

      objc_autoreleasePoolPop(context);
      if (v69 == ++v25)
      {
        v23 = [obj countByEnumeratingWithState:&v73 objects:v86 count:16];
        if (!v23)
        {
LABEL_39:

          goto LABEL_40;
        }

        goto LABEL_19;
      }
    }

    v47 = 0;
LABEL_34:
    v50 = [MEMORY[0x277CCABB0] numberWithBool:v47];
    [v63 setObject:v50 forKeyedSubscript:v27];

    v51 = @"NO";
    if (v47)
    {
      v51 = @"YES";
    }

    v52 = v51;
    v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@->%@]-[%@->%@]", v31, v36, v52, v40];
    [v62 setObject:v53 forKeyedSubscript:v27];

    goto LABEL_37;
  }

  v87[0] = 0;
  v60[2](v60, v87, 0.0);
  if (v87[0] != 1)
  {
    v11 = v12;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 2489;
    LOWORD(v92) = 2080;
    *(&v92 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_48:

  v54 = *MEMORY[0x277D85DE8];
}

void __153__PGPhotosChallengeMetricEvent__gatherDeferredSuggestionInferencesForQuestions_momentUUIDS_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [*(a1 + 32) evaluatorWithGraph:v3];
  if (v4)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v32 = [PGGraphMomentNodeCollection momentNodesForUUIDs:*(a1 + 40) inGraph:v3];
    v5 = [v32 temporarySet];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __153__PGPhotosChallengeMetricEvent__gatherDeferredSuggestionInferencesForQuestions_momentUUIDS_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke_593;
    v43[3] = &unk_27888A6B0;
    v6 = *(a1 + 56);
    v43[4] = *(a1 + 48);
    v44 = v6;
    v33 = v4;
    v7 = [v4 evaluateObjects:v5 withResultEnumerationBlock:v43];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(a1 + 64);
          v14 = [*(*(&v39 + 1) + 8 * i) UUID];
          [v13 addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v10);
    }

    v31 = [PGGraphHighlightTypeNodeCollection tripTypeNodesInGraph:v3];
    v15 = [v31 highlightGroupNodes];
    v34 = v3;
    v16 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:v8 graph:v3];
    v17 = [(PGGraphMomentNodeCollection *)v16 highlightNodes];
    v18 = [v17 highlightGroupNodes];

    v30 = v15;
    v19 = [v15 collectionByIntersecting:v18];
    v20 = [v19 momentNodes];
    v21 = [v20 uuids];

    [*(a1 + 64) unionSet:v21];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v35 objects:v46 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v36;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(a1 + 56) setObject:@"Trip with Participant" forKeyedSubscript:*(*(&v35 + 1) + 8 * j)];
        }

        v24 = [v22 countByEnumeratingWithState:&v35 objects:v46 count:16];
      }

      while (v24);
    }

    v4 = v33;
    v3 = v34;
    v27 = v32;
  }

  else
  {
    v28 = +[PGLogging sharedLogging];
    v27 = [v28 loggingConnection];

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_DEFAULT, "Shared library inference: evaluator is nil", buf, 2u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __153__PGPhotosChallengeMetricEvent__gatherDeferredSuggestionInferencesForQuestions_momentUUIDS_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke_593(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v6 = [*(a1 + 32) _getInferredReasonFromMatchedConditions:a4 withFallbackReason:0];
  if ([v6 length])
  {
    v7 = *(a1 + 40);
    v8 = [v13 UUID];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [v6 stringByAppendingFormat:@"|%@", v9];

      v6 = v10;
    }

    v11 = *(a1 + 40);
    v12 = [v13 UUID];
    [v11 setObject:v6 forKeyedSubscript:v12];
  }
}

- (void)_gatherMetricsForSharedLibraryAssetsQuestions:(id)a3 progressBlock:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _Block_copy(v7);
  v9 = 0.0;
  if (!v8 || (v10 = CFAbsoluteTimeGetCurrent(), v10 < 0.01))
  {
LABEL_7:
    v44 = v8;
    v41 = v7;
    v43 = [(PGPhotosChallengeMetricEvent *)self _groundTruthByAssetIdentifiersFromQuestions:v6];
    v40 = self;
    v11 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
    v12 = [v11 momentUUIDByAssetIdentifier];

    v45 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v42 = v6;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v47;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v47 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v46 + 1) + 8 * i);
          v19 = [v18 entityIdentifier];
          v20 = [v12 objectForKeyedSubscript:v19];

          if (v20)
          {
            [v45 addObject:v20];
          }

          else
          {
            v21 = +[PGLogging sharedLogging];
            v22 = [v21 loggingConnection];

            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = [v18 entityIdentifier];
              *buf = 138412290;
              *v53 = v23;
              _os_log_error_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_ERROR, "Shared library: Failed to find moment UUID for asset uuid: %@", buf, 0xCu);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v15);
    }

    v24 = v43;
    if (![v43 count] || !objc_msgSend(v45, "count"))
    {
      v27 = +[PGLogging sharedLogging];
      v28 = [v27 loggingConnection];

      v7 = v41;
      v6 = v42;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v35 = [v43 count];
        v36 = [v45 count];
        *buf = 67109376;
        *v53 = v35;
        *&v53[4] = 1024;
        *&v53[6] = v36;
        _os_log_error_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_ERROR, "Shared library: ground truth, %d, or moment UUIDs, %d, is empty", buf, 0xEu);
      }

      v29 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"sharedLibraryAssets" category:@"sharedLibraryAssets"];
      [(PGAssetsWithReasonPrecisionRecallEvaluation *)v29 evaluateWithGroundTruthResults:v43 inferenceResults:MEMORY[0x277CBEC10] reasonResultByAssetIdentifier:MEMORY[0x277CBEC10]];
      [(PGPhotosChallengeMetricEvent *)v40 setEvaluation:v29];
      v8 = v44;
      if (v44)
      {
        if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
        {
          v50 = 0;
          v44[2](v44, &v50, 1.0);
          if (v50)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v53 = 2455;
              *&v53[4] = 2080;
              *&v53[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      goto LABEL_58;
    }

    v7 = v41;
    v6 = v42;
    v8 = v44;
    if (v44)
    {
      Current = CFAbsoluteTimeGetCurrent();
      p_isa = &v40->super.super.isa;
      if (Current - v9 >= 0.01)
      {
        v50 = 0;
        v44[2](v44, &v50, 0.3);
        if (v50)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v53 = 2459;
            *&v53[4] = 2080;
            *&v53[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_58;
        }

        v9 = Current;
      }
    }

    else
    {
      p_isa = &v40->super.super.isa;
    }

    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = v44;
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [p_isa _gatherDeferredSuggestionInferencesForQuestions:v13 momentUUIDS:v45 inferenceResults:v30 reasonResultByAssetIdentifier:v31 progressBlock:v41];
    if (v44)
    {
      v32 = CFAbsoluteTimeGetCurrent();
      if (v32 - v9 >= 0.01)
      {
        v50 = 0;
        v44[2](v44, &v50, 0.6);
        if (v50)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v53 = 2467;
            *&v53[4] = 2080;
            *&v53[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v33 = MEMORY[0x277D86220];
LABEL_47:
            _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_57;
          }

          goto LABEL_57;
        }

        v9 = v32;
      }

      [p_isa _gatherNearLiveSuggestionInferencesForQuestions:v13 inferenceResults:v30 reasonResultByAssetIdentifier:v31 progressBlock:v41];
      v34 = CFAbsoluteTimeGetCurrent();
      if (v34 - v9 >= 0.01)
      {
        v50 = 0;
        v44[2](v44, &v50, 0.9);
        if (v50)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v53 = 2471;
            *&v53[4] = 2080;
            *&v53[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v33 = MEMORY[0x277D86220];
            goto LABEL_47;
          }

LABEL_57:

          v24 = v43;
LABEL_58:

          goto LABEL_59;
        }

        v9 = v34;
      }
    }

    else
    {
      [p_isa _gatherNearLiveSuggestionInferencesForQuestions:v13 inferenceResults:v30 reasonResultByAssetIdentifier:v31 progressBlock:v41];
    }

    v37 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"sharedLibraryAssets" category:@"sharedLibraryAssets"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v37 evaluateWithGroundTruthResults:v43 inferenceResults:v30 reasonResultByAssetIdentifier:v31];
    [p_isa setEvaluation:v37];
    v38 = p_isa[2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [p_isa[2] setResultsByAssetIdentifier:v31];
    }

    v8 = v44;
    if (v44)
    {
      if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
      {
        v50 = 0;
        v44[2](v44, &v50, 1.0);
        if (v50)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v53 = 2483;
            *&v53[4] = 2080;
            *&v53[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_57;
  }

  v50 = 0;
  v8[2](v8, &v50, 0.0);
  if (v50 != 1)
  {
    v9 = v10;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v53 = 2430;
    *&v53[4] = 2080;
    *&v53[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_59:

  v39 = *MEMORY[0x277D85DE8];
}

- (id)payloadForVerification
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [objc_opt_class() stringFromQuestionMetricType:self->_questionMetricType];
  v18 = [v4 substringToIndex:1];
  v5 = [v18 lowercaseString];
  v6 = [v4 stringByReplacingCharactersInRange:0 withString:{1, v5}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_algorithmVersion];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@AlgorithmVersion", v6];
  [v3 setObject:v7 forKeyedSubscript:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation falseNegatives](self->_evaluation, "falseNegatives")}];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@NumFalseNegatives", v6];
  [v3 setObject:v9 forKeyedSubscript:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation falsePositives](self->_evaluation, "falsePositives")}];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@NumFalsePositives", v6];
  [v3 setObject:v11 forKeyedSubscript:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation trueNegatives](self->_evaluation, "trueNegatives")}];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@NumTrueNegatives", v6];
  [v3 setObject:v13 forKeyedSubscript:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation truePositives](self->_evaluation, "truePositives")}];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@NumTruePositives", v6];
  [v3 setObject:v15 forKeyedSubscript:v16];

  return v3;
}

- (id)payload
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_graphSchemaVersion];
  [v3 setObject:v4 forKeyedSubscript:@"graphSchemaVersion"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_questionVersion];
  [v3 setObject:v5 forKeyedSubscript:@"questionVersion"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_algorithmVersion];
  [v3 setObject:v6 forKeyedSubscript:@"algorithmVersion"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_photosModelVersion];
  [v3 setObject:v7 forKeyedSubscript:@"photosModelVersion"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_questionVersion];
  [v3 setObject:v8 forKeyedSubscript:@"questionVersion"];

  [v3 setObject:self->_questionTypeString forKeyedSubscript:@"questionType"];
  [v3 setObject:self->_photoLibrarySize forKeyedSubscript:@"photosLibrarySize"];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation falseNegatives](self->_evaluation, "falseNegatives")}];
  [v3 setObject:v9 forKeyedSubscript:@"falseNegativeCount"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation falsePositives](self->_evaluation, "falsePositives")}];
  [v3 setObject:v10 forKeyedSubscript:@"falsePositiveCount"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation trueNegatives](self->_evaluation, "trueNegatives")}];
  [v3 setObject:v11 forKeyedSubscript:@"trueNegativeCount"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation truePositives](self->_evaluation, "truePositives")}];
  [v3 setObject:v12 forKeyedSubscript:@"truePositiveCount"];

  return v3;
}

- (id)_groundTruthByPersonUUIDFromQuestions:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__PGPhotosChallengeMetricEvent__groundTruthByPersonUUIDFromQuestions___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __70__PGPhotosChallengeMetricEvent__groundTruthByPersonUUIDFromQuestions___block_invoke(id *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [a1[4] metricsCache];
  v5 = [v4 activePersonUUIDByPersonUUID];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a1[5];
  v36 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v36)
  {
    v35 = *v38;
    v31 = *MEMORY[0x277D3C9B0];
    v30 = *MEMORY[0x277D3C8B8];
    v29 = *MEMORY[0x277D3C8C0];
    v32 = v5;
    v33 = v3;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        v8 = [v7 entityIdentifier];
        v9 = MEMORY[0x277CD9938];
        v10 = [v5 objectForKeyedSubscript:v8];
        v11 = [v9 localIdentifierWithUUID:v10];

        v12 = [v3 personNodeForPersonLocalIdentifier:v11];
        if (v12)
        {
          v13 = [v7 state];
          v14 = MEMORY[0x277CBEC28];
          if (v13 == 2)
          {
            v14 = MEMORY[0x277CBEC38];
          }

          v15 = v14;
          if ([v7 type] == 5)
          {
            v16 = a1;
            v17 = [v7 additionalInfo];
            v18 = [v17 objectForKeyedSubscript:v31];
            v19 = [v18 isEqualToString:@"CHILD"];

            if (v19)
            {
              v20 = [v7 additionalInfo];
              v21 = [v20 objectForKeyedSubscript:v30];

              v22 = [v7 state];
              v23 = MEMORY[0x277CBEC28];
              a1 = v16;
              if (v22 == 2)
              {
                v24 = [v21 isEqualToString:v29];
                v23 = MEMORY[0x277CBEC28];
                if (v24)
                {
                  v23 = MEMORY[0x277CBEC38];
                }
              }

              v25 = v23;

              v15 = v25;
              v3 = v33;
            }

            else
            {
              v3 = v33;
              a1 = v16;
            }

            v5 = v32;
          }

          [a1[6] setObject:v15 forKeyedSubscript:v8];
        }

        else
        {
          v26 = +[PGLogging sharedLogging];
          v15 = [v26 loggingConnection];

          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v27 = [v7 entityIdentifier];
            *buf = 138412290;
            v42 = v27;
            _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Failed to find person node for entity identifier: '%@'", buf, 0xCu);
          }
        }
      }

      v36 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v36);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_groundTruthByAssetIdentifiersFromQuestions:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v32;
    *&v7 = 138412290;
    v27 = v7;
    v28 = *v32;
    v29 = self;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        v12 = [v11 entityIdentifier];
        v13 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        v14 = [v13 assetByAssetIdentifier];
        v15 = [v14 objectForKeyedSubscript:v12];
        if (v15)
        {

LABEL_9:
          if ([v11 state] == 2)
          {
            v21 = MEMORY[0x277CBEC38];
          }

          else
          {
            v21 = MEMORY[0x277CBEC28];
          }

          [v5 setObject:v21 forKeyedSubscript:v12];
          goto LABEL_13;
        }

        [(PGPhotosChallengeMetricEvent *)self metricsCache];
        v17 = v16 = v5;
        [v17 assetByAssetSyndicationIdentifier];
        v19 = v18 = v8;
        v20 = [v19 objectForKeyedSubscript:v12];

        v8 = v18;
        v5 = v16;
        v9 = v28;
        self = v29;

        if (v20)
        {
          goto LABEL_9;
        }

        v22 = +[PGLogging sharedLogging];
        v23 = [v22 loggingConnection];

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = v27;
          v36 = v12;
          _os_log_error_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_ERROR, "Failed to find asset with uuid: '%@'", buf, 0xCu);
        }

LABEL_13:
        ++v10;
      }

      while (v8 != v10);
      v24 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      v8 = v24;
    }

    while (v24);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)groundTruthByMomentUUIDFromExhaustiveMomentLabelingQuestions:(id)a3 meaningLabel:(id)a4 withMetricsCache:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v31 = a4;
  v8 = a5;
  v30 = [MEMORY[0x277CBEB38] dictionary];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v34;
    v32 = *MEMORY[0x277D3C8B8];
    *&v11 = 138412290;
    v29 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        if ([v15 state] == 2)
        {
          v16 = [v15 entityIdentifier];
          v17 = [v8 momentUUIDsForExhaustiveMomentLabelingQuestion];
          v18 = [v17 containsObject:v16];

          if (v18)
          {
            v19 = [v15 additionalInfo];
            v20 = [v19 objectForKeyedSubscript:v32];

            v21 = MEMORY[0x277CBEB98];
            v22 = [v20 componentsSeparatedByString:@", "];
            v23 = [v21 setWithArray:v22];

            if ([v23 count])
            {
              v24 = [v23 containsObject:v31];
              v25 = [MEMORY[0x277CCABB0] numberWithBool:v24];
              [v30 setObject:v25 forKeyedSubscript:v16];
            }
          }

          else
          {
            v26 = +[PGLogging sharedLogging];
            v20 = [v26 loggingConnection];

            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = v29;
              v38 = v16;
              _os_log_error_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_ERROR, "Failed to find moment with uuid in the photoLibrary: '%@'", buf, 0xCu);
            }
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v12);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)_reasonResultByAssetEntityIdentifierForTitlingQuestions:(id)a3 questionType:(unsigned __int16)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    v10 = *MEMORY[0x277D3C8B8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        if ([v12 type] == v4)
        {
          v13 = [v12 state];
          v14 = @"NO";
          if (v13 == 2)
          {
            v14 = @"YES";
          }

          v15 = v14;
          v16 = [v12 additionalInfo];
          v17 = [v16 objectForKeyedSubscript:v10];

          if (v17)
          {
            v18 = [v12 additionalInfo];
            v19 = [v18 objectForKeyedSubscript:v10];
          }

          else
          {
            v19 = @"SAME";
          }

          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"[New->%@]-[Legacy->%@]", v15, v19];
          v21 = [v12 entityIdentifier];
          [v24 setObject:v20 forKeyedSubscript:v21];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_groundTruthForTitlingQuestions:(id)a3 questionType:(unsigned __int16)a4
{
  v4 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19 = [MEMORY[0x277CBEB38] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if ([v11 type] == v4)
        {
          v12 = [v11 entityIdentifier];
          v13 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
          v14 = [v13 dayHighlightAssetIdentifiers];
          v15 = [v14 containsObject:v12];

          if (v15)
          {
            if ([v11 state] == 2)
            {
              v16 = MEMORY[0x277CBEC38];
            }

            else
            {
              v16 = MEMORY[0x277CBEC28];
            }

            [v19 setObject:v16 forKeyedSubscript:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)_gatherMetricsForHighlightTitlingQuestions:(id)a3 progressBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForTitlingQuestions:v6 questionType:28];
    v11 = [v10 allKeys];
    v12 = [(PGPhotosChallengeMetricEvent *)self _inferredResultsForEntityIdentifiers:v11 withDefaultBoolValue:1];

    v13 = [(PGPhotosChallengeMetricEvent *)self _reasonResultByAssetEntityIdentifierForTitlingQuestions:v6 questionType:28];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.5);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 2243;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_26;
        }

        v8 = Current;
      }
    }

    v15 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"highlightTitling" category:@"dayHighlightTitling"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v15 evaluateWithGroundTruthResults:v10 inferenceResults:v12 reasonResultByAssetIdentifier:v13];
    if (v7)
    {
      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.9);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 2247;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v17 = MEMORY[0x277D86220];
LABEL_24:
            _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_25:

LABEL_26:
          goto LABEL_27;
        }

        v8 = v16;
      }

      [(PGPhotosChallengeMetricEvent *)self setEvaluation:v15];
      if (CFAbsoluteTimeGetCurrent() - v8 < 0.01)
      {
        goto LABEL_25;
      }

      v19 = 0;
      v7[2](v7, &v19, 1.0);
      if (!v19 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      *buf = 67109378;
      v21 = 2250;
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
      v17 = MEMORY[0x277D86220];
      goto LABEL_24;
    }

    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v15];
    goto LABEL_25;
  }

  v19 = 0;
  v7[2](v7, &v19, 0.0);
  if (v19 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v21 = 2237;
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_27:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_tripTitlingReasonResultByAssetEntityIdentifierForQuestions:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    v8 = *MEMORY[0x277D3CA00];
    v9 = *MEMORY[0x277D3C8B8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if ([v11 type] == 26 && v8 <= objc_msgSend(v11, "questionVersion"))
        {
          v12 = [v11 state];
          v13 = @"NO";
          if (v12 == 2)
          {
            v13 = @"YES";
          }

          v14 = v13;
          v15 = [v11 additionalInfo];
          v16 = [v15 objectForKeyedSubscript:v9];

          if (v16)
          {
            v17 = [v11 additionalInfo];
            v18 = [v17 objectForKeyedSubscript:v9];
          }

          else
          {
            v18 = @"SAME";
          }

          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[New->%@]-[Legacy->%@]", v14, v18];
          v20 = [v11 entityIdentifier];
          [v23 setObject:v19 forKeyedSubscript:v20];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_groundTruthForTripTitlingQuestions:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = MEMORY[0x277CBEC28];
    v10 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 type] == 26)
        {
          v13 = [v12 entityIdentifier];
          if ([v12 state] == 2)
          {
            v14 = v10;
          }

          else
          {
            v14 = v9;
          }

          [v4 setObject:v14 forKeyedSubscript:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_gatherMetricsForTripTitlingQuestions:(id)a3 progressBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForTripTitlingQuestions:v6];
    v11 = [v10 allKeys];
    v12 = [(PGPhotosChallengeMetricEvent *)self _inferredResultsForEntityIdentifiers:v11 withDefaultBoolValue:1];

    v13 = [(PGPhotosChallengeMetricEvent *)self _tripTitlingReasonResultByAssetEntityIdentifierForQuestions:v6];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.5);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 2188;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_26;
        }

        v8 = Current;
      }
    }

    v15 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"tripTitling" category:@"tripTitling"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v15 evaluateWithGroundTruthResults:v10 inferenceResults:v12 reasonResultByAssetIdentifier:v13];
    if (v7)
    {
      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.9);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 2192;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v17 = MEMORY[0x277D86220];
LABEL_24:
            _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_25:

LABEL_26:
          goto LABEL_27;
        }

        v8 = v16;
      }

      [(PGPhotosChallengeMetricEvent *)self setEvaluation:v15];
      if (CFAbsoluteTimeGetCurrent() - v8 < 0.01)
      {
        goto LABEL_25;
      }

      v19 = 0;
      v7[2](v7, &v19, 1.0);
      if (!v19 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      *buf = 67109378;
      v21 = 2195;
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
      v17 = MEMORY[0x277D86220];
      goto LABEL_24;
    }

    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v15];
    goto LABEL_25;
  }

  v19 = 0;
  v7[2](v7, &v19, 0.0);
  if (v19 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v21 = 2181;
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_27:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_syndicatedAssetFromQuestion:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
  v6 = [v5 assetByAssetSyndicationIdentifier];
  v7 = [v4 entityIdentifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v16 = +[PGLogging sharedLogging];
    v10 = [v16 loggingConnection];

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v14 = [v4 entityIdentifier];
    v23 = 138412290;
    v24 = v14;
    _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "Failed to find asset with syndication uuid: '%@'", &v23, 0xCu);
LABEL_7:

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v9 = [v8 curationProperties];
  v10 = [v9 syndicationIdentifier];

  if (!v10)
  {
    v17 = +[PGLogging sharedLogging];
    v18 = [v17 loggingConnection];

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = [v8 uuid];
      v23 = 138412290;
      v24 = v22;
      _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Syndication identifier is nil for asset %@", &v23, 0xCu);
    }

    v10 = 0;
    goto LABEL_13;
  }

  v11 = [v8 mediaAnalysisProperties];
  v12 = [v11 syndicationProcessingVersion];

  if (v12 != *MEMORY[0x277CD9B40] && v12 != *MEMORY[0x277CD9B48])
  {
    v13 = +[PGLogging sharedLogging];
    v14 = [v13 loggingConnection];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v8 uuid];
      v23 = 138412290;
      v24 = v15;
      _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Syndicated asset not yet inferred: %@", &v23, 0xCu);
    }

    goto LABEL_7;
  }

  v19 = v8;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_reasonResultByAssetSyndicationIdentifierForQuestions:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v52 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v58;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v57 + 1) + 8 * i);
        v11 = [(PGPhotosChallengeMetricEvent *)self _syndicatedAssetFromQuestion:v10];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 mediaAnalysisProperties];
          v14 = [v13 syndicationProcessingValue];

          if ((v14 & 0x1000) == 0)
          {
            [v52 setObject:v12 forKeyedSubscript:v10];
            if ((v14 & 0x6EF0) == 0)
            {
              v15 = [v12 localIdentifier];
              [v47 setObject:v12 forKeyedSubscript:v15];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v7);
  }

  v16 = [v47 allValues];
  v17 = [(PGPhotosChallengeMetricEvent *)self curationSession];
  [v17 prepareAssets:v16];

  v46 = v16;
  [MEMORY[0x277CD97A8] prefetchScenesOnAssets:v16];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v5;
  v18 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v18)
  {
    v19 = v18;
    v51 = *v54;
    v49 = *MEMORY[0x277D3C8B8];
    v20 = *MEMORY[0x277D3ADB0];
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v54 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v53 + 1) + 8 * j);
        v23 = [v52 objectForKeyedSubscript:v22];
        v24 = v23;
        if (v23)
        {
          v25 = [v23 mediaAnalysisProperties];
          v26 = [v25 syndicationProcessingValue];

          if ([v22 state] == 2)
          {
            v27 = @"YES";
          }

          else
          {
            v27 = @"NO";
          }

          v28 = v27;
          v29 = [v22 additionalInfo];
          v30 = [v29 objectForKeyedSubscript:v49];
          v31 = v30;
          v32 = @"None";
          if (v30)
          {
            v32 = v30;
          }

          v33 = v32;

          v34 = v26 & 0x7EF0;
          if ((v26 & 0x7EF0) != 0)
          {
            v35 = @"YES";
          }

          else
          {
            v35 = @"NO";
          }

          v36 = v35;
          v37 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
          if (!v34)
          {
            v38 = [v24 curationModel];
            v39 = @"Meme/Document/Screenshot";
            if ([v38 isMemeWithAsset:v24] & 1) != 0 || (v39 = @"NSFW", (objc_msgSend(v38, "isVeryPreciselyIVSNSFWExplicitWithAsset:", v24)) || (objc_msgSend(v24, "curationScore"), v39 = @"Low curation score", v40 < v20))
            {

              v37 = v39;
            }
          }

          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@->%@]-[%@->%@]", v28, v33, v36, v37];
          v42 = [v24 curationProperties];
          v43 = [v42 syndicationIdentifier];

          [v50 setObject:v41 forKeyedSubscript:v43];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v19);
  }

  v44 = *MEMORY[0x277D85DE8];

  return v50;
}

- (id)_syndicatedAssetsInferenceResultsForAssetSyndicationIdentifiers:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        v12 = [v11 assetByAssetSyndicationIdentifier];
        v13 = [v12 objectForKeyedSubscript:v10];

        v14 = [v13 mediaAnalysisProperties];
        v15 = ([v14 syndicationProcessingValue] & 0x7EF0) != 0;

        v16 = [MEMORY[0x277CCABB0] numberWithBool:v15];
        [v5 setObject:v16 forKeyedSubscript:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_syndicatedAssetsGroundTruthByAssetIdentifiersFromQuestions:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(PGPhotosChallengeMetricEvent *)self _syndicatedAssetFromQuestion:v11, v16];
        if (v12)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [(PGPhotosChallengeMetricEvent *)self _groundTruthByAssetIdentifiersFromQuestions:v5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_gatherMetricsForSyndicatedAssetsQuestions:(id)a3 progressBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _syndicatedAssetsGroundTruthByAssetIdentifiersFromQuestions:v6];
    v11 = [v10 allKeys];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.3);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 2059;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_32;
        }

        v8 = Current;
      }

      v13 = [(PGPhotosChallengeMetricEvent *)self _syndicatedAssetsInferenceResultsForAssetSyndicationIdentifiers:v11];
      v15 = CFAbsoluteTimeGetCurrent();
      if (v15 - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.6);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 2062;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_31;
        }

        v8 = v15;
      }

      v14 = [(PGPhotosChallengeMetricEvent *)self _reasonResultByAssetSyndicationIdentifierForQuestions:v6];
      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.9);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 2065;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_30:

LABEL_31:
LABEL_32:

          goto LABEL_33;
        }

        v8 = v16;
      }
    }

    else
    {
      v13 = [(PGPhotosChallengeMetricEvent *)self _syndicatedAssetsInferenceResultsForAssetSyndicationIdentifiers:v11];
      v14 = [(PGPhotosChallengeMetricEvent *)self _reasonResultByAssetSyndicationIdentifierForQuestions:v6];
    }

    v17 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"syndicatedAssets" category:@"syndicatedAssets"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v17 evaluateWithGroundTruthResults:v10 inferenceResults:v13 reasonResultByAssetIdentifier:v14];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v17];
    if (v7)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 1.0);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 2070;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_30;
  }

  v19 = 0;
  v7[2](v7, &v19, 0.0);
  if (v19 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v21 = 2055;
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_33:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_featuredPhotoInferenceResultsForAnswerDateByAssetIds:(id)a3 questionMetricType:(unsigned __int16)a4
{
  v34 = a4;
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v35 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  v11 = [PGLongTailSuggester alloc];
  v12 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
  v13 = [v12 featuredPhotosSuggestionSession];
  v30 = [(PGAbstractSuggester *)v11 initWithSession:v13];

  v32 = [MEMORY[0x277CBEB38] dictionary];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v5;
  v14 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v14)
  {
    v33 = *v45;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [v16 allKeys];
        v19 = [v18 firstObject];

        v20 = [v16 objectForKeyedSubscript:v19];
        v21 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        v22 = [v21 assetByAssetIdentifier];
        v23 = [v22 objectForKeyedSubscript:v19];

        v40 = 0;
        v41 = &v40;
        v42 = 0x2020000000;
        v43 = 0;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __105__PGPhotosChallengeMetricEvent__featuredPhotoInferenceResultsForAnswerDateByAssetIds_questionMetricType___block_invoke;
        v36[3] = &unk_27888A688;
        v36[4] = self;
        v39 = &v40;
        v24 = v23;
        v37 = v24;
        v25 = v20;
        v38 = v25;
        [v35 enumerateObjectsUsingBlock:v36];
        if (v34 != 119)
        {
          v26 = *(v41 + 24);
LABEL_10:
          v27 = [MEMORY[0x277CCABB0] numberWithBool:v26 & 1];
          [v32 setObject:v27 forKeyedSubscript:v16];

          goto LABEL_11;
        }

        v26 = [(PGLongTailSuggester *)v30 canGenerateSuggestionWithAsset:v24 onDate:v25];
        if (v26 & 1 | ((v41[3] & 1) == 0))
        {
          goto LABEL_10;
        }

LABEL_11:

        _Block_object_dispose(&v40, 8);
        objc_autoreleasePoolPop(v17);
      }

      v14 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v14);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v32;
}

void __105__PGPhotosChallengeMetricEvent__featuredPhotoInferenceResultsForAnswerDateByAssetIds_questionMetricType___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) metricsCache];
  v7 = [v6 featuredPhotosSuggestionSession];
  v9 = [a2 suggesterWithSession:v7];

  *(*(*(a1 + 56) + 8) + 24) = [v9 canGenerateSuggestionWithAsset:*(a1 + 40) onDate:*(a1 + 48)];
  v8 = *(*(a1 + 56) + 8);
  if (*(v8 + 24) == 1)
  {
    *(v8 + 24) = 1;
    *a3 = 1;
  }
}

- (id)_groundTruthForFeaturedPhotoFromQuestions:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v28;
    v9 = *MEMORY[0x277D3C8F0];
    *&v6 = 138412290;
    v24 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 entityIdentifier];
        v13 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        v14 = [v13 assetByAssetIdentifier];
        v15 = [v14 objectForKeyedSubscript:v12];

        if (v15)
        {
          v16 = [v11 additionalInfo];
          v17 = [v16 objectForKeyedSubscript:v9];

          if (v17)
          {
            v31 = v12;
            v32 = v17;
            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            if ([v11 state] == 2)
            {
              v19 = MEMORY[0x277CBEC38];
            }

            else
            {
              v19 = MEMORY[0x277CBEC28];
            }

            [v25 setObject:v19 forKeyedSubscript:v18];
          }

          else
          {
            v21 = +[PGLogging sharedLogging];
            v18 = [v21 loggingConnection];

            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Featured photo question doesn't have the date when it was answered", buf, 2u);
            }
          }
        }

        else
        {
          v20 = +[PGLogging sharedLogging];
          v17 = [v20 loggingConnection];

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v34 = v12;
            _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Failed to find asset with uuid: '%@'", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v7);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_reasonResultByAssetEntityIdentifierForMusicQualityQuestions:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    v7 = *MEMORY[0x277D3C8B8];
    v30 = *MEMORY[0x277D3C970];
    v8 = *MEMORY[0x277D3C968];
    v31 = *MEMORY[0x277D3C8B8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        if ([v10 type] == 15)
        {
          v11 = [v10 state];
          v12 = @"NO";
          if (v11 == 2)
          {
            v12 = @"YES";
          }

          v13 = v12;
          v14 = [v10 additionalInfo];
          v15 = [v14 objectForKeyedSubscript:v7];

          if (v15)
          {
            v16 = [v10 additionalInfo];
            v17 = [v16 objectForKeyedSubscript:v7];
          }

          else
          {
            v17 = @"NA";
          }

          v18 = [v10 additionalInfo];
          v19 = [v18 objectForKeyedSubscript:v30];

          if (v19)
          {
            v20 = [v10 additionalInfo];
            v21 = [v20 objectForKeyedSubscript:v30];
          }

          else
          {
            v21 = @"0";
          }

          v22 = [v10 additionalInfo];
          v23 = [v22 objectForKeyedSubscript:v8];

          if (v23)
          {
            v24 = [v10 additionalInfo];
            v25 = [v24 objectForKeyedSubscript:v8];
          }

          else
          {
            v25 = @"Unknown";
          }

          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"[LikedSong:%@:%@->%@]-[Reason->%@]", v25, v21, v13, v17];
          v27 = [v10 entityIdentifier];
          [v32 setObject:v26 forKeyedSubscript:v27];

          v7 = v31;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v5);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)_groundTruthForMusicQualityQuestions:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = MEMORY[0x277CBEC28];
    v10 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 type] == 15)
        {
          v13 = [v12 entityIdentifier];
          if ([v12 state] == 2)
          {
            v14 = v10;
          }

          else
          {
            v14 = v9;
          }

          [v4 setObject:v14 forKeyedSubscript:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_gatherMetricsForMemoryMusicQuestions:(id)a3 progressBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForMusicQualityQuestions:v6];
    v11 = [v10 allKeys];
    v12 = [(PGPhotosChallengeMetricEvent *)self _inferredResultsForEntityIdentifiers:v11 withDefaultBoolValue:1];

    v13 = [(PGPhotosChallengeMetricEvent *)self _reasonResultByAssetEntityIdentifierForMusicQualityQuestions:v6];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.5);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 1906;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_26;
        }

        v8 = Current;
      }
    }

    v15 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"memoryMusicQuality" category:@"memoryMusicQuality"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v15 evaluateWithGroundTruthResults:v10 inferenceResults:v12 reasonResultByAssetIdentifier:v13];
    if (v7)
    {
      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.9);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 1910;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v17 = MEMORY[0x277D86220];
LABEL_24:
            _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_25:

LABEL_26:
          goto LABEL_27;
        }

        v8 = v16;
      }

      [(PGPhotosChallengeMetricEvent *)self setEvaluation:v15];
      if (CFAbsoluteTimeGetCurrent() - v8 < 0.01)
      {
        goto LABEL_25;
      }

      v19 = 0;
      v7[2](v7, &v19, 1.0);
      if (!v19 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      *buf = 67109378;
      v21 = 1913;
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
      v17 = MEMORY[0x277D86220];
      goto LABEL_24;
    }

    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v15];
    goto LABEL_25;
  }

  v19 = 0;
  v7[2](v7, &v19, 0.0);
  if (v19 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v21 = 1900;
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_27:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_gatherMetricsForMemoryQuestions:(id)a3 questionMetricType:(unsigned __int16)a4 progressBlock:(id)a5
{
  v44 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = _Block_copy(a5);
  v9 = 0.0;
  if (v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v55 = 0;
      v8[2](v8, &v55, 0.0);
      if (v55 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v58 = 1836;
          *&v58[4] = 2080;
          *&v58[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v11 = MEMORY[0x277D86220];
LABEL_48:
          _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_49;
        }

        goto LABEL_49;
      }

      v9 = Current;
    }
  }

  v12 = [v7 count];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v42 = v7;
  obj = v7;
  v13 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v13)
  {
    v15 = v13;
    v46 = 0;
    v47 = 0;
    v16 = 1.0 / v12;
    v50 = *v52;
    v17 = 0.0;
    *&v14 = 67109120;
    v41 = v14;
    v18 = v44;
    v43 = self;
    while (2)
    {
      v19 = 0;
      v45 = v15;
      do
      {
        if (*v52 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v51 + 1) + 8 * v19);
        v17 = v16 + v17;
        if (v8)
        {
          v21 = CFAbsoluteTimeGetCurrent();
          if (v21 - v9 >= 0.01)
          {
            v55 = 0;
            v8[2](v8, &v55, v17);
            if (v55)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v58 = 1845;
                *&v58[4] = 2080;
                *&v58[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v7 = v42;
              goto LABEL_49;
            }

            v9 = v21;
          }
        }

        v22 = [v20 entityIdentifier];
        v23 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        v24 = [v23 memoryByMemoryIdentifier];
        v25 = [v24 objectForKeyedSubscript:v22];

        if (v25)
        {
          if (v18 == 116)
          {
            if ([v20 state] == 2)
            {
              ++v46;
            }

            else
            {
              ++v47;
            }
          }

          else
          {
            v28 = v8;
            v29 = [v25 category];
            v48 = [v25 subcategory];
            v30 = [(PGPhotosChallengeMetricEvent *)self memoryCategorySubCategoryByQuestionMetricType];
            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v18];
            v32 = [v30 objectForKeyedSubscript:v31];

            if (!v32)
            {
              v33 = +[PGLogging sharedLogging];
              v34 = [v33 loggingConnection];

              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = v41;
                *v58 = v18;
                _os_log_error_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_ERROR, "QuestionMetricType %d has no MemoryCategory/SubCategory pairs", buf, 8u);
              }
            }

            v35 = [v32 firstObject];
            v36 = [v35 unsignedIntegerValue];

            v37 = [v32 lastObject];
            v38 = [v37 unsignedIntegerValue];

            if (v29 == v36)
            {
              v8 = v28;
              v15 = v45;
              if (v48 == v38)
              {
                v18 = v44;
                if ([v20 state] == 2)
                {
                  ++v46;
                }

                else
                {
                  ++v47;
                }
              }

              else
              {
                v18 = v44;
              }
            }

            else
            {
              v8 = v28;
              v18 = v44;
              v15 = v45;
            }

            self = v43;
          }
        }

        else
        {
          v26 = +[PGLogging sharedLogging];
          v27 = [v26 loggingConnection];

          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v58 = v22;
            _os_log_error_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_ERROR, "No memory found for uuid %@ when collecting metrics for memory quality question.", buf, 0xCu);
          }
        }

        ++v19;
      }

      while (v15 != v19);
      v15 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v39 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"memoryQuality" category:@"memoryQuality" truePositives:v46 falsePositives:v47 falseNegatives:0 trueNegatives:0];
  [(PGPhotosChallengeMetricEvent *)self setEvaluation:v39];

  v7 = v42;
  if (v8)
  {
    if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
    {
      v55 = 0;
      v8[2](v8, &v55, 1.0);
      if (v55)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v58 = 1893;
          *&v58[4] = 2080;
          *&v58[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v11 = MEMORY[0x277D86220];
          goto LABEL_48;
        }
      }
    }
  }

LABEL_49:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_gatherMetricsForPetKnowledgeQuestions:(id)a3 progressBlock:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  v8 = 0.0;
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v30 = 0;
      v7[2](v7, &v30, 0.0);
      if (v30 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v33 = 1808;
          v34 = 2080;
          v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v10 = MEMORY[0x277D86220];
LABEL_32:
          _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_33;
        }

        goto LABEL_33;
      }

      v8 = Current;
    }
  }

  v25 = self;
  v11 = [v6 count];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = 1.0 / v11;
    v18 = *v27;
    v19 = 0.0;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        v19 = v17 + v19;
        if (v7)
        {
          v22 = CFAbsoluteTimeGetCurrent();
          if (v22 - v8 >= 0.01)
          {
            v30 = 0;
            v7[2](v7, &v30, v19);
            if (v30)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v33 = 1817;
                v34 = 2080;
                v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_33;
            }

            v8 = v22;
          }
        }

        if ([v21 state] == 2)
        {
          ++v16;
        }

        else if ([v21 state] == 3)
        {
          ++v15;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v23 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"petKnowledge" category:@"petKnowledge" truePositives:v16 falsePositives:v15 falseNegatives:0 trueNegatives:0];
  [(PGPhotosChallengeMetricEvent *)v25 setEvaluation:v23];

  if (v7)
  {
    if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
    {
      v30 = 0;
      v7[2](v7, &v30, 0.0);
      if (v30)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v33 = 1829;
          v34 = 2080;
          v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v10 = MEMORY[0x277D86220];
          goto LABEL_32;
        }
      }
    }
  }

LABEL_33:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_deleteOutdatedPetQuestionsWithValidPetUUIDs:(id)a3
{
  v24[3] = *MEMORY[0x277D85DE8];
  workingContext = self->_workingContext;
  v4 = a3;
  v5 = [(PGManagerWorkingContext *)workingContext photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"type", 13];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"displayType", 6];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"entityIdentifier", v4];

  v10 = MEMORY[0x277CCA920];
  v24[0] = v7;
  v24[1] = v8;
  v24[2] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v12 = [v10 andPredicateWithSubpredicates:v11];
  [v6 setPredicate:v12];

  v13 = [MEMORY[0x277CD9970] fetchQuestionsWithOptions:v6 validQuestionsOnly:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__PGPhotosChallengeMetricEvent__deleteOutdatedPetQuestionsWithValidPetUUIDs___block_invoke;
  v20[3] = &unk_27888A660;
  v14 = v13;
  v21 = v14;
  v19 = 0;
  [v5 performChangesAndWait:v20 error:&v19];
  v15 = v19;
  if (v15)
  {
    v16 = +[PGLogging sharedLogging];
    v17 = [v16 loggingConnection];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v15;
      _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Error deleting outdated pet questions: %@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_currentPetInferenceResultsForPetUUIDs:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__PGPhotosChallengeMetricEvent__currentPetInferenceResultsForPetUUIDs___block_invoke;
  v12[3] = &unk_27888A638;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __71__PGPhotosChallengeMetricEvent__currentPetInferenceResultsForPetUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v17 = [v16 graph];
  v19 = [v17 meNode];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__70470;
  v29 = __Block_byref_object_dispose__70471;
  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection nodesInGraph:v17];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __71__PGPhotosChallengeMetricEvent__currentPetInferenceResultsForPetUUIDs___block_invoke_2;
  v24[3] = &unk_27888A610;
  v24[4] = &v25;
  [v3 enumerateNodesUsingBlock:v24];
  v15 = v3;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v20 objects:v31 count:16];
  if (v4)
  {
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [MEMORY[0x277CD9938] localIdentifierWithUUID:v7];
        v9 = [v26[5] objectForKeyedSubscript:v8];
        v10 = [v9 collection];
        v11 = [v10 ownerNodes];
        v12 = [v11 containsNode:v19];

        v13 = [MEMORY[0x277CCABB0] numberWithBool:v12];
        [*(a1 + 40) setObject:v13 forKeyedSubscript:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v31 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v25, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __71__PGPhotosChallengeMetricEvent__currentPetInferenceResultsForPetUUIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = a2;
  v4 = [v3 localIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (id)_groundTruthForCurrentPetInferenceFromQuestions:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    v8 = *MEMORY[0x277D3C8B8];
    v9 = *MEMORY[0x277D3C980];
    v10 = MEMORY[0x277CBEC28];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 additionalInfo];
        v14 = [v13 objectForKeyedSubscript:v8];

        v15 = [v12 state];
        v16 = v10;
        if (v15 == 2)
        {
          v17 = [v14 isEqualToString:v9];
          v16 = MEMORY[0x277CBEC38];
          if (!v17)
          {
            v16 = v10;
          }
        }

        v18 = v16;
        v19 = [v12 entityIdentifier];
        [v4 setObject:v18 forKeyedSubscript:v19];
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_gatherMetricsForPetQuestions:(id)a3 progressBlock:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _Block_copy(v7);
  v9 = 0.0;
  if (!v8 || (v10 = CFAbsoluteTimeGetCurrent(), v10 < 0.01))
  {
LABEL_7:
    buf = 0;
    *&v38 = &buf;
    *(&v38 + 1) = 0x3032000000;
    v39 = __Block_byref_object_copy__70470;
    v40 = __Block_byref_object_dispose__70471;
    v41 = MEMORY[0x277CBEBF8];
    workingContext = self->_workingContext;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __76__PGPhotosChallengeMetricEvent__gatherMetricsForPetQuestions_progressBlock___block_invoke;
    v32[3] = &unk_27888A5C0;
    v32[4] = &buf;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v32];
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__70470;
    v30 = __Block_byref_object_dispose__70471;
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = *(v38 + 40);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __76__PGPhotosChallengeMetricEvent__gatherMetricsForPetQuestions_progressBlock___block_invoke_2;
    v25[3] = &unk_27888A5E8;
    v25[4] = &v26;
    [v12 enumerateObjectsUsingBlock:v25];
    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"entityIdentifier", v27[5]];
    v14 = [v6 filteredArrayUsingPredicate:v13];

    [(PGPhotosChallengeMetricEvent *)self _deleteOutdatedPetQuestionsWithValidPetUUIDs:v27[5]];
    v15 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForCurrentPetInferenceFromQuestions:v14];
    if (v8)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v9 >= 0.01)
      {
        v24 = 0;
        v8[2](v8, &v24, 0.5);
        if (v24)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v33 = 67109378;
            v34 = 1728;
            v35 = 2080;
            v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v33, 0x12u);
          }

          goto LABEL_26;
        }

        v9 = Current;
      }
    }

    v17 = [v15 allKeys];
    v18 = [(PGPhotosChallengeMetricEvent *)self _currentPetInferenceResultsForPetUUIDs:v17];

    if (v8)
    {
      v19 = CFAbsoluteTimeGetCurrent();
      if (v19 - v9 >= 0.01)
      {
        v24 = 0;
        v8[2](v8, &v24, 0.9);
        if (v24)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_25:

LABEL_26:
            _Block_object_dispose(&v26, 8);

            _Block_object_dispose(&buf, 8);
            goto LABEL_27;
          }

          v33 = 67109378;
          v34 = 1731;
          v35 = 2080;
          v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v20 = MEMORY[0x277D86220];
LABEL_24:
          _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v33, 0x12u);
          goto LABEL_25;
        }

        v9 = v19;
      }
    }

    v21 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"pet" category:@"pet"];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v21];

    v22 = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [v22 evaluateWithGroundTruthResults:v15 andInferenceResults:v18];

    if (!v8)
    {
      goto LABEL_25;
    }

    if (CFAbsoluteTimeGetCurrent() - v9 < 0.01)
    {
      goto LABEL_25;
    }

    v24 = 0;
    v8[2](v8, &v24, 1.0);
    if (!v24 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    v33 = 67109378;
    v34 = 1735;
    v35 = 2080;
    v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v20 = MEMORY[0x277D86220];
    goto LABEL_24;
  }

  LOBYTE(v26) = 0;
  (v8)[2](v8, &v26, 0.0);
  if (v26 != 1)
  {
    v9 = v10;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x6AD04000202;
    LOWORD(v38) = 2080;
    *(&v38 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

LABEL_27:

  v23 = *MEMORY[0x277D85DE8];
}

void __76__PGPhotosChallengeMetricEvent__gatherMetricsForPetQuestions_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = [a2 graph];
  v3 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection nodesInGraph:v8];
  v4 = [v3 localIdentifiers];
  v5 = [v4 allObjects];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __76__PGPhotosChallengeMetricEvent__gatherMetricsForPetQuestions_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:a2];
  [v2 addObject:v3];
}

- (id)_ageCategoryInferenceResultsForAgeCategoryByPersonUUIDs:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__PGPhotosChallengeMetricEvent__ageCategoryInferenceResultsForAgeCategoryByPersonUUIDs___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __88__PGPhotosChallengeMetricEvent__ageCategoryInferenceResultsForAgeCategoryByPersonUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v27 = [a2 graph];
  v3 = [*(a1 + 32) metricsCache];
  v26 = [v3 activePersonUUIDByPersonUUID];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = a1;
  obj = *(a1 + 40);
  v4 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v29;
    *&v5 = 138412290;
    v23 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [v9 allKeys];
        v11 = [v10 firstObject];

        v12 = [v9 objectForKeyedSubscript:v11];
        v13 = [v12 unsignedIntegerValue];
        v14 = MEMORY[0x277CD9938];
        v15 = [v26 objectForKeyedSubscript:v11];
        v16 = [v14 localIdentifierWithUUID:v15];

        v17 = [v27 personNodeForPersonLocalIdentifier:v16];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 ageCategory] == v13;
          v20 = [MEMORY[0x277CCABB0] numberWithBool:v19];
          [*(v25 + 48) setObject:v20 forKeyedSubscript:v9];
        }

        else
        {
          v21 = +[PGLogging sharedLogging];
          v20 = [v21 loggingConnection];

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            v33 = v16;
            _os_log_error_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_ERROR, "Failed to find person node for person local identifier: '%@'", buf, 0xCu);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_groundTruthForAgeCategoryFromQuestions:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__PGPhotosChallengeMetricEvent__groundTruthForAgeCategoryFromQuestions___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __72__PGPhotosChallengeMetricEvent__groundTruthForAgeCategoryFromQuestions___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v25 = [a2 graph];
  v3 = [*(a1 + 32) metricsCache];
  v4 = [v3 activePersonUUIDByPersonUUID];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = a1;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v27;
    *&v6 = 138412290;
    v22 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 entityIdentifier];
        v12 = MEMORY[0x277CD9938];
        v13 = [v4 objectForKeyedSubscript:v11];
        v14 = [v12 localIdentifierWithUUID:v13];

        v15 = [v25 personNodeForPersonLocalIdentifier:v14];
        if (v15)
        {
          v16 = [v10 additionalInfo];
          v17 = [v16 objectForKeyedSubscript:@"ageCategory"];

          v30 = v11;
          v31 = v17;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          if ([v10 state] == 2)
          {
            v19 = MEMORY[0x277CBEC38];
          }

          else
          {
            v19 = MEMORY[0x277CBEC28];
          }

          [*(v24 + 48) setObject:v19 forKeyedSubscript:v18];
        }

        else
        {
          v20 = +[PGLogging sharedLogging];
          v17 = [v20 loggingConnection];

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v33 = v11;
            _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Failed to find person node for uuid: '%@'", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_gatherMetricsForAgeCategoryQuestions:(id)a3 progressBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForAgeCategoryFromQuestions:v6];
    v11 = [v10 allKeys];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.5);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 1640;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_26;
        }

        v8 = Current;
      }

      v13 = [(PGPhotosChallengeMetricEvent *)self _ageCategoryInferenceResultsForAgeCategoryByPersonUUIDs:v11];
      v14 = CFAbsoluteTimeGetCurrent();
      if (v14 - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.9);
        if (v19)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_25:

LABEL_26:
            goto LABEL_27;
          }

          *buf = 67109378;
          v21 = 1643;
          v22 = 2080;
          v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v15 = MEMORY[0x277D86220];
LABEL_24:
          _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_25;
        }

        v8 = v14;
      }
    }

    else
    {
      v13 = [(PGPhotosChallengeMetricEvent *)self _ageCategoryInferenceResultsForAgeCategoryByPersonUUIDs:v11];
    }

    v16 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"ageCategory" category:@"ageCategory"];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v16];

    v17 = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [v17 evaluateWithGroundTruthResults:v10 andInferenceResults:v13];

    if (!v7)
    {
      goto LABEL_25;
    }

    if (CFAbsoluteTimeGetCurrent() - v8 < 0.01)
    {
      goto LABEL_25;
    }

    v19 = 0;
    v7[2](v7, &v19, 1.0);
    if (!v19 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    *buf = 67109378;
    v21 = 1647;
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v15 = MEMORY[0x277D86220];
    goto LABEL_24;
  }

  v19 = 0;
  v7[2](v7, &v19, 0.0);
  if (v19 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v21 = 1636;
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_27:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_namingInferenceResultsForContactIdentifierByPersonUUIDs:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__PGPhotosChallengeMetricEvent__namingInferenceResultsForContactIdentifierByPersonUUIDs___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __89__PGPhotosChallengeMetricEvent__namingInferenceResultsForContactIdentifierByPersonUUIDs___block_invoke(id *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v20 = a2;
  v23 = [v20 graph];
  v2 = [a1[4] metricsCache];
  v3 = [v2 activePersonUUIDByPersonUUID];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a1[5];
  v4 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v4)
  {
    v5 = *v28;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [v7 allKeys];
        v9 = [v8 firstObject];

        v10 = [v7 objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = MEMORY[0x277CD9938];
          v12 = [v3 objectForKeyedSubscript:v9];
          v13 = [v11 localIdentifierWithUUID:v12];

          v14 = [v23 personNodeForPersonLocalIdentifier:v13];
          if (v14)
          {
            *&buf = 0;
            *(&buf + 1) = &buf;
            v32 = 0x2020000000;
            v33 = 0;
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __89__PGPhotosChallengeMetricEvent__namingInferenceResultsForContactIdentifierByPersonUUIDs___block_invoke_430;
            v24[3] = &unk_27888A598;
            p_buf = &buf;
            v25 = v10;
            [v14 enumerateContactSuggestionsSortedByConfidenceMatchingQuery:1 usingBlock:v24];
            v15 = [MEMORY[0x277CCABB0] numberWithBool:*(*(&buf + 1) + 24)];
            [a1[6] setObject:v15 forKeyedSubscript:v7];

            _Block_object_dispose(&buf, 8);
          }

          else
          {
            v17 = +[PGLogging sharedLogging];
            v18 = [v17 loggingConnection];

            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v9;
              _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Failed to find person node for person uuid: '%@'", &buf, 0xCu);
            }
          }
        }

        else
        {
          v16 = +[PGLogging sharedLogging];
          v13 = [v16 loggingConnection];

          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v9;
            _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "Contact identifier for person: %@ is nil", &buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v4);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __89__PGPhotosChallengeMetricEvent__namingInferenceResultsForContactIdentifierByPersonUUIDs___block_invoke_430(uint64_t a1, void *a2)
{
  v3 = [a2 contactIdentifier];
  *(*(*(a1 + 40) + 8) + 24) |= [v3 isEqualToString:*(a1 + 32)];
}

- (id)_groundTruthForNamingFromQuestions:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__PGPhotosChallengeMetricEvent__groundTruthForNamingFromQuestions___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __67__PGPhotosChallengeMetricEvent__groundTruthForNamingFromQuestions___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v25 = [a2 graph];
  v3 = [*(a1 + 32) metricsCache];
  v4 = [v3 activePersonUUIDByPersonUUID];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = a1;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v27;
    *&v6 = 138412290;
    v22 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 entityIdentifier];
        v12 = MEMORY[0x277CD9938];
        v13 = [v4 objectForKeyedSubscript:v11];
        v14 = [v12 localIdentifierWithUUID:v13];

        v15 = [v25 personNodeForPersonLocalIdentifier:v14];
        if (v15)
        {
          v16 = [v10 additionalInfo];
          v17 = [v16 objectForKeyedSubscript:@"contactIdentifier"];

          v30 = v11;
          v31 = v17;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          if ([v10 state] == 2)
          {
            v19 = MEMORY[0x277CBEC38];
          }

          else
          {
            v19 = MEMORY[0x277CBEC28];
          }

          [*(v24 + 48) setObject:v19 forKeyedSubscript:v18];
        }

        else
        {
          v20 = +[PGLogging sharedLogging];
          v17 = [v20 loggingConnection];

          if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            goto LABEL_14;
          }

          v18 = [v10 entityIdentifier];
          *buf = v22;
          v33 = v18;
          _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "Failed to find person node for entity identifier: '%@'", buf, 0xCu);
        }

LABEL_14:
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_gatherMetricsForNamingQuestions:(id)a3 progressBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForNamingFromQuestions:v6];
    v11 = [v10 allKeys];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.5);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 1562;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_26;
        }

        v8 = Current;
      }

      v13 = [(PGPhotosChallengeMetricEvent *)self _namingInferenceResultsForContactIdentifierByPersonUUIDs:v11];
      v14 = CFAbsoluteTimeGetCurrent();
      if (v14 - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.9);
        if (v19)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_25:

LABEL_26:
            goto LABEL_27;
          }

          *buf = 67109378;
          v21 = 1565;
          v22 = 2080;
          v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v15 = MEMORY[0x277D86220];
LABEL_24:
          _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_25;
        }

        v8 = v14;
      }
    }

    else
    {
      v13 = [(PGPhotosChallengeMetricEvent *)self _namingInferenceResultsForContactIdentifierByPersonUUIDs:v11];
    }

    v16 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"naming" category:@"naming"];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v16];

    v17 = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [v17 evaluateWithGroundTruthResults:v10 andInferenceResults:v13];

    if (!v7)
    {
      goto LABEL_25;
    }

    if (CFAbsoluteTimeGetCurrent() - v8 < 0.01)
    {
      goto LABEL_25;
    }

    v19 = 0;
    v7[2](v7, &v19, 1.0);
    if (!v19 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    *buf = 67109378;
    v21 = 1569;
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v15 = MEMORY[0x277D86220];
    goto LABEL_24;
  }

  v19 = 0;
  v7[2](v7, &v19, 0.0);
  if (v19 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v21 = 1558;
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_27:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_frequentLocationInferenceResultsForLocationByAssetIds:(id)a3 locationType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__70470;
  v19 = __Block_byref_object_dispose__70471;
  v20 = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__PGPhotosChallengeMetricEvent__frequentLocationInferenceResultsForLocationByAssetIds_locationType___block_invoke;
  v12[3] = &unk_27888A570;
  v9 = v6;
  v13 = v9;
  v14 = &v15;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __100__PGPhotosChallengeMetricEvent__frequentLocationInferenceResultsForLocationByAssetIds_locationType___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = [v15 graph];
  v3 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v16];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = [v7 allKeys];
        v9 = [v8 firstObject];

        v10 = [v7 objectForKeyedSubscript:v9];
        [v10 coordinate];
        v19 = 0;
        v20 = &v19;
        v21 = 0x2020000000;
        v22 = 0;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __100__PGPhotosChallengeMetricEvent__frequentLocationInferenceResultsForLocationByAssetIds_locationType___block_invoke_2;
        v18[3] = &unk_27888A548;
        v18[5] = v11;
        v18[6] = v12;
        v18[4] = &v19;
        [v3 enumerateIdentifiersAsCollectionsWithBlock:v18];
        v13 = [MEMORY[0x277CCABB0] numberWithBool:*(v20 + 24)];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v13 forKeyedSubscript:v7];

        _Block_object_dispose(&v19, 8);
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __100__PGPhotosChallengeMetricEvent__frequentLocationInferenceResultsForLocationByAssetIds_locationType___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 addressNodes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __100__PGPhotosChallengeMetricEvent__frequentLocationInferenceResultsForLocationByAssetIds_locationType___block_invoke_3;
  v5[3] = &unk_27888A520;
  v6 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  [v4 enumerateNodesUsingBlock:v5];
}

uint64_t __100__PGPhotosChallengeMetricEvent__frequentLocationInferenceResultsForLocationByAssetIds_locationType___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  [a2 coordinate];
  result = CLLocationCoordinate2DGetDistanceFrom();
  if (v6 < *MEMORY[0x277D3B200])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (id)_groundTruthForFrequentLocationFromQuestions:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v39 = [MEMORY[0x277CBEB38] dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v43;
    v8 = *MEMORY[0x277D3C8B8];
    v38 = *MEMORY[0x277D3C908];
    v36 = *MEMORY[0x277D3C928];
    v37 = *MEMORY[0x277D3C910];
    v35 = *MEMORY[0x277D3C938];
    *&v5 = 138412290;
    v34 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        if ([v10 state] == 2)
        {
          v11 = [v10 additionalInfo];
          v12 = [v11 objectForKeyedSubscript:v8];

          if (v12)
          {
            v13 = [v10 entityIdentifier];
            v14 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
            v15 = [v14 assetByAssetIdentifier];
            v16 = [v15 objectForKeyedSubscript:v13];

            if (v16)
            {
              v17 = [v10 additionalInfo];
              v18 = [v17 objectForKeyedSubscript:v8];

              v19 = [v10 additionalInfo];
              v20 = [v19 objectForKeyedSubscript:v38];

              v21 = [v10 additionalInfo];
              v22 = [v21 objectForKeyedSubscript:v37];

              v23 = objc_alloc(MEMORY[0x277CE41F8]);
              [v20 doubleValue];
              v25 = v24;
              [v22 doubleValue];
              v27 = [v23 initWithLatitude:v25 longitude:v26];
              v46 = v13;
              v47 = v27;
              v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
              if (([v18 isEqualToString:v36]& 1) != 0 || (v29 = [v18 isEqualToString:v35], v30 = MEMORY[0x277CBEC28], v29))
              {
                v30 = MEMORY[0x277CBEC38];
              }

              [v39 setObject:v30 forKeyedSubscript:v28];
            }

            else
            {
              v31 = +[PGLogging sharedLogging];
              v18 = [v31 loggingConnection];

              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = v34;
                v49 = v13;
                _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Failed to find asset with uuid: '%@'", buf, 0xCu);
              }
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v6);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v39;
}

- (void)_gatherMetricsForFrequentLocationQuestions:(id)a3 questionMetricType:(unsigned __int16)a4 progressBlock:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = _Block_copy(a5);
  if (!v8)
  {
    v10 = 0.0;
    goto LABEL_14;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v10 = 0.0;
  if (Current >= 0.01)
  {
    v11 = Current;
    v23 = 0;
    v8[2](v8, &v23, 0.0);
    if (v23 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v25 = 1463;
        v26 = 2080;
        v27 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
        v12 = MEMORY[0x277D86220];
LABEL_12:
        _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    v10 = v11;
  }

  v13 = CFAbsoluteTimeGetCurrent();
  if (v13 - v10 < 0.01)
  {
LABEL_14:
    v14 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForFrequentLocationFromQuestions:v7];
    v15 = [v14 allKeys];
    if (v8)
    {
      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v10 >= 0.01)
      {
        v23 = 0;
        v8[2](v8, &v23, 0.5);
        if (v23)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v25 = 1471;
            v26 = 2080;
            v27 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_33;
        }

        v10 = v16;
      }

      v17 = [(PGPhotosChallengeMetricEvent *)self _frequentLocationInferenceResultsForLocationByAssetIds:v15 locationType:0];
      v18 = CFAbsoluteTimeGetCurrent();
      if (v18 - v10 >= 0.01)
      {
        v23 = 0;
        v8[2](v8, &v23, 0.9);
        if (v23)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_32:

LABEL_33:
            goto LABEL_34;
          }

          *buf = 67109378;
          v25 = 1474;
          v26 = 2080;
          v27 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v19 = MEMORY[0x277D86220];
LABEL_31:
          _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_32;
        }

        v10 = v18;
      }
    }

    else
    {
      v17 = [(PGPhotosChallengeMetricEvent *)self _frequentLocationInferenceResultsForLocationByAssetIds:v15 locationType:0];
    }

    v20 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"frequentlocation" category:@"locationType"];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v20];

    v21 = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [v21 evaluateWithGroundTruthResults:v14 andInferenceResults:v17];

    if (!v8)
    {
      goto LABEL_32;
    }

    if (CFAbsoluteTimeGetCurrent() - v10 < 0.01)
    {
      goto LABEL_32;
    }

    v23 = 0;
    v8[2](v8, &v23, 1.0);
    if (!v23 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

    *buf = 67109378;
    v25 = 1478;
    v26 = 2080;
    v27 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v19 = MEMORY[0x277D86220];
    goto LABEL_31;
  }

  v23 = 0;
  v8[2](v8, &v23, 0.1);
  if (!v23)
  {
    v10 = v13;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v25 = 1467;
    v26 = 2080;
    v27 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v12 = MEMORY[0x277D86220];
    goto LABEL_12;
  }

LABEL_34:

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_reasonByAssetEntityIdentifierForHolidayQuestions:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    v8 = *MEMORY[0x277D3C940];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 additionalInfo];
        v12 = [v11 objectForKeyedSubscript:v8];
        v13 = v12;
        v14 = @"<missing holiday name>";
        if (v12)
        {
          v14 = v12;
        }

        v15 = v14;

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[holidayName:%@]", v15];

        v17 = [v10 entityIdentifier];
        [v4 setObject:v16 forKeyedSubscript:v17];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_holidayInferenceResultByEntityIdentifierForHolidayQuestions:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__PGPhotosChallengeMetricEvent__holidayInferenceResultByEntityIdentifierForHolidayQuestions___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __93__PGPhotosChallengeMetricEvent__holidayInferenceResultByEntityIdentifierForHolidayQuestions___block_invoke(id *a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [a1[4] metricsCache];
  v5 = [v4 momentUUIDByAssetIdentifier];

  v37 = v5;
  v34 = [v5 allValues];
  v35 = v3;
  v36 = [PGGraphMomentNodeCollection momentNodeAsCollectionByMomentUUIDForArrayOfMomentUUIDs:"momentNodeAsCollectionByMomentUUIDForArrayOfMomentUUIDs:inGraph:" inGraph:?];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = a1[5];
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    v40 = *MEMORY[0x277D3C940];
    do
    {
      v10 = 0;
      v38 = v8;
      do
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v41 + 1) + 8 * v10);
        v12 = [v11 entityIdentifier];
        v13 = [a1[4] metricsCache];
        v14 = [v13 assetByAssetIdentifier];
        v15 = [v14 objectForKeyedSubscript:v12];

        if (v15)
        {
          v16 = [v11 additionalInfo];
          v17 = [v16 objectForKeyedSubscript:v40];

          if (v17)
          {
            v18 = [v37 objectForKeyedSubscript:v12];
            v19 = [v36 objectForKeyedSubscript:v18];
            if ([v19 count])
            {
              v20 = [v19 celebratedHolidayNodes];
              v21 = [v20 holidayNames];
              v39 = v12;
              v22 = v19;
              v23 = v18;
              v24 = v9;
              v25 = a1;
              v26 = v6;
              v27 = [v21 containsObject:v17];

              v28 = v27;
              v6 = v26;
              a1 = v25;
              v9 = v24;
              v18 = v23;
              v19 = v22;
              v12 = v39;
              v29 = [MEMORY[0x277CCABB0] numberWithBool:v28];
              [a1[6] setObject:v29 forKeyedSubscript:v39];
            }

            else
            {
              v32 = +[PGLogging sharedLogging];
              v29 = [v32 loggingConnection];

              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v46 = v12;
                _os_log_error_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_ERROR, "Failed to find moment node for asset with local identifier: '%@'", buf, 0xCu);
              }
            }

            v8 = v38;
          }

          else
          {
            v31 = +[PGLogging sharedLogging];
            v18 = [v31 loggingConnection];

            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v46 = v12;
              _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Holiday Name for asset: %@ is NULL", buf, 0xCu);
            }
          }
        }

        else
        {
          v30 = +[PGLogging sharedLogging];
          v17 = [v30 loggingConnection];

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v46 = v12;
            _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Failed to find question with uuid: '%@'", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v8);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)_groundTruthForHolidayFromQuestions:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v24;
    *&v7 = 138412290;
    v21 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 entityIdentifier];
        v13 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        v14 = [v13 assetByAssetIdentifier];
        v15 = [v14 objectForKeyedSubscript:v12];

        if (v15)
        {
          if ([v11 state] == 2)
          {
            v16 = MEMORY[0x277CBEC38];
          }

          else
          {
            v16 = MEMORY[0x277CBEC28];
          }

          [v5 setObject:v16 forKeyedSubscript:v12];
        }

        else
        {
          v17 = +[PGLogging sharedLogging];
          v18 = [v17 loggingConnection];

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v28 = v12;
            _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Failed to find asset with uuid: '%@'", buf, 0xCu);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_gatherMetricsForHolidayQuestions:(id)a3 progressBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  if (!v7)
  {
    v11 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForHolidayFromQuestions:v6];
    v12 = [(PGPhotosChallengeMetricEvent *)self _holidayInferenceResultByEntityIdentifierForHolidayQuestions:v6];
    v13 = [(PGPhotosChallengeMetricEvent *)self _reasonByAssetEntityIdentifierForHolidayQuestions:v6];
    v9 = 0.0;
    goto LABEL_23;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = 0.0;
  if (Current < 0.01)
  {
LABEL_8:
    v11 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForHolidayFromQuestions:v6];
    v14 = CFAbsoluteTimeGetCurrent();
    if (v14 - v9 >= 0.01)
    {
      v19 = 0;
      v7[2](v7, &v19, 0.5);
      if (v19)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v21 = 1370;
          v22 = 2080;
          v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_31;
      }

      v9 = v14;
    }

    v12 = [(PGPhotosChallengeMetricEvent *)self _holidayInferenceResultByEntityIdentifierForHolidayQuestions:v6];
    v15 = CFAbsoluteTimeGetCurrent();
    if (v15 - v9 >= 0.01)
    {
      v19 = 0;
      v7[2](v7, &v19, 0.8);
      if (v19)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v21 = 1373;
          v22 = 2080;
          v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_30;
      }

      v9 = v15;
    }

    v13 = [(PGPhotosChallengeMetricEvent *)self _reasonByAssetEntityIdentifierForHolidayQuestions:v6];
    v16 = CFAbsoluteTimeGetCurrent();
    if (v16 - v9 >= 0.01)
    {
      v19 = 0;
      v7[2](v7, &v19, 0.9);
      if (v19)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v21 = 1376;
          v22 = 2080;
          v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

LABEL_29:

LABEL_30:
LABEL_31:

        goto LABEL_32;
      }

      v9 = v16;
    }

LABEL_23:
    v17 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"holiday" category:@"holiday"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v17 evaluateWithGroundTruthResults:v11 inferenceResults:v12 reasonResultByAssetIdentifier:v13];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v17];
    if (v7)
    {
      if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 1.0);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 1381;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_29;
  }

  v10 = Current;
  v19 = 0;
  v7[2](v7, &v19, 0.0);
  if (v19 != 1)
  {
    v9 = v10;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v21 = 1367;
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_32:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_gatherMetricsForTripKeyQuestions:(id)a3 progressBlock:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  v8 = 0.0;
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v39 = 0;
      v7[2](v7, &v39, 0.0);
      if (v39 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v42 = 1337;
          v43 = 2080;
          v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v10 = MEMORY[0x277D86220];
LABEL_33:
          _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_34;
        }

        goto LABEL_34;
      }

      v8 = Current;
    }
  }

  v11 = [v6 count];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v32 = 0;
    v33 = 0;
    v14 = 1.0 / v11;
    v15 = *v36;
    v31 = v6;
    v16 = 0.0;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        v16 = v14 + v16;
        if (v7)
        {
          v19 = CFAbsoluteTimeGetCurrent();
          if (v19 - v8 >= 0.01)
          {
            buf[0] = 0;
            v7[2](v7, buf, v16);
            if (buf[0])
            {
              v26 = 1;
              v8 = v19;
              goto LABEL_26;
            }

            v8 = v19;
          }
        }

        v20 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        v21 = [v20 tripKeyAssetIdentifiers];
        v22 = [v18 entityIdentifier];
        v23 = [v21 containsObject:v22];

        if (v23)
        {
          if ([v18 state] == 2)
          {
            ++v32;
          }

          else
          {
            v24 = [v18 state];
            v25 = v33;
            if (v24 == 3)
            {
              v25 = v33 + 1;
            }

            v33 = v25;
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v26 = 0;
LABEL_26:
    v6 = v31;
    v28 = v32;
    v27 = v33;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v26 = 0;
  }

  v29 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"tripKeyAsset" category:@"tripKeyAsset" truePositives:v28 falsePositives:v27 falseNegatives:0 trueNegatives:0];
  [(PGPhotosChallengeMetricEvent *)self setEvaluation:v29];

  if (v7)
  {
    if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
    {
      v39 = 0;
      v7[2](v7, &v39, 1.0);
      if (v39 | v26)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v42 = 1360;
          v43 = 2080;
          v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v10 = MEMORY[0x277D86220];
          goto LABEL_33;
        }
      }
    }
  }

LABEL_34:

  v30 = *MEMORY[0x277D85DE8];
}

- (id)_reasonResultsForPublicEventQuestions:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v26 = *v28;
    v25 = *MEMORY[0x277D3C998];
    v6 = *MEMORY[0x277D3C9A0];
    v7 = *MEMORY[0x277D3C988];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 additionalInfo];
        v11 = [v10 objectForKeyedSubscript:v25];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v6;
        }

        v14 = v13;

        v15 = [v9 entityIdentifier];
        v16 = [v9 additionalInfo];
        v17 = [v16 objectForKeyedSubscript:v7];

        if (v17)
        {
          v31 = v15;
          v32 = v17;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[publicEventSource:%@]", v14];
          [v24 setObject:v19 forKeyedSubscript:v18];
        }

        else
        {
          v20 = +[PGLogging sharedLogging];
          v18 = [v20 loggingConnection];

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = v15;
            _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Unexpected missing public event identifier for question with entity identifier %@", buf, 0xCu);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v5);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_publicEventInferenceResultsForPublicEventIdByAssetIds:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__PGPhotosChallengeMetricEvent__publicEventInferenceResultsForPublicEventIdByAssetIds___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __87__PGPhotosChallengeMetricEvent__publicEventInferenceResultsForPublicEventIdByAssetIds___block_invoke(id *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v21 = [v19 graph];
  v2 = [a1[4] metricsCache];
  v24 = [v2 momentUUIDByAssetIdentifier];

  v20 = [v24 allValues];
  v3 = [PGGraphMomentNodeCollection momentNodeAsCollectionByMomentUUIDForArrayOfMomentUUIDs:v20 inGraph:v21];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a1[5];
  v4 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v4)
  {
    v5 = *v29;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 allKeys];
        v9 = [v8 firstObject];

        v10 = [v7 objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = [v24 objectForKeyedSubscript:v9];
          v12 = [v3 objectForKeyedSubscript:v11];
          if ([v12 count])
          {
            *&buf = 0;
            *(&buf + 1) = &buf;
            v33 = 0x2020000000;
            v34 = 0;
            v13 = [v12 publicEventNodes];
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __87__PGPhotosChallengeMetricEvent__publicEventInferenceResultsForPublicEventIdByAssetIds___block_invoke_396;
            v25[3] = &unk_27888A4F8;
            v26 = v10;
            p_buf = &buf;
            [v13 enumerateNodesUsingBlock:v25];

            v14 = [MEMORY[0x277CCABB0] numberWithBool:*(*(&buf + 1) + 24)];
            [a1[6] setObject:v14 forKeyedSubscript:v7];

            _Block_object_dispose(&buf, 8);
          }

          else
          {
            v16 = +[PGLogging sharedLogging];
            v17 = [v16 loggingConnection];

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v9;
              _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Failed to find moment node for asset with local identifier: '%@'", &buf, 0xCu);
            }
          }
        }

        else
        {
          v15 = +[PGLogging sharedLogging];
          v11 = [v15 loggingConnection];

          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v9;
            _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "Public Event Identifier for asset: %@ is NULL", &buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v4);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __87__PGPhotosChallengeMetricEvent__publicEventInferenceResultsForPublicEventIdByAssetIds___block_invoke_396(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 muid];
  result = [*(a1 + 32) unsignedIntegerValue];
  if (v5 == result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (id)_groundTruthForPublicEventFromQuestions:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v28;
    *&v6 = 138412290;
    v24 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 entityIdentifier];
        v12 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        v13 = [v12 assetByAssetIdentifier];
        v14 = [v13 objectForKeyedSubscript:v11];

        if (v14)
        {
          v15 = MEMORY[0x277CCABB0];
          v16 = [v10 additionalInfo];
          v17 = [v16 objectForKeyedSubscript:@"publicEventMUID"];
          v18 = [v15 numberWithUnsignedInteger:{objc_msgSend(v17, "unsignedIntegerValue")}];

          v31 = v11;
          v32 = v18;
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
          if ([v10 state] == 2)
          {
            v20 = MEMORY[0x277CBEC38];
          }

          else
          {
            v20 = MEMORY[0x277CBEC28];
          }

          [v26 setObject:v20 forKeyedSubscript:v19];
        }

        else
        {
          v21 = +[PGLogging sharedLogging];
          v18 = [v21 loggingConnection];

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v34 = v11;
            _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Failed to find asset with uuid: '%@'", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v7);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)_gatherMetricsForPublicEventQuestions:(id)a3 progressBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForPublicEventFromQuestions:v6];
    v11 = [v10 allKeys];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.5);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 1238;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_32;
        }

        v8 = Current;
      }

      v13 = [(PGPhotosChallengeMetricEvent *)self _publicEventInferenceResultsForPublicEventIdByAssetIds:v11];
      v15 = CFAbsoluteTimeGetCurrent();
      if (v15 - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.6);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 1241;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_31;
        }

        v8 = v15;
      }

      v14 = [(PGPhotosChallengeMetricEvent *)self _reasonResultsForPublicEventQuestions:v6];
      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.7);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 1244;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_30:

LABEL_31:
LABEL_32:

          goto LABEL_33;
        }

        v8 = v16;
      }
    }

    else
    {
      v13 = [(PGPhotosChallengeMetricEvent *)self _publicEventInferenceResultsForPublicEventIdByAssetIds:v11];
      v14 = [(PGPhotosChallengeMetricEvent *)self _reasonResultsForPublicEventQuestions:v6];
    }

    v17 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"publicEvent" category:@"publicEvent"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v17 evaluateWithGroundTruthResults:v10 inferenceResults:v13 reasonResultByAssetIdentifier:v14];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v17];
    if (v7)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 1.0);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 1250;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_30;
  }

  v19 = 0;
  v7[2](v7, &v19, 0.0);
  if (v19 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v21 = 1234;
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_33:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_businessInferenceResultsForBusinessIdByAssetIds:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__PGPhotosChallengeMetricEvent__businessInferenceResultsForBusinessIdByAssetIds___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __81__PGPhotosChallengeMetricEvent__businessInferenceResultsForBusinessIdByAssetIds___block_invoke(id *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v21 = [v19 graph];
  v2 = [a1[4] metricsCache];
  v24 = [v2 momentUUIDByAssetIdentifier];

  v20 = [v24 allValues];
  v3 = [PGGraphMomentNodeCollection momentNodeAsCollectionByMomentUUIDForArrayOfMomentUUIDs:v20 inGraph:v21];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a1[5];
  v4 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v4)
  {
    v5 = *v29;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 allKeys];
        v9 = [v8 firstObject];

        v10 = [v7 objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = [v24 objectForKeyedSubscript:v9];
          v12 = [v3 objectForKeyedSubscript:v11];
          if ([v12 count])
          {
            *&buf = 0;
            *(&buf + 1) = &buf;
            v33 = 0x2020000000;
            v34 = 0;
            v13 = [v12 businessNodes];
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __81__PGPhotosChallengeMetricEvent__businessInferenceResultsForBusinessIdByAssetIds___block_invoke_387;
            v25[3] = &unk_27888A4A8;
            v26 = v10;
            p_buf = &buf;
            [v13 enumerateNodesUsingBlock:v25];

            v14 = [MEMORY[0x277CCABB0] numberWithBool:*(*(&buf + 1) + 24)];
            [a1[6] setObject:v14 forKeyedSubscript:v7];

            _Block_object_dispose(&buf, 8);
          }

          else
          {
            v16 = +[PGLogging sharedLogging];
            v17 = [v16 loggingConnection];

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v9;
              _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Failed to find moment node for asset with local identifier: '%@'", &buf, 0xCu);
            }
          }
        }

        else
        {
          v15 = +[PGLogging sharedLogging];
          v11 = [v15 loggingConnection];

          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v9;
            _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "Business Identifier for asset: %@ is NULL", &buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v4);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __81__PGPhotosChallengeMetricEvent__businessInferenceResultsForBusinessIdByAssetIds___block_invoke_387(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 UUID];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (id)_groundTruthForBusinessFromQuestions:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v26;
    *&v7 = 138412290;
    v23 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 entityIdentifier];
        v13 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        v14 = [v13 assetByAssetIdentifier];
        v15 = [v14 objectForKeyedSubscript:v12];

        if (v15)
        {
          v16 = [v11 additionalInfo];
          v17 = [v16 objectForKeyedSubscript:@"businessUUID"];

          v29 = v12;
          v30 = v17;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          if ([v11 state] == 2)
          {
            v19 = MEMORY[0x277CBEC38];
          }

          else
          {
            v19 = MEMORY[0x277CBEC28];
          }

          [v5 setObject:v19 forKeyedSubscript:v18];
        }

        else
        {
          v20 = +[PGLogging sharedLogging];
          v17 = [v20 loggingConnection];

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            v32 = v12;
            _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Failed to find asset with uuid: '%@'", buf, 0xCu);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_gatherMetricsForBusinessQuestions:(id)a3 progressBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForBusinessFromQuestions:v6];
    v11 = [v10 allKeys];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.5);
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v21 = 1160;
            v22 = 2080;
            v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_26;
        }

        v8 = Current;
      }

      v13 = [(PGPhotosChallengeMetricEvent *)self _businessInferenceResultsForBusinessIdByAssetIds:v11];
      v14 = CFAbsoluteTimeGetCurrent();
      if (v14 - v8 >= 0.01)
      {
        v19 = 0;
        v7[2](v7, &v19, 0.9);
        if (v19)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_25:

LABEL_26:
            goto LABEL_27;
          }

          *buf = 67109378;
          v21 = 1163;
          v22 = 2080;
          v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v15 = MEMORY[0x277D86220];
LABEL_24:
          _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_25;
        }

        v8 = v14;
      }
    }

    else
    {
      v13 = [(PGPhotosChallengeMetricEvent *)self _businessInferenceResultsForBusinessIdByAssetIds:v11];
    }

    v16 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"business" category:@"business"];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v16];

    v17 = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [v17 evaluateWithGroundTruthResults:v10 andInferenceResults:v13];

    if (!v7)
    {
      goto LABEL_25;
    }

    if (CFAbsoluteTimeGetCurrent() - v8 < 0.01)
    {
      goto LABEL_25;
    }

    v19 = 0;
    v7[2](v7, &v19, 1.0);
    if (!v19 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    *buf = 67109378;
    v21 = 1167;
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v15 = MEMORY[0x277D86220];
    goto LABEL_24;
  }

  v19 = 0;
  v7[2](v7, &v19, 0.0);
  if (v19 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v21 = 1156;
    v22 = 2080;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_27:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_relationshipInferenceResultsForQuestionMetricType:(unsigned __int16)a3 personUUIDs:(id)a4 useGraphInference:(BOOL)a5
{
  v8 = a4;
  v9 = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __113__PGPhotosChallengeMetricEvent__relationshipInferenceResultsForQuestionMetricType_personUUIDs_useGraphInference___block_invoke;
  v16[3] = &unk_27888A480;
  v16[4] = self;
  v17 = v8;
  v19 = a3;
  v20 = a5;
  v11 = v9;
  v18 = v11;
  v12 = v8;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v16];
  v13 = v18;
  v14 = v11;

  return v11;
}

void __113__PGPhotosChallengeMetricEvent__relationshipInferenceResultsForQuestionMetricType_personUUIDs_useGraphInference___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [*(a1 + 32) metricsCache];
  v5 = [v4 activePersonUUIDByPersonUUID];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = a1;
  obj = *(a1 + 40);
  v26 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v26)
  {
    v7 = *v28;
    v8 = 0x277CD9000uLL;
    *&v6 = 138412290;
    v23 = v6;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = *(v8 + 2360);
        v12 = [v5 objectForKeyedSubscript:{v10, v23}];
        v13 = [v11 localIdentifierWithUUID:v12];

        v14 = [v3 personNodeForPersonLocalIdentifier:v13];
        if (v14)
        {
          v15 = [*(v25 + 32) _relationshipInferenceResultForPersonNode:v14 questionMetricType:*(v25 + 56) useGraphInference:*(v25 + 58)];
          v16 = [MEMORY[0x277CCABB0] numberWithBool:v15];
          [*(v25 + 48) setObject:v16 forKeyedSubscript:v10];
        }

        else
        {
          v17 = v8;
          v18 = v7;
          v19 = v5;
          v20 = v3;
          v21 = +[PGLogging sharedLogging];
          v16 = [v21 loggingConnection];

          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            v32 = v10;
            _os_log_error_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_ERROR, "Failed to find person node for person with UUID: '%@'", buf, 0xCu);
          }

          v3 = v20;
          v5 = v19;
          v7 = v18;
          v8 = v17;
        }
      }

      v26 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v26);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_relatonshipInferenceResultForPersonNode:(id)a3 questionMetricType:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  switch(v4)
  {
    case 'N':
      v7 = [v5 isInferredMemberOfMyFamily];
      goto LABEL_16;
    case 'O':
      v7 = [v5 isMyInferredFriend];
      goto LABEL_16;
    case 'P':
      v7 = [v5 isMyInferredCoworker];
      goto LABEL_16;
    case 'Q':
      v7 = [v5 isMyInferredPartner];
      goto LABEL_16;
    case 'R':
      v7 = [v5 isMyInferredParent];
      goto LABEL_16;
    case 'S':
      v7 = [v5 isMyInferredSibling];
      goto LABEL_16;
    case 'T':
      v7 = [v5 isMyInferredChild];
      goto LABEL_16;
    case 'U':
      v8 = [v5 graph];
      v9 = [v8 meNodeWithFallbackInferredMeNode];
      v10 = [v6 isEqualToNode:v9];

      break;
    case 'V':
      v7 = [v5 isMyInferredMother];
      goto LABEL_16;
    case 'W':
      v7 = [v5 isMyInferredFather];
      goto LABEL_16;
    case 'X':
      v7 = [v5 isMyInferredSon];
      goto LABEL_16;
    case 'Y':
      v7 = [v5 isMyInferredDaughter];
      goto LABEL_16;
    case 'Z':
      v7 = [v5 isMyInferredBrother];
      goto LABEL_16;
    case '[':
      v7 = [v5 isMyInferredSister];
LABEL_16:
      v10 = v7;
      break;
    default:
      v10 = 0;
      break;
  }

  return v10;
}

- (unint64_t)_relationshipTagFromQuestionMetricType:(unsigned __int16)a3
{
  if ((a3 - 93) > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_22F78CEE8[(a3 - 93)];
  }
}

- (void)_gatherMetricsForRelationshipQuestions:(id)a3 questionMetricType:(unsigned __int16)a4 progressBlock:(id)a5 useGraphInference:(BOOL)a6
{
  v41 = a6;
  v43 = a4;
  v78 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v42 = a5;
  v7 = 0.0;
  v46 = _Block_copy(v42);
  if (!v46 || (v8 = CFAbsoluteTimeGetCurrent(), v8 < 0.01))
  {
LABEL_7:
    v48 = [objc_opt_class() relationshipLabelFromRelationshipQuestionMetricType:v43];
    if (!v48)
    {
      v19 = +[PGLogging sharedLogging];
      oslog = [v19 loggingConnection];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v43;
        _os_log_error_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_ERROR, "Unhandled Relationship Type: %d", &buf, 8u);
      }

      goto LABEL_62;
    }

    oslog = [MEMORY[0x277CBEB18] array];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v9 = v44;
    v10 = [v9 countByEnumeratingWithState:&v64 objects:v77 count:16];
    if (v10)
    {
      v11 = *v65;
      v12 = *MEMORY[0x277D3C9B0];
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v65 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v64 + 1) + 8 * i);
          v15 = [v14 additionalInfo];
          v16 = [v15 objectForKeyedSubscript:v12];
          v17 = [v16 isEqualToString:v48];

          if (v17)
          {
            if ([v14 entityType] == 4)
            {
              v18 = [v14 state] == 3;
              goto LABEL_22;
            }

            [oslog addObject:v14];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v64 objects:v77 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_22:

    if (v46)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v7 >= 0.01)
      {
        LOBYTE(v58) = 0;
        v46[2](v46, &v58, 0.1);
        if (v58)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            buf = 0x3D704000202;
            LOWORD(v73) = 2080;
            *(&v73 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
          }

          goto LABEL_62;
        }

        v7 = Current;
      }
    }

    buf = 0;
    *&v73 = &buf;
    *(&v73 + 1) = 0x3032000000;
    v74 = __Block_byref_object_copy__70470;
    v75 = __Block_byref_object_dispose__70471;
    v76 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__70470;
    v62 = __Block_byref_object_dispose__70471;
    v63 = 0;
    if (v18)
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
      workingContext = self->_workingContext;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __122__PGPhotosChallengeMetricEvent__gatherMetricsForRelationshipQuestions_questionMetricType_progressBlock_useGraphInference___block_invoke;
      v50[3] = &unk_27888A458;
      v24 = v21;
      v51 = v24;
      v52 = self;
      v56 = v43;
      v57 = v41;
      v25 = v22;
      v53 = v25;
      p_buf = &buf;
      v55 = &v58;
      [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v50];
      if (v46 && (v26 = CFAbsoluteTimeGetCurrent(), v26 - v7 >= 0.01))
      {
        v49 = 0;
        (v46)[2](v46, &v49, 0.5);
        if (v49)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v68 = 67109378;
            v69 = 1008;
            v70 = 2080;
            v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v68, 0x12u);
          }

          v28 = 0;
          v27 = 1;
        }

        else
        {
          v27 = 0;
          v28 = 1;
        }
      }

      else
      {
        v27 = 0;
        v28 = 1;
        v26 = v7;
      }

      if ((v28 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_52;
    }

    v29 = [(PGPhotosChallengeMetricEvent *)self _groundTruthByPersonUUIDFromQuestions:oslog];
    v30 = *(v73 + 40);
    *(v73 + 40) = v29;

    v31 = [*(v73 + 40) allKeys];
    if (v46)
    {
      v32 = CFAbsoluteTimeGetCurrent();
      if (v32 - v7 >= 0.01)
      {
        v49 = 0;
        (v46)[2](v46, &v49, 0.5);
        if (v49)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v68 = 67109378;
            v69 = 1013;
            v70 = 2080;
            v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v33 = MEMORY[0x277D86220];
LABEL_59:
            _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v68, 0x12u);
            goto LABEL_60;
          }

          goto LABEL_60;
        }

        v7 = v32;
      }
    }

    v34 = [(PGPhotosChallengeMetricEvent *)self _relationshipInferenceResultsForQuestionMetricType:v43 personUUIDs:v31 useGraphInference:v41];
    v35 = v59[5];
    v59[5] = v34;

    if (v46)
    {
      v36 = CFAbsoluteTimeGetCurrent();
      if (v36 - v7 >= 0.01)
      {
        v49 = 0;
        (v46)[2](v46, &v49, 0.9);
        if (v49)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v68 = 67109378;
            v69 = 1017;
            v70 = 2080;
            v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v33 = MEMORY[0x277D86220];
            goto LABEL_59;
          }

LABEL_60:

LABEL_61:
          _Block_object_dispose(&v58, 8);

          _Block_object_dispose(&buf, 8);
LABEL_62:

          goto LABEL_63;
        }

        v7 = v36;
      }
    }

    v27 = 0;
    v26 = v7;
LABEL_52:
    v37 = @"relationshipTag";
    if (v41)
    {
      v37 = @"relationship";
    }

    v31 = v37;
    v38 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:v31 category:v48];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v38];

    v39 = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [v39 evaluateWithGroundTruthResults:*(v73 + 40) andInferenceResults:v59[5]];

    if (!v46)
    {
      goto LABEL_60;
    }

    if (CFAbsoluteTimeGetCurrent() - v26 < 0.01)
    {
      goto LABEL_60;
    }

    v49 = 0;
    (v46)[2](v46, &v49, 1.0);
    if (!(v49 | v27) || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_60;
    }

    v68 = 67109378;
    v69 = 1023;
    v70 = 2080;
    v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v33 = MEMORY[0x277D86220];
    goto LABEL_59;
  }

  LOBYTE(v58) = 0;
  v46[2](v46, &v58, 0.0);
  if (v58 != 1)
  {
    v7 = v8;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x3C004000202;
    LOWORD(v73) = 2080;
    *(&v73 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

LABEL_63:

  v40 = *MEMORY[0x277D85DE8];
}

void __122__PGPhotosChallengeMetricEvent__gatherMetricsForRelationshipQuestions_questionMetricType_progressBlock_useGraphInference___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:v3];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __122__PGPhotosChallengeMetricEvent__gatherMetricsForRelationshipQuestions_questionMetricType_progressBlock_useGraphInference___block_invoke_2;
  v8[3] = &unk_27888A430;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v12 = *(a1 + 72);
  v13 = *(a1 + 74);
  v11 = v7;
  [v4 enumerateNodesUsingBlock:v8];
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 48));
}

void __122__PGPhotosChallengeMetricEvent__gatherMetricsForRelationshipQuestions_questionMetricType_progressBlock_useGraphInference___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CD9938];
  v9 = v3;
  v5 = [v3 localIdentifier];
  v6 = [v4 uuidFromLocalIdentifier:v5];

  if (v6)
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v6];
    v7 = [*(a1 + 40) _relationshipInferenceResultForPersonNode:v9 questionMetricType:*(a1 + 56) useGraphInference:*(a1 + 58)];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    [*(a1 + 48) setObject:v8 forKeyedSubscript:v6];
  }
}

- (id)_personActivityMeaningInferenceResultsForPersonActivityMeaningLabel:(id)a3 assetIds:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __109__PGPhotosChallengeMetricEvent__personActivityMeaningInferenceResultsForPersonActivityMeaningLabel_assetIds___block_invoke;
  v16[3] = &unk_27888A408;
  v16[4] = self;
  v17 = v7;
  v18 = v6;
  v10 = v8;
  v19 = v10;
  v11 = v6;
  v12 = v7;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

void __109__PGPhotosChallengeMetricEvent__personActivityMeaningInferenceResultsForPersonActivityMeaningLabel_assetIds___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [*(a1 + 32) metricsCache];
  v5 = [v4 momentUUIDByAssetIdentifier];

  v29 = v5;
  v6 = [v5 allValues];
  v25 = v3;
  v7 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v6 inGraph:v3];

  v24 = v7;
  [v7 momentNodeByMomentUUID];
  v28 = v27 = a1;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(a1 + 40);
  v8 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v29 objectForKeyedSubscript:v12];
        v14 = [v28 objectForKeyedSubscript:v13];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 collection];
          v17 = +[PGGraphMomentNode personActivityMeaningOfMoment];
          v18 = [(MANodeCollection *)PGGraphPersonActivityMeaningNodeCollection nodesRelatedToNodes:v16 withRelation:v17];
          v19 = [v18 personActivityMeaningLabels];

          v20 = [v19 containsObject:*(v27 + 48)];
          v21 = [MEMORY[0x277CCABB0] numberWithBool:v20];
          [*(v27 + 56) setObject:v21 forKeyedSubscript:v12];
        }

        else
        {
          v22 = +[PGLogging sharedLogging];
          v19 = [v22 loggingConnection];

          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v35 = v12;
            _os_log_error_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_ERROR, "Failed to find moment node for asset with local identifier: '%@'", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v9);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_meaningInferenceResultsForMeaningLabel:(id)a3 assetIds:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__PGPhotosChallengeMetricEvent__meaningInferenceResultsForMeaningLabel_assetIds___block_invoke;
  v16[3] = &unk_27888A408;
  v16[4] = self;
  v17 = v7;
  v18 = v6;
  v10 = v8;
  v19 = v10;
  v11 = v6;
  v12 = v7;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

void __81__PGPhotosChallengeMetricEvent__meaningInferenceResultsForMeaningLabel_assetIds___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [*(a1 + 32) metricsCache];
  v5 = [v4 momentUUIDByAssetIdentifier];

  v25 = v5;
  v6 = [v5 allValues];
  v23 = v3;
  v7 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v6 inGraph:v3];

  v22 = v7;
  v8 = [v7 momentNodeByMomentUUID];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 40);
  v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [v25 objectForKeyedSubscript:v13];
        v15 = [v8 objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 meaningLabelsIncludingParents];
          v18 = [v17 containsObject:*(a1 + 48)];
          v19 = [MEMORY[0x277CCABB0] numberWithBool:v18];
          [*(a1 + 56) setObject:v19 forKeyedSubscript:v13];
        }

        else
        {
          v20 = +[PGLogging sharedLogging];
          v17 = [v20 loggingConnection];

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31 = v13;
            _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Failed to find moment node for asset with local identifier: '%@'", buf, 0xCu);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v10);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_meaningLabelsOfMomentNode:(id)a3 forMeaningLabel:(id)a4 isEventLabelingMetricEvent:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (!v5)
  {
    if (!+[PGEventLabelingConfiguration isEventLabelingEnabled](PGEventLabelingConfiguration, "isEventLabelingEnabled") || !+[PGEventLabelingConfiguration usePrimaryMeaningDomainForEventLabelingMeanings])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([(PGEventLabelingConfiguration *)self->_eventLabelingConfiguration useEventLabelingToInferWithMeaningLabel:v9])
  {
    if (+[PGEventLabelingConfiguration usePrimaryMeaningDomainForEventLabelingMeanings])
    {
LABEL_8:
      v10 = [v8 meaningLabelsIncludingParents];
      goto LABEL_9;
    }

LABEL_7:
    v10 = [v8 alternativeMeaningLabelsIncludingParents];
LABEL_9:
    v11 = v10;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)_meaningInferenceResultsForMeaningLabel:(id)a3 momentUUIDs:(id)a4 isEventLabelingMetricEvent:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  if (!v5 || +[PGEventLabelingConfiguration isEventLabelingEnabled])
  {
    workingContext = self->_workingContext;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __111__PGPhotosChallengeMetricEvent__meaningInferenceResultsForMeaningLabel_momentUUIDs_isEventLabelingMetricEvent___block_invoke;
    v16[3] = &unk_27888A3E0;
    v17 = v9;
    v18 = self;
    v19 = v8;
    v21 = v5;
    v12 = v10;
    v20 = v12;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v16];
    v13 = v20;
    v14 = v12;
  }

  return v10;
}

void __111__PGPhotosChallengeMetricEvent__meaningInferenceResultsForMeaningLabel_momentUUIDs_isEventLabelingMetricEvent___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v17 = [v18 graph];
  v16 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:*(a1 + 32) inGraph:?];
  v3 = [v16 momentNodeByMomentUUID];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v3 objectForKeyedSubscript:v8];
        if (v10)
        {
          v11 = [*(a1 + 40) _meaningLabelsOfMomentNode:v10 forMeaningLabel:*(a1 + 48) isEventLabelingMetricEvent:*(a1 + 64)];
          v12 = [v11 containsObject:*(a1 + 48)];
          if ([*(a1 + 48) isEqualToString:PGExhaustiveMomentLabellingNoneOfTheseAnswerString])
          {
            v12 = [v11 count]== 0;
          }

          v13 = [MEMORY[0x277CCABB0] numberWithBool:v12];
          [*(a1 + 56) setObject:v13 forKeyedSubscript:v8];
        }

        else
        {
          v14 = +[PGLogging sharedLogging];
          v11 = [v14 loggingConnection];

          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v8;
            _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "Failed to find moment node for moment with uuid: '%@'", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)gatherMetricsWithProgressBlock:(id)a3
{
  v9 = a3;
  v4 = [(PGPhotosChallengeMetricEventFetchHelper *)self->_metricsCache questionsForQuestionMetricType:self->_questionMetricType];
  if ([v4 count])
  {
    switch(self->_questionMetricType)
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
        [PGPhotosChallengeMetricEvent _gatherMetricsForMeaningQuestions:"_gatherMetricsForMeaningQuestions:questionMetricType:progressBlock:" questionMetricType:v4 progressBlock:?];
        break;
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x33u:
        v5 = self;
        v6 = v4;
        goto LABEL_6;
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x3Bu:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
        v5 = self;
        v6 = v4;
LABEL_6:
        [PGPhotosChallengeMetricEvent _gatherMetricsForExhaustiveMomentLabelingQuestions:v5 questionMetricType:"_gatherMetricsForExhaustiveMomentLabelingQuestions:questionMetricType:isEventLabelingMetricEvent:progressBlock:" isEventLabelingMetricEvent:v6 progressBlock:?];
        break;
      case 0x4Eu:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x52u:
      case 0x53u:
      case 0x54u:
      case 0x55u:
      case 0x56u:
      case 0x57u:
      case 0x58u:
      case 0x59u:
      case 0x5Au:
      case 0x5Bu:
      case 0x5Cu:
        v7 = self;
        v8 = v4;
        goto LABEL_10;
      case 0x5Du:
      case 0x5Eu:
      case 0x5Fu:
      case 0x60u:
      case 0x61u:
      case 0x62u:
      case 0x63u:
      case 0x64u:
      case 0x65u:
      case 0x66u:
      case 0x67u:
      case 0x68u:
      case 0x69u:
      case 0x6Au:
        v7 = self;
        v8 = v4;
LABEL_10:
        [PGPhotosChallengeMetricEvent _gatherMetricsForRelationshipQuestions:v7 questionMetricType:"_gatherMetricsForRelationshipQuestions:questionMetricType:progressBlock:useGraphInference:" progressBlock:v8 useGraphInference:?];
        break;
      case 0x6Bu:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForBusinessQuestions:v4 progressBlock:v9];
        break;
      case 0x6Cu:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForPublicEventQuestions:v4 progressBlock:v9];
        break;
      case 0x6Du:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForTripKeyQuestions:v4 progressBlock:v9];
        break;
      case 0x6Eu:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForHolidayQuestions:v4 progressBlock:v9];
        break;
      case 0x6Fu:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForFrequentLocationQuestions:v4 questionMetricType:111 progressBlock:v9];
        break;
      case 0x70u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForNamingQuestions:v4 progressBlock:v9];
        break;
      case 0x71u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForAgeCategoryQuestions:v4 progressBlock:v9];
        break;
      case 0x72u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForPetQuestions:v4 progressBlock:v9];
        break;
      case 0x73u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForPetKnowledgeQuestions:v4 progressBlock:v9];
        break;
      case 0x74u:
      case 0x78u:
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
      case 0x7Du:
      case 0x7Eu:
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
      case 0x82u:
      case 0x83u:
      case 0x84u:
      case 0x85u:
      case 0x86u:
      case 0x87u:
      case 0x88u:
      case 0x89u:
      case 0x8Au:
      case 0x8Bu:
      case 0x8Cu:
      case 0x8Du:
      case 0x8Eu:
      case 0x8Fu:
      case 0x90u:
      case 0x91u:
      case 0x92u:
      case 0x93u:
      case 0x94u:
      case 0x95u:
      case 0x96u:
      case 0x97u:
      case 0x98u:
      case 0x99u:
      case 0x9Au:
      case 0x9Bu:
      case 0x9Cu:
      case 0x9Du:
      case 0x9Eu:
      case 0x9Fu:
      case 0xA0u:
      case 0xA1u:
      case 0xA2u:
      case 0xA3u:
      case 0xA4u:
      case 0xA5u:
      case 0xA6u:
      case 0xA7u:
      case 0xA8u:
      case 0xA9u:
      case 0xAAu:
      case 0xABu:
      case 0xACu:
      case 0xADu:
      case 0xAEu:
      case 0xAFu:
      case 0xB0u:
      case 0xB1u:
      case 0xB2u:
      case 0xB3u:
      case 0xB4u:
      case 0xB5u:
      case 0xB6u:
      case 0xB7u:
      case 0xB8u:
      case 0xB9u:
      case 0xBAu:
      case 0xBBu:
      case 0xBCu:
      case 0xBDu:
      case 0xBEu:
      case 0xBFu:
      case 0xC0u:
      case 0xC1u:
      case 0xC2u:
      case 0xC3u:
        [PGPhotosChallengeMetricEvent _gatherMetricsForMemoryQuestions:"_gatherMetricsForMemoryQuestions:questionMetricType:progressBlock:" questionMetricType:v4 progressBlock:?];
        break;
      case 0x75u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForMemoryMusicQuestions:v4 progressBlock:v9];
        break;
      case 0xC4u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForSyndicatedAssetsQuestions:v4 progressBlock:v9];
        break;
      case 0xC5u:
      case 0xC6u:
      case 0xC7u:
      case 0xC8u:
      case 0xC9u:
      case 0xCAu:
        [PGPhotosChallengeMetricEvent _gatherMetricsForPersonActivityMeaningQuestions:"_gatherMetricsForPersonActivityMeaningQuestions:questionMetricType:progressBlock:" questionMetricType:v4 progressBlock:?];
        break;
      case 0xCBu:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForSharedLibraryAssetsQuestions:v4 progressBlock:v9];
        break;
      case 0xCCu:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForSharedLibraryStartQuestions:v4 progressBlock:v9];
        break;
      case 0xCDu:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForCameraLibrarySwitchQuestions:v4 progressBlock:v9];
        break;
      case 0xCEu:
      case 0xCFu:
      case 0xD0u:
      case 0xD1u:
        [PGPhotosChallengeMetricEvent _gatherMetricsForWallpaperQuestions:"_gatherMetricsForWallpaperQuestions:questionMetricType:progressBlock:" questionMetricType:v4 progressBlock:?];
        break;
      case 0xD2u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForTripTitlingQuestions:v4 progressBlock:v9];
        break;
      case 0xD3u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForHighlightTitlingQuestions:v4 progressBlock:v9];
        break;
      case 0xD4u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForLocationRepresentativeAssetQuestions:v4 questionMetricType:212 progressBlock:v9];
        break;
      case 0xD5u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForExternalAssetRelevanceQuestions:v4 questionMetricType:213 progressBlock:v9];
        break;
      case 0xD6u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForStoryPromptSuggestionsQuestions:v4 progressBlock:v9];
        break;
      default:
        break;
    }
  }
}

void __97__PGPhotosChallengeMetricEvent_initWithWorkingContext_questionMetricType_metricEventFetchHelper___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 graph];
  v3 = +[PGCuratedLibraryIntelligenceMetricEvent librarySizeRangeDescriptionForLibrarySizeRange:](PGCuratedLibraryIntelligenceMetricEvent, "librarySizeRangeDescriptionForLibrarySizeRange:", [v6 librarySizeRange]);
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  *(v4 + 72) = v3;
}

+ (id)stringFromQuestionMetricType:(unsigned __int16)a3
{
  if (a3 > 0xD7u)
  {
    return 0;
  }

  else
  {
    return off_27888ABB8[a3];
  }
}

+ (id)questionEntityTypesFromQuestionMetricType:(unsigned __int16)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  result = &unk_284486F30;
  switch(a3)
  {
    case 0u:
    case 0xD7u:
      v6 = +[PGLogging sharedLogging];
      v7 = [v6 loggingConnection];

      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 67109120;
        v11 = v3;
        _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Unhandled MetricType %d", &v10, 8u);
      }

      result = &unk_284487068;
      break;
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x6Bu:
    case 0x6Cu:
    case 0x6Eu:
    case 0x6Fu:
    case 0x76u:
    case 0x77u:
    case 0xC5u:
    case 0xC6u:
    case 0xC7u:
    case 0xC8u:
    case 0xC9u:
    case 0xCAu:
    case 0xCEu:
    case 0xCFu:
    case 0xD0u:
    case 0xD1u:
    case 0xD4u:
      break;
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
    case 0x3Cu:
    case 0x3Du:
    case 0x3Eu:
    case 0x3Fu:
    case 0x40u:
    case 0x41u:
    case 0x42u:
    case 0x43u:
    case 0x44u:
    case 0x45u:
    case 0x46u:
    case 0x47u:
    case 0x48u:
    case 0x49u:
    case 0x4Au:
    case 0x4Bu:
    case 0x4Cu:
    case 0x4Du:
      result = &unk_284486F48;
      break;
    case 0x4Eu:
    case 0x4Fu:
    case 0x50u:
    case 0x51u:
    case 0x52u:
    case 0x53u:
    case 0x54u:
    case 0x55u:
    case 0x56u:
    case 0x57u:
    case 0x58u:
    case 0x59u:
    case 0x5Au:
    case 0x5Bu:
    case 0x5Cu:
    case 0x5Du:
    case 0x5Eu:
    case 0x5Fu:
    case 0x60u:
    case 0x61u:
    case 0x62u:
    case 0x63u:
    case 0x64u:
    case 0x65u:
    case 0x66u:
    case 0x67u:
    case 0x68u:
    case 0x69u:
    case 0x6Au:
      result = &unk_284486F60;
      break;
    case 0x6Du:
    case 0xD2u:
      result = &unk_284486F90;
      break;
    case 0x70u:
    case 0x71u:
    case 0x72u:
      result = &unk_284486F78;
      break;
    case 0x73u:
      result = &unk_284486FA8;
      break;
    case 0x74u:
    case 0x75u:
    case 0x78u:
    case 0x79u:
    case 0x7Au:
    case 0x7Bu:
    case 0x7Cu:
    case 0x7Du:
    case 0x7Eu:
    case 0x7Fu:
    case 0x80u:
    case 0x81u:
    case 0x82u:
    case 0x83u:
    case 0x84u:
    case 0x85u:
    case 0x86u:
    case 0x87u:
    case 0x88u:
    case 0x89u:
    case 0x8Au:
    case 0x8Bu:
    case 0x8Cu:
    case 0x8Du:
    case 0x8Eu:
    case 0x8Fu:
    case 0x90u:
    case 0x91u:
    case 0x92u:
    case 0x93u:
    case 0x94u:
    case 0x95u:
    case 0x96u:
    case 0x97u:
    case 0x98u:
    case 0x99u:
    case 0x9Au:
    case 0x9Bu:
    case 0x9Cu:
    case 0x9Du:
    case 0x9Eu:
    case 0x9Fu:
    case 0xA0u:
    case 0xA1u:
    case 0xA2u:
    case 0xA3u:
    case 0xA4u:
    case 0xA5u:
    case 0xA6u:
    case 0xA7u:
    case 0xA8u:
    case 0xA9u:
    case 0xAAu:
    case 0xABu:
    case 0xACu:
    case 0xADu:
    case 0xAEu:
    case 0xAFu:
    case 0xB0u:
    case 0xB1u:
    case 0xB2u:
    case 0xB3u:
    case 0xB4u:
    case 0xB5u:
    case 0xB6u:
    case 0xB7u:
    case 0xB8u:
    case 0xB9u:
    case 0xBAu:
    case 0xBBu:
    case 0xBCu:
    case 0xBDu:
    case 0xBEu:
    case 0xBFu:
    case 0xC0u:
    case 0xC1u:
    case 0xC2u:
    case 0xC3u:
      result = &unk_284486FC0;
      break;
    case 0xC4u:
    case 0xD5u:
      result = &unk_284486FD8;
      break;
    case 0xCBu:
      result = &unk_284486FF0;
      break;
    case 0xCCu:
      result = &unk_284487008;
      break;
    case 0xCDu:
      result = &unk_284487020;
      break;
    case 0xD3u:
      result = &unk_284487038;
      break;
    case 0xD6u:
      result = &unk_284487050;
      break;
    default:
      v8 = +[PGLogging sharedLogging];
      v9 = [v8 loggingConnection];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 67109120;
        v11 = v3;
        _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "Unexpected MetricType %d", &v10, 8u);
      }

      result = &unk_284487080;
      break;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (unsigned)questionTypeFromQuestionMetricType:(unsigned __int16)a3
{
  if ((a3 - 1) > 0xD5)
  {
    return 0;
  }

  else
  {
    return word_22F78CF50[(a3 - 1)];
  }
}

+ (unint64_t)algorithmVersionFromQuestionMetricType:(unsigned __int16)a3 withEventLabelingConfiguration:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = v5;
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 210:
      v7 = 5;
      break;
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
      v7 = [v5 modelVersion];
      break;
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
      v7 = 4;
      break;
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 108:
    case 109:
    case 112:
    case 113:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 206:
    case 207:
    case 208:
    case 209:
    case 211:
      v7 = 1;
      break;
    case 107:
      if (_os_feature_enabled_impl())
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      break;
    case 110:
    case 111:
    case 205:
    case 212:
      v7 = 2;
      break;
    case 114:
    case 115:
      v7 = 201;
      break;
    case 196:
      v8 = MEMORY[0x277CD9B40];
      goto LABEL_10;
    case 213:
      v8 = MEMORY[0x277D3C830];
LABEL_10:
      v7 = *v8;
      break;
    default:
      v7 = 0;
      break;
  }

  return v7;
}

+ (id)relationshipLabelFromRelationshipQuestionMetricType:(unsigned __int16)a3
{
  if ((a3 - 78) > 0x1C)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_27888AAD0[(a3 - 78)];
  }

  return v4;
}

+ (id)personActivityMeaningLabelFromMeaningQuestionMetricType:(unsigned __int16)a3
{
  if ((a3 - 197) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_27888AAA0[(a3 - 197)];
  }

  return v4;
}

+ (id)meaningLabelFromMeaningQuestionMetricType:(unsigned __int16)a3
{
  if ((a3 - 1) > 0x4C)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_27888A838[(a3 - 1)];
  }

  return v4;
}

+ (BOOL)_isHighPrecisionCityscapeAsset:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 sceneClassifications];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 extendedSceneIdentifier] == 2147481598)
        {
          v5 = [v3 curationModel];
          v9 = [v5 cityNatureModel];

          v10 = [v9 cityNode];
          LOBYTE(v5) = [v10 passesHighPrecisionWithSignal:v8];

          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (BOOL)_isHighPrecisionLandscapeAsset:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 sceneClassifications];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 extendedSceneIdentifier] == 2147481597)
        {
          v5 = [v3 curationModel];
          v9 = [v5 cityNatureModel];

          v10 = [v9 natureNode];
          LOBYTE(v5) = [v10 passesHighPrecisionWithSignal:v8];

          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)_isVIPStringForResult:(BOOL)a3
{
  if (a3)
  {
    return @"IsVIP";
  }

  else
  {
    return @"NotVIP";
  }
}

+ (id)_passedFilteringStringForResult:(BOOL)a3
{
  if (a3)
  {
    return @"PassedFiltering";
  }

  else
  {
    return @"FailedFiltering";
  }
}

+ (id)_passedHighPrecisionStringForResult:(BOOL)a3
{
  if (a3)
  {
    return @"PassedHighPrecision";
  }

  else
  {
    return @"FailedHighPrecision";
  }
}

+ (unsigned)wallpaperSuggestionSubtypeForQuestionMetricType:(unsigned __int16)a3
{
  if (((a3 - 206) & 0xFFFC) != 0)
  {
    return 0;
  }

  else
  {
    return a3 + 446;
  }
}

+ (id)allMetricEventsWithGraphManager:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [[PGPhotosChallengeMetricEventFetchHelper alloc] initWithGraphManager:v3];
  v6 = 1;
  v7 = off_27887B000;
  v8 = off_27887B000;
  do
  {
    switch(v6)
    {
      case 108:
      case 110:
      case 117:
      case -60:
      case -50:
      case -49:
      case -48:
      case -47:
      case -46:
      case -45:
      case -44:
      case -42:
        v9 = PGPhotosChallengePrecisionRecallByReasonMetricEvent;
        goto LABEL_4;
      case -53:
        v12 = [v3 workingContext];
        v14 = v7[501];
        v15 = [v12 photoLibrary];
        LODWORD(v14) = [(__objc2_class *)v14 isSharedLibraryQuestionsEnabledForPhotoLibrary:v15];

        if (v14)
        {
          v16 = [(PGPhotosChallengeMetricEvent *)[PGPhotosChallengePrecisionRecallByReasonMetricEvent alloc] initWithWorkingContext:v12 questionMetricType:v6 metricEventFetchHelper:v5];
          [v4 addObject:v16];
          v17 = [objc_alloc(v8[499]) initWithWorkingContext:v12 questionMetricType:v6 metricEventFetchHelper:v5];
          [(PGPhotosChallengeMetricEvent *)v16 setSubMetricEvent:v17];
          [v4 addObject:v17];
        }

        v7 = off_27887B000;
        break;
      case -51:
        v18 = v7;
        v12 = [v3 workingContext];
        v19 = [v12 photoLibrary];
        v20 = [PGCameraLibrarySwitchQuestionFactory isSharedLibraryQuestionsEnabledForPhotoLibrary:v19];

        if (v20)
        {
          v21 = [(PGPhotosChallengeMetricEvent *)[PGPhotosChallengePrecisionRecallByReasonMetricEvent alloc] initWithWorkingContext:v12 questionMetricType:v6 metricEventFetchHelper:v5];
          [v4 addObject:v21];
        }

        v7 = v18;
        v8 = off_27887B000;
        break;
      default:
        v9 = PGPhotosChallengeMetricEvent;
LABEL_4:
        v10 = [v9 alloc];
        v11 = [v3 workingContext];
        v12 = [v10 initWithWorkingContext:v11 questionMetricType:v6 metricEventFetchHelper:v5];

        [v4 addObject:v12];
        break;
    }

    v13 = v6++;
  }

  while (v13 < 0xD6);

  return v4;
}

@end