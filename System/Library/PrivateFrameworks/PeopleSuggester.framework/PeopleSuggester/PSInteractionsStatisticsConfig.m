@interface PSInteractionsStatisticsConfig
@end

@implementation PSInteractionsStatisticsConfig

void __49___PSInteractionsStatisticsConfig_setAnchorDate___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v2 = _MergedGlobals;
  _MergedGlobals = v1;

  objc_autoreleasePoolPop(v0);
}

void __78___PSInteractionsStatisticsConfig_detectedSceneCategoryNamesFromSceneNetTags___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v5];
  v8 = v7;
  if (!v7)
  {
    v7 = &unk_1F2D8B088;
  }

  v9 = [v7 intValue];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = *(a1 + 40);
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v10);
        }

        if ([v6 containsObject:{*(*(&v17 + 1) + 8 * i), v17}])
        {
          if (++v13 >= v9)
          {
            [*(a1 + 48) addObject:v5];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __92___PSInteractionsStatisticsConfig_DefaultConfig__initFallbackConfigWithBundleId_anchorDate___block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v4[0] = @"numberOfEngagedSuggestionsWithConversation";
  v4[1] = @"numberOfSharesWithConversation";
  v4[2] = @"numberOfOutgoingInteractionsWithConversation";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult;
  initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
  v3 = *MEMORY[0x1E69E9840];
}

void __92___PSInteractionsStatisticsConfig_DefaultConfig__initFallbackConfigWithBundleId_anchorDate___block_invoke_2()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v4[0] = @"numberOfSharesWithConversation";
  v4[1] = @"numberOfEngagedSuggestionsWithConversation";
  v4[2] = @"numberOfOutgoingInteractionsWithConversation";
  v4[3] = @"timeSinceLastOutgoingInteraction";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v2 = initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult_11;
  initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult_11 = v1;

  objc_autoreleasePoolPop(v0);
  v3 = *MEMORY[0x1E69E9840];
}

void __92___PSInteractionsStatisticsConfig_DefaultConfig__initFallbackConfigWithBundleId_anchorDate___block_invoke_3()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v4[0] = @"timeSinceLastOutgoingInteraction";
  v4[1] = @"numberOfEngagedSuggestionsWithConversation";
  v5[0] = &unk_1F2D8C7C8;
  v5[1] = &unk_1F2D8B7C0;
  v4[2] = @"numberOfSharesWithConversation";
  v4[3] = @"numberOfOutgoingInteractionsWithConversation";
  v5[2] = &unk_1F2D8B7C0;
  v5[3] = &unk_1F2D8B7C0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v2 = initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult_14;
  initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult_14 = v1;

  objc_autoreleasePoolPop(v0);
  v3 = *MEMORY[0x1E69E9840];
}

void __91___PSInteractionsStatisticsConfig_DefaultConfig__initDefaultConfigWithBundleId_anchorDate___block_invoke()
{
  v4[6] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v4[0] = @"logJointProbabilityScore";
  v4[1] = @"numberOfEngagedSuggestionsWithConversation";
  v4[2] = @"numberOfSharesWithConversation";
  v4[3] = @"numberOfOutgoingInteractionsWithConversation";
  v4[4] = @"timeSinceLastOutgoingInteraction";
  v4[5] = @"timeSinceLastIncomingInteraction";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];
  v2 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult;
  initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
  v3 = *MEMORY[0x1E69E9840];
}

void __91___PSInteractionsStatisticsConfig_DefaultConfig__initDefaultConfigWithBundleId_anchorDate___block_invoke_2()
{
  v4[31] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v4[0] = @"photoFeaturesForConversationId";
  v4[1] = @"scenesBasedFeatures";
  v4[2] = @"isFirstPartyApp";
  v4[3] = @"hasEverSharePlayedWithConversation";
  v4[4] = @"numberOfSharesWithConversation";
  v4[5] = @"numberOfSharesFromCurrentAppWithConversation";
  v4[6] = @"numberOfSharesOfTopDomainURLWithConversation";
  v4[7] = @"numberOfOutgoingInteractionsWithConversation";
  v4[8] = @"numberOfIncomingInteractionsWithConversation";
  v4[9] = @"numberOfInteractionsDuringTimePeriodWithConversation";
  v4[10] = @"numberOfRecentOutgoingInteractionsWithConversation";
  v4[11] = @"numberOfAppsSharedFromWithConversation";
  v4[12] = @"numberOfEngagedSuggestionsWithConversation";
  v4[13] = @"numberOfEngagedSuggestionsFromCurrentAppWithConversation";
  v4[14] = @"numberOfEngagedSuggestionsOfTopDomainURLWithConversation";
  v4[15] = @"timeSinceLastOutgoingInteraction";
  v4[16] = @"timeSinceLastUIEngagement";
  v4[17] = @"timeSinceLastPhoneCallWithConversation";
  v4[18] = @"timeSinceLastIncomingInteraction";
  v4[19] = @"timeSinceLastPhotoShareWithConversation";
  v4[20] = @"timeSinceLastShareWithConversation";
  v4[21] = @"numberOfTotalSharesToTargetApp";
  v4[22] = @"numberOfEngagedSuggestionsToTargetApp";
  v4[23] = @"numberOfDifferentFacesSharedWithConversation";
  v4[24] = @"numberOfSharesOfPeopleInPhotoWithConversation";
  v4[25] = @"numberOfSharesOfScenesInPhotoWithConversation";
  v4[26] = @"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation";
  v4[27] = @"maxIoUIoUSharesOfPeopleInPhotoWithConversation";
  v4[28] = @"numberOfSharesOfDetectedPeopleWithConversation";
  v4[29] = @"numberOfSharesOfDetectedScenesInPhotoWithConversation";
  v4[30] = @"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:31];
  v2 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_40;
  initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_40 = v1;

  objc_autoreleasePoolPop(v0);
  v3 = *MEMORY[0x1E69E9840];
}

void __91___PSInteractionsStatisticsConfig_DefaultConfig__initDefaultConfigWithBundleId_anchorDate___block_invoke_3()
{
  v5[36] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v4[0] = @"timeSinceLastOutgoingInteraction";
  v4[1] = @"timeSinceLastUIEngagement";
  v5[0] = &unk_1F2D8C7C8;
  v5[1] = &unk_1F2D8C7C8;
  v4[2] = @"timeSinceLastPhoneCallWithConversation";
  v4[3] = @"timeSinceLastIncomingInteraction";
  v5[2] = &unk_1F2D8C7C8;
  v5[3] = &unk_1F2D8C7C8;
  v4[4] = @"timeSinceLastPhotoShareWithConversation";
  v4[5] = @"timeSinceLastShareWithConversation";
  v5[4] = &unk_1F2D8C7C8;
  v5[5] = &unk_1F2D8C7C8;
  v4[6] = @"numberOfTotalSharesToTargetApp";
  v4[7] = @"numberOfSharesWithConversation";
  v5[6] = &unk_1F2D8B7C0;
  v5[7] = &unk_1F2D8B7C0;
  v4[8] = @"numberOfSharesFromCurrentAppWithConversation";
  v4[9] = @"numberOfSharesOfTopDomainURLWithConversation";
  v5[8] = &unk_1F2D8B7C0;
  v5[9] = &unk_1F2D8B7C0;
  v4[10] = @"numberOfSharesOfDetectedPeopleWithConversation";
  v4[11] = @"numberOfSharesOfPeopleInPhotoWithConversation";
  v5[10] = &unk_1F2D8B7C0;
  v5[11] = &unk_1F2D8B7C0;
  v4[12] = @"numberOfSharesOfDetectedScenesInPhotoWithConversation";
  v4[13] = @"numberOfSharesOfScenesInPhotoWithConversation";
  v5[12] = &unk_1F2D8B7C0;
  v5[13] = &unk_1F2D8B7C0;
  v4[14] = @"numberOfIncomingInteractionsWithConversation";
  v4[15] = @"numberOfOutgoingInteractionsWithConversation";
  v5[14] = &unk_1F2D8B7C0;
  v5[15] = &unk_1F2D8B7C0;
  v4[16] = @"numberOfRecentOutgoingInteractionsWithConversation";
  v4[17] = @"numberOfInteractionsDuringTimePeriodWithConversation";
  v5[16] = &unk_1F2D8B7C0;
  v5[17] = &unk_1F2D8B7C0;
  v4[18] = @"hasEverSharePlayedWithConversation";
  v4[19] = @"numberOfEngagedSuggestionsWithConversation";
  v5[18] = &unk_1F2D8B7C0;
  v5[19] = &unk_1F2D8B7C0;
  v4[20] = @"numberOfEngagedSuggestionsFromCurrentAppWithConversation";
  v4[21] = @"numberOfEngagedSuggestionsOfTopDomainURLWithConversation";
  v5[20] = &unk_1F2D8B7C0;
  v5[21] = &unk_1F2D8B7C0;
  v4[22] = @"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation";
  v4[23] = @"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation";
  v5[22] = &unk_1F2D8B7C0;
  v5[23] = &unk_1F2D8B7C0;
  v4[24] = @"numberOfEngagedSuggestionsToTargetApp";
  v4[25] = @"maxIoUIoUSharesOfPeopleInPhotoWithConversation";
  v5[24] = &unk_1F2D8B7C0;
  v5[25] = &unk_1F2D8B7C0;
  v4[26] = @"numberOfDifferentFacesSharedWithConversation";
  v4[27] = @"numberOfAppsSharedFromWithConversation";
  v5[26] = &unk_1F2D8B7C0;
  v5[27] = &unk_1F2D8B7C0;
  v4[28] = @"featureCountFor_food";
  v4[29] = @"featureCountFor_pet";
  v5[28] = &unk_1F2D8B7C0;
  v5[29] = &unk_1F2D8B7C0;
  v4[30] = @"featureCountFor_sport";
  v4[31] = @"featureCountFor_music";
  v5[30] = &unk_1F2D8B7C0;
  v5[31] = &unk_1F2D8B7C0;
  v4[32] = @"conditioned_featureCountFor_food";
  v4[33] = @"conditioned_featureCountFor_pet";
  v5[32] = &unk_1F2D8B7C0;
  v5[33] = &unk_1F2D8B7C0;
  v4[34] = @"conditioned_featureCountFor_sport";
  v4[35] = @"conditioned_featureCountFor_music";
  v5[34] = &unk_1F2D8B7C0;
  v5[35] = &unk_1F2D8B7C0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:36];
  v2 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_43;
  initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_43 = v1;

  objc_autoreleasePoolPop(v0);
  v3 = *MEMORY[0x1E69E9840];
}

void __91___PSInteractionsStatisticsConfig_DefaultConfig__initDefaultConfigWithBundleId_anchorDate___block_invoke_4()
{
  v32[14] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v31[0] = @"laplaceProbability:withAlpha:";
  v31[1] = @"numberOfOutgoingInteractionsWithConversation";
  v31[2] = &unk_1F2D8B7D8;
  v31[3] = @"pCk";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  v32[0] = v16;
  v30[0] = @"log:withBase:";
  v30[1] = @"pCk";
  v30[2] = &unk_1F2D8B7F0;
  v30[3] = @"logJointProbabilityScore";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  v32[1] = v15;
  v29[0] = @"laplaceProbability:withAlpha:";
  v29[1] = @"numberOfEngagedSuggestionsFromCurrentAppWithConversation";
  v29[2] = &unk_1F2D8C7D8;
  v29[3] = @"pSource|Ck";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  v32[2] = v14;
  v28[0] = @"log:withBase:";
  v28[1] = @"pSource|Ck";
  v28[2] = &unk_1F2D8B7F0;
  v28[3] = @"pSource|Ck";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  v32[3] = v13;
  v27[0] = @"sum:with:";
  v27[1] = @"logJointProbabilityScore";
  v27[2] = @"pSource|Ck";
  v27[3] = @"logJointProbabilityScore";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  v32[4] = v12;
  v26[0] = @"laplaceProbability:withAlpha:";
  v26[1] = @"numberOfEngagedSuggestionsOfTopDomainURLWithConversation";
  v26[2] = &unk_1F2D8C7E8;
  v26[3] = @"pTopLevelDomain|Ck";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  v32[5] = v11;
  v25[0] = @"log:withBase:";
  v25[1] = @"pTopLevelDomain|Ck";
  v25[2] = &unk_1F2D8B7F0;
  v25[3] = @"pTopLevelDomain|Ck";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  v32[6] = v10;
  v24[0] = @"sum:with:";
  v24[1] = @"logJointProbabilityScore";
  v24[2] = @"pTopLevelDomain|Ck";
  v24[3] = @"logJointProbabilityScore";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  v32[7] = v0;
  v23[0] = @"laplaceProbability:withAlpha:";
  v23[1] = @"maxIoUIoUSharesOfPeopleInPhotoWithConversation";
  v23[2] = &unk_1F2D8C7E8;
  v23[3] = @"pPASS|Ck";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  v32[8] = v1;
  v22[0] = @"log:withBase:";
  v22[1] = @"pPASS|Ck";
  v22[2] = &unk_1F2D8B7F0;
  v22[3] = @"pPASS|Ck";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  v32[9] = v2;
  v21[0] = @"sum:with:";
  v21[1] = @"logJointProbabilityScore";
  v21[2] = @"pPASS|Ck";
  v21[3] = @"logJointProbabilityScore";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  v32[10] = v3;
  v20[0] = @"laplaceProbability:withAlpha:";
  v20[1] = @"numberOfRecentOutgoingInteractionsWithConversation";
  v20[2] = &unk_1F2D8C7F8;
  v20[3] = @"pRecentInteractions|Ck";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  v32[11] = v4;
  v19[0] = @"log:withBase:";
  v19[1] = @"pRecentInteractions|Ck";
  v19[2] = &unk_1F2D8B7F0;
  v19[3] = @"pRecentInteractions|Ck";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  v32[12] = v5;
  v18[0] = @"sum:with:";
  v18[1] = @"logJointProbabilityScore";
  v18[2] = @"pRecentInteractions|Ck";
  v18[3] = @"logJointProbabilityScore";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
  v32[13] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:14];
  v8 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_70;
  initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_70 = v7;

  objc_autoreleasePoolPop(context);
  v9 = *MEMORY[0x1E69E9840];
}

void __91___PSInteractionsStatisticsConfig_DefaultConfig__initDefaultConfigWithBundleId_anchorDate___block_invoke_84()
{
  v13[4] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v12[0] = @"featureCountFor_food";
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Cooking", @"12031", @"Culinary Art", @"12221", @"Dinner", @"12398", @"Fast Food", @"12841", @"Fish as Food", @"12944", @"Food", @"15", @"Fried Food", @"13179", @"Lunch", @"14599", @"Meal", @"14798", @"Menu", @"14852", @"Poultry", @"1037", @"Restaurant", @"32", @"Seafood", @"1175", @"Soup", @"1252", @"Wine", @"1501", 0}];
  objc_autoreleasePoolPop(v1);
  v13[0] = v2;
  v12[1] = @"featureCountFor_music";
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Brass Music", @"253", @"Concert", @"12", @"Dancing", @"462", @"Digital Piano", @"12384", @"Electrophone", @"12669", @"Flute", @"571", @"Guitar", @"648", @"Headphones", @"670", @"Music", @"898", @"Music Venue", @"15119", @"Musical", @"15124", @"Musical Ensemble", @"15122", @"Musical Instrument", @"899", @"Musical Keyboard", @"15123", @"Orchestra", @"927", @"Percussion Instrument", @"15635", @"Piano", @"985", @"Singer", @"1213", @"Singing", @"16904", @"String Instrument", @"1307", @"Ukulele", @"1436", @"Woodwind", @"1510", 0}];
  objc_autoreleasePoolPop(v3);
  v13[1] = v4;
  v12[2] = @"featureCountFor_pet";
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Beagle", @"186", @"Canine", @"297", @"Cat", @"114", @"Dog", @"493", @"Dog Walking", @"12456", @"Feline", @"545", @"Hound", @"698", @"Spaniel", @"1256", 0}];
  objc_autoreleasePoolPop(v5);
  v13[2] = v6;
  v12[3] = @"featureCountFor_sport";
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Aerobatics", @"10058", @"Air Sports", @"10100", @"Athletics", @"1770", @"Auto Racing", @"10433", @"Ball", @"159", @"Basketball", @"178", @"Bodybuilding", @"10950", @"Cheerleading", @"343", @"Contact Sport", @"12017", @"Cycling", @"454", @"Dancesport", @"12291", @"Equestrian Sport", @"12735", @"Extreme Sport", @"12795", @"Figure Skating", @"12906", @"Frisbee", @"588", @"Golf", @"624", @"Gym", @"13568", @"Hockey", @"683", @"Motor Sport", @"889", @"Nascar", @"906", @"Racing", @"16134", @"Racquet", @"1067", @"Roller Sport", @"16406", @"Soccer", @"1245", @"Sport", @"1269", @"Sport Climbing", @"17197", @"Sports Equipment", @"1270", @"Sports Uniform", @"17209", @"Sports Venue", @"17199", @"Sportscar", @"1271", @"Sportswear"}];
  objc_autoreleasePoolPop(v7);
  v13[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v10 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_83;
  initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_83 = v9;

  objc_autoreleasePoolPop(v0);
  v11 = *MEMORY[0x1E69E9840];
}

void __91___PSInteractionsStatisticsConfig_DefaultConfig__initDefaultConfigWithBundleId_anchorDate___block_invoke_2_581()
{
  v0 = objc_autoreleasePoolPush();
  v1 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_580;
  initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_580 = &unk_1F2D8C848;

  objc_autoreleasePoolPop(v0);
}

@end