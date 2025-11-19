@interface _PSInteractionsStatistics
- (BOOL)containsConversationId:(id)a3;
- (BOOL)isUsingDefaultValue:(id)a3 forConversationId:(id)a4;
- (NSDictionary)features;
- (NSDictionary)properties;
- (_PSInteractionsStatistics)initWithConfig:(id)a3;
- (id)descriptionRedacted:(BOOL)a3;
- (id)nonNilFeaturesForConversationId:(id)a3;
- (id)privacyMitigatedFeatureValueFromName:(id)a3 forConversationId:(id)a4;
- (id)privatizedConversationId:(id)a3;
- (id)valueForFeature:(id)a3 forConversationId:(id)a4;
- (id)valueForProperty:(id)a3 forConversationId:(id)a4;
- (id)valueOrDefaultValueForFeature:(id)a3 forConversationId:(id)a4;
- (void)_updatePropertiesFromRecord:(id)a3 forConversationId:(id)a4;
- (void)addConversationId:(id)a3;
- (void)aggregateSumForArguments:(id)a3;
- (void)computeAppsSharedFromForConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeContentBasedFeaturesForPersonIdsDetectedInPhoto:(id)a3 sceneCategoriesDetectedInPhoto:(id)a4;
- (void)computeDynamicFeatureWithOperatorName:(void *)a3 forArguments:;
- (void)computeDynamicFeatures;
- (void)computeHasEverSharePlayedWithConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeIsFirstPartyAppForConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeMaxIoUOfSharesOfPeopleInPhotoForPeopleDetectedInPhoto:(id)a3;
- (void)computeNumberOfAppsSharedFromWithConversation;
- (void)computeNumberOfEngagedSuggestionsFromCurrentAppWithConversationForConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeNumberOfEngagedSuggestionsOfDetectedPeopleForPeopleDetectedInPhoto:(id)a3;
- (void)computeNumberOfEngagedSuggestionsOfPeopleInPhoto;
- (void)computeNumberOfEngagedSuggestionsOfTopDomainURLWithConversationForConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeNumberOfEngagedSuggestionsToTargetApp;
- (void)computeNumberOfEngagedSuggestionsWithConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeNumberOfFacesSharedWithConversation;
- (void)computeNumberOfIncomingInteractionsWithConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeNumberOfOutgoingInteractionsWithConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeNumberOfRecentOutgoingInteractionsWithConversationForConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeNumberOfSharesFromCurrentAppWithConversationForConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeNumberOfSharesOfDetectedPeopleForPeopleDetectedInPhoto:(id)a3;
- (void)computeNumberOfSharesOfDetectedScenesInPhotoForSceneCategoriesDetectedInPhoto:(id)a3;
- (void)computeNumberOfSharesOfPeopleInPhoto;
- (void)computeNumberOfSharesOfScenesInPhoto;
- (void)computeNumberOfSharesOfTopDomainURLWithConversationForConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeNumberOfSharesToTargetApp;
- (void)computeNumberOfSharesWithConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computePhotoFeaturesForConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeScenesBasedFeaturesForConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeStatisticsWithInteractionStore:(id)a3;
- (void)computeTimeSinceLastIncomingInteractionForConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeTimeSinceLastOutgoingInteractionForConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeTimeSinceLastPhoneCallWithConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeTimeSinceLastPhotoShareWithConversationId:(id)a3 interactionRecord:(id)a4;
- (void)computeTimeSinceLastShareWithConversation:(id)a3 interactionRecord:(id)a4;
- (void)computeTimeSinceLastUIEngagementForConversationId:(id)a3 interactionRecord:(id)a4;
- (void)copyFeatureForArguments:(id)a3;
- (void)dispatchComputationForBatchFeature:(void *)a1;
- (void)dispatchComputationForContentFeature:(void *)a3 personIdsDetectedInPhoto:(void *)a4 sceneCategoriesDetectedInPhoto:;
- (void)dispatchComputationForIncrementalFeature:(void *)a3 conversationId:(void *)a4 interactionRecord:;
- (void)divideWithDivisorForArguments:(id)a3;
- (void)exponentialWithMultiplierForArguments:(id)a3;
- (void)imputeFeatureForArguments:(id)a3;
- (void)incrementValueForFeature:(id)a3 andConversationId:(id)a4;
- (void)initFeature:(id)a3 withValue:(id)a4;
- (void)laplaceProbabilityWithAlphaForArguments:(id)a3;
- (void)logWithBaseForArguments:(id)a3;
- (void)multiplyWithKeyForArguments:(id)a3;
- (void)mutliplyWithScalarForArguments:(id)a3;
- (void)powerWithExponentForArguments:(id)a3;
- (void)processInteractionRecord:(id)a3;
- (void)reciprocalWithOffsetForArguments:(id)a3;
- (void)removeConversationIds:(id)a3;
- (void)removeFeature:(id)a3 andConversation:(id)a4;
- (void)renameFeatureForArguments:(id)a3;
- (void)savePastSharedPhotoDetectedPersonIds:(id)a3 forConversationId:(id)a4 forSyntheticInteraction:(BOOL)a5;
- (void)setValue:(id)a3 forFeature:(id)a4 andConversationId:(id)a5;
- (void)setValue:(id)a3 forProperty:(id)a4 andConversationId:(id)a5;
- (void)sumWithAddendForArguments:(id)a3;
- (void)sumWithKeyForArguments:(id)a3;
@end

@implementation _PSInteractionsStatistics

- (void)computeAppsSharedFromForConversationId:(id)a3 interactionRecord:(id)a4
{
  v14 = a3;
  v6 = a4;
  if ([v6 mechanism] == 13)
  {
    v7 = [(_PSInteractionsStatistics *)self appsSharedFromByConversationId];
    v8 = [v7 objectForKeyedSubscript:v14];

    if (!v8)
    {
      v9 = objc_opt_new();
      v10 = [(_PSInteractionsStatistics *)self appsSharedFromByConversationId];
      [v10 setObject:v9 forKeyedSubscript:v14];
    }

    v11 = [(_PSInteractionsStatistics *)self appsSharedFromByConversationId];
    v12 = [v11 objectForKeyedSubscript:v14];
    v13 = [v6 bundleId];
    [v12 addObject:v13];
  }
}

- (void)computeIsFirstPartyAppForConversationId:(id)a3 interactionRecord:(id)a4
{
  v11 = a3;
  v5 = [(_PSInteractionsStatistics *)self valueForProperty:@"ConversationBundleId" forConversationId:v11];
  v6 = [(_PSInteractionsStatistics *)self valueForFeature:@"isFirstPartyApp" forConversationId:v11];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [v5 hasPrefix:@"com.apple."];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    [(_PSInteractionsStatistics *)self setValue:v10 forFeature:@"isFirstPartyApp" andConversationId:v11];
  }
}

- (void)computeNumberOfSharesFromCurrentAppWithConversationForConversationId:(id)a3 interactionRecord:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v6 mechanism] == 13)
  {
    v7 = [v6 bundleId];
    v8 = [(_PSInteractionsStatistics *)self config];
    v9 = [v8 sourceBundleId];
    v10 = [v7 isEqualToString:v9];

    if (v10)
    {
      [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfSharesFromCurrentAppWithConversation" andConversationId:v11];
    }
  }
}

- (void)computeNumberOfEngagedSuggestionsFromCurrentAppWithConversationForConversationId:(id)a3 interactionRecord:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v6 mechanism] == 20)
  {
    v7 = [v6 bundleId];
    v8 = [(_PSInteractionsStatistics *)self config];
    v9 = [v8 sourceBundleId];
    v10 = [v7 isEqualToString:v9];

    if (v10)
    {
      [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfEngagedSuggestionsFromCurrentAppWithConversation" andConversationId:v11];
    }
  }
}

- (void)computeNumberOfSharesOfTopDomainURLWithConversationForConversationId:(id)a3 interactionRecord:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v6 = a4;
  v7 = [(_PSInteractionsStatistics *)self config];
  v8 = [v7 topDomainURL];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 mechanism];

    if (v10 == 13)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v21 = v6;
      obj = [v6 attachments];
      v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          v14 = 0;
          do
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = [*(*(&v24 + 1) + 8 * v14) contentURL];
            v16 = [v15 host];
            v17 = [(_PSInteractionsStatistics *)self config];
            v18 = [v17 topDomainURL];
            v19 = [v16 isEqualToString:v18];

            if (v19)
            {
              [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfSharesOfTopDomainURLWithConversation" andConversationId:v22];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v12);
      }

      v6 = v21;
    }
  }

  else
  {
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)computeNumberOfEngagedSuggestionsOfTopDomainURLWithConversationForConversationId:(id)a3 interactionRecord:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v6 = a4;
  v7 = [(_PSInteractionsStatistics *)self config];
  v8 = [v7 topDomainURL];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 mechanism];

    if (v10 == 20)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v21 = v6;
      obj = [v6 attachments];
      v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          v14 = 0;
          do
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = [*(*(&v24 + 1) + 8 * v14) contentURL];
            v16 = [v15 host];
            v17 = [(_PSInteractionsStatistics *)self config];
            v18 = [v17 topDomainURL];
            v19 = [v16 isEqualToString:v18];

            if (v19)
            {
              [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfEngagedSuggestionsOfTopDomainURLWithConversation" andConversationId:v22];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v12);
      }

      v6 = v21;
    }
  }

  else
  {
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)computeNumberOfSharesWithConversationId:(id)a3 interactionRecord:(id)a4
{
  v6 = a3;
  if ([a4 mechanism] == 13)
  {
    [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfSharesWithConversation" andConversationId:v6];
  }
}

- (void)computeNumberOfEngagedSuggestionsWithConversationId:(id)a3 interactionRecord:(id)a4
{
  v6 = a3;
  if ([a4 mechanism] == 20)
  {
    [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfEngagedSuggestionsWithConversation" andConversationId:v6];
  }
}

- (void)computeNumberOfOutgoingInteractionsWithConversationId:(id)a3 interactionRecord:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v6 direction] == 1 && objc_msgSend(v6, "mechanism") != 20)
  {
    [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfOutgoingInteractionsWithConversation" andConversationId:v7];
  }
}

- (void)computeNumberOfIncomingInteractionsWithConversationId:(id)a3 interactionRecord:(id)a4
{
  v6 = a3;
  if (![a4 direction])
  {
    [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfIncomingInteractionsWithConversation" andConversationId:v6];
  }
}

- (void)computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId:(id)a3 interactionRecord:(id)a4
{
  v13 = a3;
  v6 = a4;
  if ([v6 direction] == 1)
  {
    if (computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId_interactionRecord___pasOnceToken2 != -1)
    {
      [_PSInteractionsStatistics(StaticFeatures) computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId:interactionRecord:];
    }

    v7 = computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId_interactionRecord___pasExprOnceResult;
    v8 = objc_autoreleasePoolPush();
    v9 = MEMORY[0x1E695DF00];
    [v6 startDate];
    v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    objc_autoreleasePoolPop(v8);
    LODWORD(v8) = [v7 isDateInWeekend:v10];

    v11 = [(_PSInteractionsStatistics *)self config];
    v12 = [v11 isWeekendShare];

    if (v8 == v12)
    {
      [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfInteractionsDuringTimePeriodWithConversation" andConversationId:v13];
    }
  }
}

- (void)computeNumberOfRecentOutgoingInteractionsWithConversationForConversationId:(id)a3 interactionRecord:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([v6 direction] == 1)
  {
    v7 = [(_PSInteractionsStatistics *)self config];
    [v7 anchorTimeStamp];
    v9 = v8;
    [v6 startDate];
    v11 = v9 - v10;

    if (v11 <= 900.0)
    {
      [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfRecentOutgoingInteractionsWithConversation" andConversationId:v12];
    }
  }
}

- (void)computeTimeSinceLastOutgoingInteractionForConversationId:(id)a3 interactionRecord:(id)a4
{
  v16 = a3;
  v6 = a4;
  if ([v6 direction] == 1 && objc_msgSend(v6, "mechanism") != 20)
  {
    v7 = [(_PSInteractionsStatistics *)self config];
    [v7 anchorTimeStamp];
    v9 = v8;
    [v6 startDate];
    v11 = v9 - v10;

    v12 = [(_PSInteractionsStatistics *)self valueForFeature:@"timeSinceLastOutgoingInteraction" forConversationId:v16];
    v13 = v12;
    if (!v12 || ([v12 doubleValue], v11 < v14))
    {
      v15 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      [(_PSInteractionsStatistics *)self setValue:v15 forFeature:@"timeSinceLastOutgoingInteraction" andConversationId:v16];
    }
  }
}

- (void)computeTimeSinceLastUIEngagementForConversationId:(id)a3 interactionRecord:(id)a4
{
  v16 = a3;
  v6 = a4;
  if ([v6 mechanism] == 20)
  {
    v7 = [(_PSInteractionsStatistics *)self config];
    [v7 anchorTimeStamp];
    v9 = v8;
    [v6 startDate];
    v11 = v9 - v10;

    v12 = [(_PSInteractionsStatistics *)self valueForFeature:@"timeSinceLastUIEngagement" forConversationId:v16];
    v13 = v12;
    if (!v12 || ([v12 doubleValue], v11 < v14))
    {
      v15 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      [(_PSInteractionsStatistics *)self setValue:v15 forFeature:@"timeSinceLastUIEngagement" andConversationId:v16];
    }
  }
}

- (void)computeTimeSinceLastPhoneCallWithConversationId:(id)a3 interactionRecord:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8BFB8];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "mechanism")}];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    [v6 endDate];
    v11 = v10;
    [v6 startDate];
    v13 = v12;
    v14 = [(_PSInteractionsStatistics *)self valueForFeature:@"timeSinceLastPhoneCallWithConversation" forConversationId:v23];

    v15 = v11 - v13;
    if (!v14 && v15 > 5.0)
    {
      v17 = [(_PSInteractionsStatistics *)self config];
      [v17 anchorTimeStamp];
      v19 = v18;
      [v6 endDate];
      v21 = v19 - v20;

      v22 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
      [(_PSInteractionsStatistics *)self setValue:v22 forFeature:@"timeSinceLastPhoneCallWithConversation" andConversationId:v23];
    }
  }
}

- (void)computeTimeSinceLastIncomingInteractionForConversationId:(id)a3 interactionRecord:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (![v6 direction])
  {
    v7 = [(_PSInteractionsStatistics *)self valueForFeature:@"timeSinceLastIncomingInteraction" forConversationId:v14];

    if (!v7)
    {
      v8 = [(_PSInteractionsStatistics *)self config];
      [v8 anchorTimeStamp];
      v10 = v9;
      [v6 startDate];
      v12 = v10 - v11;

      v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
      [(_PSInteractionsStatistics *)self setValue:v13 forFeature:@"timeSinceLastIncomingInteraction" andConversationId:v14];
    }
  }
}

- (void)computeTimeSinceLastPhotoShareWithConversationId:(id)a3 interactionRecord:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 mechanism] == 20)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v7 attachments];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v23 + 1) + 8 * i) photoLocalIdentifier];

          if (v13)
          {

            v14 = [(_PSInteractionsStatistics *)self config];
            [v14 anchorTimeStamp];
            v16 = v15;
            [v7 startDate];
            v18 = v16 - v17;

            v19 = [(_PSInteractionsStatistics *)self valueForFeature:@"timeSinceLastPhotoShareWithConversation" forConversationId:v6];
            v8 = v19;
            if (!v19 || ([v19 doubleValue], v18 < v20))
            {
              v21 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
              [(_PSInteractionsStatistics *)self setValue:v21 forFeature:@"timeSinceLastPhotoShareWithConversation" andConversationId:v6];
            }

            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)computeTimeSinceLastShareWithConversation:(id)a3 interactionRecord:(id)a4
{
  v16 = a3;
  v6 = a4;
  if ([v6 mechanism] == 13)
  {
    v7 = [(_PSInteractionsStatistics *)self config];
    [v7 anchorTimeStamp];
    v9 = v8;
    [v6 startDate];
    v11 = v9 - v10;

    v12 = [(_PSInteractionsStatistics *)self valueForFeature:@"timeSinceLastShareWithConversation" forConversationId:v16];
    v13 = v12;
    if (!v12 || ([v12 doubleValue], v11 < v14))
    {
      v15 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      [(_PSInteractionsStatistics *)self setValue:v15 forFeature:@"timeSinceLastShareWithConversation" andConversationId:v16];
    }
  }
}

- (void)computeHasEverSharePlayedWithConversationId:(id)a3 interactionRecord:(id)a4
{
  v11 = a3;
  v6 = MEMORY[0x1E69978D0];
  v7 = [a4 recipients];
  v8 = [v7 allObjects];
  v9 = [v6 generateConversationIdFromInteractionRecipientRecords:v8];

  v10 = [(_PSInteractionsStatistics *)self hasSharePlayedWith];
  LODWORD(v7) = [v10 containsObject:v9];

  if (v7)
  {
    [(_PSInteractionsStatistics *)self setValue:&unk_1F2D8AF20 forFeature:@"hasEverSharePlayedWithConversation" andConversationId:v11];
  }
}

- (void)computePhotoFeaturesForConversationId:(id)a3 interactionRecord:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v6 mechanism] == 13 || objc_msgSend(v6, "mechanism") == 20)
  {
    v7 = [v6 attachments];
    v8 = [v7 _pas_mappedSetWithTransform:&__block_literal_global_29];

    -[_PSInteractionsStatistics savePastSharedPhotoDetectedPersonIds:forConversationId:forSyntheticInteraction:](self, "savePastSharedPhotoDetectedPersonIds:forConversationId:forSyntheticInteraction:", v8, v9, [v6 mechanism] == 20);
  }
}

- (void)computeScenesBasedFeaturesForConversationId:(id)a3 interactionRecord:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v6 = a4;
  if ([v6 mechanism] == 13)
  {
    v7 = [v6 attachments];
    v8 = [v7 _pas_mappedSetWithTransform:&__block_literal_global_31_0];

    v29 = v8;
    if ([v8 count])
    {
      v25 = v6;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v9 = [(_PSInteractionsStatistics *)self config];
      v10 = [v9 sceneCategoryTagMapping];

      obj = v10;
      v30 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v30)
      {
        v28 = *v36;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v36 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v35 + 1) + 8 * i);
            v13 = [(_PSInteractionsStatistics *)self config];
            v14 = [v13 sceneTagThresholdForSceneCategoryName:v12];

            v15 = [(_PSInteractionsStatistics *)self config];
            v16 = [v15 sceneCategoryTagMapping];
            v17 = [v16 objectForKeyedSubscript:v12];

            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v18 = v29;
            v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = 0;
              v22 = *v32;
              while (2)
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v32 != v22)
                  {
                    objc_enumerationMutation(v18);
                  }

                  if ([v17 containsObject:*(*(&v31 + 1) + 8 * j)])
                  {
                    if (++v21 >= [v14 intValue])
                    {
                      [(_PSInteractionsStatistics *)self incrementValueForFeature:v12 andConversationId:v27];
                      goto LABEL_19;
                    }
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

LABEL_19:
          }

          v30 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v30);
      }

      v6 = v25;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)computeNumberOfFacesSharedWithConversation
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(_PSInteractionsStatistics *)self conversationIds];
  v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v17 = *v23;
    do
    {
      v5 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * v5);
        v7 = objc_opt_new();
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v8 = [(_PSInteractionsStatistics *)self personsIdsInPhotosForPastShareInteractions];
        v9 = [v8 objectForKeyedSubscript:v6];

        v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          do
          {
            v13 = 0;
            do
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [v7 unionSet:*(*(&v18 + 1) + 8 * v13++)];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v11);
        }

        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
        [(_PSInteractionsStatistics *)self setValue:v14 forFeature:@"numberOfDifferentFacesSharedWithConversation" andConversationId:v6];

        ++v5;
      }

      while (v5 != v4);
      v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)computeNumberOfSharesToTargetApp
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(_PSInteractionsStatistics *)self conversationIds];
  v4 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [(_PSInteractionsStatistics *)self bundleIdForConversationId:v8];
        if (v9)
        {
          v10 = [v3 objectForKeyedSubscript:v9];

          if (!v10)
          {
            [v3 setObject:&unk_1F2D8AF38 forKeyedSubscript:v9];
          }

          v11 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:@"numberOfSharesWithConversation" forConversationId:v8];
          v12 = MEMORY[0x1E696AD98];
          v13 = [v11 intValue];
          v14 = [v3 objectForKeyedSubscript:v9];
          v15 = [v12 numberWithInt:{objc_msgSend(v14, "intValue") + v13}];
          [v3 setObject:v15 forKeyedSubscript:v9];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = [(_PSInteractionsStatistics *)self conversationIds];
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = [(_PSInteractionsStatistics *)self bundleIdForConversationId:v21];
        v23 = [v3 objectForKeyedSubscript:v22];

        if (v23)
        {
          v24 = [v3 objectForKeyedSubscript:v22];
          [(_PSInteractionsStatistics *)self setValue:v24 forFeature:@"numberOfTotalSharesToTargetApp" andConversationId:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)computeNumberOfEngagedSuggestionsToTargetApp
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(_PSInteractionsStatistics *)self conversationIds];
  v4 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [(_PSInteractionsStatistics *)self bundleIdForConversationId:v8];
        if (v9)
        {
          v10 = [v3 objectForKeyedSubscript:v9];

          if (!v10)
          {
            [v3 setObject:&unk_1F2D8AF38 forKeyedSubscript:v9];
          }

          v11 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:@"numberOfEngagedSuggestionsWithConversation" forConversationId:v8];
          v12 = MEMORY[0x1E696AD98];
          v13 = [v11 intValue];
          v14 = [v3 objectForKeyedSubscript:v9];
          v15 = [v12 numberWithInt:{objc_msgSend(v14, "intValue") + v13}];
          [v3 setObject:v15 forKeyedSubscript:v9];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = [(_PSInteractionsStatistics *)self conversationIds];
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = [(_PSInteractionsStatistics *)self bundleIdForConversationId:v21];
        if (v22)
        {
          v23 = [v3 objectForKeyedSubscript:v22];

          if (v23)
          {
            v24 = [v3 objectForKeyedSubscript:v22];
            [(_PSInteractionsStatistics *)self setValue:v24 forFeature:@"numberOfEngagedSuggestionsToTargetApp" andConversationId:v21];
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)computeNumberOfAppsSharedFromWithConversation
{
  v3 = [(_PSInteractionsStatistics *)self appsSharedFromByConversationId];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __90___PSInteractionsStatistics_StaticFeatures__computeNumberOfAppsSharedFromWithConversation__block_invoke;
  v4[3] = &unk_1E7C24160;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)computeNumberOfSharesOfPeopleInPhoto
{
  v2 = self;
  v46 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(_PSInteractionsStatistics *)self conversationIds];
  v26 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v26)
  {
    v24 = *v40;
    v25 = v2;
    do
    {
      v3 = 0;
      do
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v3;
        v4 = *(*(&v39 + 1) + 8 * v3);
        context = objc_autoreleasePoolPush();
        v5 = objc_opt_new();
        v6 = [(_PSInteractionsStatistics *)v2 personsIdsInPhotosForPastShareInteractions];
        v27 = v4;
        v7 = [v6 objectForKeyedSubscript:v4];

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v30 = v7;
        v8 = [v30 countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = *v36;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v36 != v11)
              {
                objc_enumerationMutation(v30);
              }

              v13 = *(*(&v35 + 1) + 8 * i);
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v14 = v13;
              v15 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v32;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v32 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v31 + 1) + 8 * j);
                    [v5 addObject:v19];
                    v20 = [v5 countForObject:v19];
                    if (v10 <= v20)
                    {
                      v10 = v20;
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
                }

                while (v16);
              }
            }

            v9 = [v30 countByEnumeratingWithState:&v35 objects:v44 count:16];
          }

          while (v9);
        }

        else
        {
          v10 = 0;
        }

        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
        v2 = v25;
        [(_PSInteractionsStatistics *)v25 setValue:v21 forFeature:@"numberOfSharesOfPeopleInPhotoWithConversation" andConversationId:v27];

        objc_autoreleasePoolPop(context);
        v3 = v29 + 1;
      }

      while (v29 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v26);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)computeNumberOfEngagedSuggestionsOfPeopleInPhoto
{
  v2 = self;
  v46 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(_PSInteractionsStatistics *)self conversationIds];
  v26 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v26)
  {
    v24 = *v40;
    v25 = v2;
    do
    {
      v3 = 0;
      do
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v3;
        v4 = *(*(&v39 + 1) + 8 * v3);
        context = objc_autoreleasePoolPush();
        v5 = objc_opt_new();
        v6 = [(_PSInteractionsStatistics *)v2 personsIdsInPhotosForPastSyntheticShareInteractions];
        v27 = v4;
        v7 = [v6 objectForKeyedSubscript:v4];

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v30 = v7;
        v8 = [v30 countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = *v36;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v36 != v11)
              {
                objc_enumerationMutation(v30);
              }

              v13 = *(*(&v35 + 1) + 8 * i);
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v14 = v13;
              v15 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v32;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v32 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v31 + 1) + 8 * j);
                    [v5 addObject:v19];
                    v20 = [v5 countForObject:v19];
                    if (v10 <= v20)
                    {
                      v10 = v20;
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
                }

                while (v16);
              }
            }

            v9 = [v30 countByEnumeratingWithState:&v35 objects:v44 count:16];
          }

          while (v9);
        }

        else
        {
          v10 = 0;
        }

        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
        v2 = v25;
        [(_PSInteractionsStatistics *)v25 setValue:v21 forFeature:@"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation" andConversationId:v27];

        objc_autoreleasePoolPop(context);
        v3 = v29 + 1;
      }

      while (v29 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v26);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)computeNumberOfSharesOfScenesInPhoto
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(_PSInteractionsStatistics *)self conversationIds];
  v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v5 = [(_PSInteractionsStatistics *)self config];
        v6 = [v5 configuredSceneCategoryTagNames];

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v7)
        {
          v8 = v7;
          LODWORD(v9) = 0;
          v10 = *v20;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v20 != v10)
              {
                objc_enumerationMutation(v6);
              }

              v12 = [(_PSInteractionsStatistics *)self valueForFeature:*(*(&v19 + 1) + 8 * j) forConversationId:v4];
              v13 = [v12 intValue];

              if (v9 <= v13)
              {
                v9 = v13;
              }

              else
              {
                v9 = v9;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v8);
        }

        else
        {
          v9 = 0;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:v9];
        [(_PSInteractionsStatistics *)self setValue:v14 forFeature:@"numberOfSharesOfScenesInPhotoWithConversation" andConversationId:v4];
      }

      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)computeNumberOfSharesOfDetectedPeopleForPeopleDetectedInPhoto:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v27 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v27)
    {
      v25 = *v42;
      v26 = self;
      do
      {
        v5 = 0;
        do
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v30 = v5;
          v6 = *(*(&v41 + 1) + 8 * v5);
          context = objc_autoreleasePoolPush();
          v7 = objc_opt_new();
          v8 = [(_PSInteractionsStatistics *)self personsIdsInPhotosForPastShareInteractions];
          v28 = v6;
          v9 = [v8 objectForKeyedSubscript:v6];

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v31 = v9;
          v10 = [v31 countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = 0;
            v32 = *v38;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v38 != v32)
                {
                  objc_enumerationMutation(v31);
                }

                v14 = *(*(&v37 + 1) + 8 * i);
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v15 = v14;
                v16 = [v15 countByEnumeratingWithState:&v33 objects:v45 count:16];
                if (v16)
                {
                  v17 = v16;
                  v18 = *v34;
                  do
                  {
                    for (j = 0; j != v17; ++j)
                    {
                      if (*v34 != v18)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v20 = *(*(&v33 + 1) + 8 * j);
                      if ([v4 containsObject:v20])
                      {
                        [v7 addObject:v20];
                        v21 = [v7 countForObject:v20];
                        if (v12 <= v21)
                        {
                          v12 = v21;
                        }
                      }
                    }

                    v17 = [v15 countByEnumeratingWithState:&v33 objects:v45 count:16];
                  }

                  while (v17);
                }
              }

              v11 = [v31 countByEnumeratingWithState:&v37 objects:v46 count:16];
            }

            while (v11);
          }

          else
          {
            v12 = 0;
          }

          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          self = v26;
          [(_PSInteractionsStatistics *)v26 setValue:v22 forFeature:@"numberOfSharesOfDetectedPeopleWithConversation" andConversationId:v28];

          objc_autoreleasePoolPop(context);
          v5 = v30 + 1;
        }

        while (v30 + 1 != v27);
        v27 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v27);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)computeNumberOfEngagedSuggestionsOfDetectedPeopleForPeopleDetectedInPhoto:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v27 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v27)
    {
      v25 = *v42;
      v26 = self;
      do
      {
        v5 = 0;
        do
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v30 = v5;
          v6 = *(*(&v41 + 1) + 8 * v5);
          context = objc_autoreleasePoolPush();
          v7 = objc_opt_new();
          v8 = [(_PSInteractionsStatistics *)self personsIdsInPhotosForPastSyntheticShareInteractions];
          v28 = v6;
          v9 = [v8 objectForKeyedSubscript:v6];

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v31 = v9;
          v10 = [v31 countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = 0;
            v32 = *v38;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v38 != v32)
                {
                  objc_enumerationMutation(v31);
                }

                v14 = *(*(&v37 + 1) + 8 * i);
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v15 = v14;
                v16 = [v15 countByEnumeratingWithState:&v33 objects:v45 count:16];
                if (v16)
                {
                  v17 = v16;
                  v18 = *v34;
                  do
                  {
                    for (j = 0; j != v17; ++j)
                    {
                      if (*v34 != v18)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v20 = *(*(&v33 + 1) + 8 * j);
                      if ([v4 containsObject:v20])
                      {
                        [v7 addObject:v20];
                        v21 = [v7 countForObject:v20];
                        if (v12 <= v21)
                        {
                          v12 = v21;
                        }
                      }
                    }

                    v17 = [v15 countByEnumeratingWithState:&v33 objects:v45 count:16];
                  }

                  while (v17);
                }
              }

              v11 = [v31 countByEnumeratingWithState:&v37 objects:v46 count:16];
            }

            while (v11);
          }

          else
          {
            v12 = 0;
          }

          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          self = v26;
          [(_PSInteractionsStatistics *)v26 setValue:v22 forFeature:@"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation" andConversationId:v28];

          objc_autoreleasePoolPop(context);
          v5 = v30 + 1;
        }

        while (v30 + 1 != v27);
        v27 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v27);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)computeMaxIoUOfSharesOfPeopleInPhotoForPeopleDetectedInPhoto:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v23 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v23)
    {
      v21 = *v33;
      v22 = self;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v32 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v7 = [(_PSInteractionsStatistics *)self personsIdsInPhotosForPastShareInteractions];
          v24 = v6;
          v8 = [v7 objectForKeyedSubscript:v6];

          v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v29;
            v12 = 0.0;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v29 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v14 = *(*(&v28 + 1) + 8 * j);
                v15 = [v4 mutableCopy];
                v16 = [v4 mutableCopy];
                [v15 intersectSet:v14];
                [v16 unionSet:v14];
                if ([v16 count])
                {
                  v12 = fmax(v12, [v15 count] / objc_msgSend(v16, "count"));
                }

                else
                {
                  v17 = +[_PSLogging rewriteChannel];
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    [(_PSInteractionsStatistics(StaticFeatures) *)&buf computeMaxIoUOfSharesOfPeopleInPhotoForPeopleDetectedInPhoto:v27, v17];
                  }
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v10);
          }

          else
          {
            v12 = 0.0;
          }

          v18 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
          self = v22;
          [(_PSInteractionsStatistics *)v22 setValue:v18 forFeature:@"maxIoUIoUSharesOfPeopleInPhotoWithConversation" andConversationId:v24];

          objc_autoreleasePoolPop(context);
        }

        v23 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v23);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)computeNumberOfSharesOfDetectedScenesInPhotoForSceneCategoriesDetectedInPhoto:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v21)
    {
      v20 = *v28;
      do
      {
        v5 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v27 + 1) + 8 * v5);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v7 = [(_PSInteractionsStatistics *)self config];
          v8 = [v7 configuredSceneCategoryTagNames];

          v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
          v22 = v5;
          if (v9)
          {
            v10 = v9;
            LODWORD(v11) = 0;
            v12 = *v24;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v24 != v12)
                {
                  objc_enumerationMutation(v8);
                }

                v14 = *(*(&v23 + 1) + 8 * i);
                if (([v4 containsObject:v14] & 1) == 0)
                {
                  [(_PSInteractionsStatistics *)self removeFeature:v14 andConversation:v6];
                }

                v15 = [(_PSInteractionsStatistics *)self valueForFeature:v14 forConversationId:v6];
                v16 = [v15 intValue];

                if (v11 <= v16)
                {
                  v11 = v16;
                }

                else
                {
                  v11 = v11;
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v10);
          }

          else
          {
            v11 = 0;
          }

          v17 = [MEMORY[0x1E696AD98] numberWithInt:v11];
          [(_PSInteractionsStatistics *)self setValue:v17 forFeature:@"numberOfSharesOfDetectedScenesInPhotoWithConversation" andConversationId:v6];

          v5 = v22 + 1;
        }

        while (v22 + 1 != v21);
        v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v21);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)sumWithKeyForArguments:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    v25 = v4;
    v26 = [v4 objectAtIndexedSubscript:2];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        v10 = 0;
        v27 = v8;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          v13 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v11];
          v14 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v6 forConversationId:v11];
          v15 = v14;
          if (v13)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            [v13 doubleValue];
            v18 = v17;
            [v15 doubleValue];
            [MEMORY[0x1E696AD98] numberWithDouble:v18 + v19];
            v20 = v9;
            v21 = v6;
            v23 = v22 = v5;
            [(_PSInteractionsStatistics *)self setValue:v23 forFeature:v26 andConversationId:v11];

            v5 = v22;
            v6 = v21;
            v9 = v20;
            v8 = v27;
          }

          objc_autoreleasePoolPop(v12);
          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v8);
    }

    v4 = v25;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)sumWithAddendForArguments:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v22 = v4;
    v23 = [v4 objectAtIndexedSubscript:2];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [(_PSInteractionsStatistics *)self conversationIds];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          v16 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v14];
          v17 = v16;
          if (v16)
          {
            v18 = MEMORY[0x1E696AD98];
            [v16 doubleValue];
            v20 = [v18 numberWithDouble:v8 + v19];
            [(_PSInteractionsStatistics *)self setValue:v20 forFeature:v23 andConversationId:v14];
          }

          objc_autoreleasePoolPop(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v4 = v22;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)multiplyWithKeyForArguments:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    v25 = v4;
    v26 = [v4 objectAtIndexedSubscript:2];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        v10 = 0;
        v27 = v8;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          v13 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v11];
          v14 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v6 forConversationId:v11];
          v15 = v14;
          if (v13)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            [v13 doubleValue];
            v18 = v17;
            [v15 doubleValue];
            [MEMORY[0x1E696AD98] numberWithDouble:v18 * v19];
            v20 = v9;
            v21 = v6;
            v23 = v22 = v5;
            [(_PSInteractionsStatistics *)self setValue:v23 forFeature:v26 andConversationId:v11];

            v5 = v22;
            v6 = v21;
            v9 = v20;
            v8 = v27;
          }

          objc_autoreleasePoolPop(v12);
          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v8);
    }

    v4 = v25;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)mutliplyWithScalarForArguments:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v22 = v4;
    v23 = [v4 objectAtIndexedSubscript:2];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [(_PSInteractionsStatistics *)self conversationIds];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          v16 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v14];
          v17 = v16;
          if (v16)
          {
            v18 = MEMORY[0x1E696AD98];
            [v16 doubleValue];
            v20 = [v18 numberWithDouble:v8 * v19];
            [(_PSInteractionsStatistics *)self setValue:v20 forFeature:v23 andConversationId:v14];
          }

          objc_autoreleasePoolPop(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v4 = v22;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)divideWithDivisorForArguments:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    v26 = v4;
    v27 = [v4 objectAtIndexedSubscript:2];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        v10 = 0;
        v28 = v8;
        do
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v30 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          v13 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v11];
          v14 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v6 forConversationId:v11];
          v15 = v14;
          if (v13)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            [v14 doubleValue];
            if (v17 != 0.0)
            {
              [v13 doubleValue];
              v19 = v18;
              [v15 doubleValue];
              [MEMORY[0x1E696AD98] numberWithDouble:v19 / v20];
              v21 = v9;
              v22 = v6;
              v24 = v23 = v5;
              [(_PSInteractionsStatistics *)self setValue:v24 forFeature:v27 andConversationId:v11];

              v5 = v23;
              v6 = v22;
              v9 = v21;
              v8 = v28;
            }
          }

          objc_autoreleasePoolPop(v12);
          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v8);
    }

    v4 = v26;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)exponentialWithMultiplierForArguments:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v21 = v4;
    v9 = [v4 objectAtIndexedSubscript:2];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          v16 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v14];
          v17 = v16;
          if (v16)
          {
            [v16 doubleValue];
            v19 = [MEMORY[0x1E696AD98] numberWithDouble:exp(v8 * v18)];
            [(_PSInteractionsStatistics *)self setValue:v19 forFeature:v9 andConversationId:v14];
          }

          objc_autoreleasePoolPop(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v4 = v21;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)reciprocalWithOffsetForArguments:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v22 = v4;
    v23 = [v4 objectAtIndexedSubscript:2];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [(_PSInteractionsStatistics *)self conversationIds];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          v16 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v14];
          v17 = v16;
          if (v16)
          {
            [v16 doubleValue];
            if (v8 + v18 != 0.0)
            {
              [v17 doubleValue];
              v20 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 / (v8 + v19)];
              [(_PSInteractionsStatistics *)self setValue:v20 forFeature:v23 andConversationId:v14];
            }
          }

          objc_autoreleasePoolPop(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v4 = v22;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)powerWithExponentForArguments:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v21 = v4;
    v9 = [v4 objectAtIndexedSubscript:2];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          v16 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v14];
          v17 = v16;
          if (v16)
          {
            [v16 doubleValue];
            v19 = [MEMORY[0x1E696AD98] numberWithDouble:{pow(v18, v8)}];
            [(_PSInteractionsStatistics *)self setValue:v19 forFeature:v9 andConversationId:v14];
          }

          objc_autoreleasePoolPop(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v4 = v21;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)laplaceProbabilityWithAlphaForArguments:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v30 = v4;
    v32 = [v4 objectAtIndexedSubscript:2];
    v9 = [(_PSInteractionsStatistics *)self conversationIds];
    v10 = [v9 count];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = [(_PSInteractionsStatistics *)self conversationIds];
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      v15 = 0.0;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:*(*(&v37 + 1) + 8 * i)];
          [v17 doubleValue];
          v15 = v15 + v18;
        }

        v13 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 0.0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v19 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      v22 = v15 + v8 * v10;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v33 + 1) + 8 * j);
          v25 = objc_autoreleasePoolPush();
          v26 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v24];
          [v26 doubleValue];
          v28 = [MEMORY[0x1E696AD98] numberWithDouble:(v8 + v27) / v22];
          [(_PSInteractionsStatistics *)self setValue:v28 forFeature:v32 andConversationId:v24];

          objc_autoreleasePoolPop(v25);
        }

        v20 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v20);
    }

    v4 = v30;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)logWithBaseForArguments:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v21 = v4;
    v9 = [v4 objectAtIndexedSubscript:2];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      v13 = log(v8);
      do
      {
        v14 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v23 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          v17 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v15];
          [v17 doubleValue];
          v19 = [MEMORY[0x1E696AD98] numberWithDouble:(log(v18) / v13)];
          [(_PSInteractionsStatistics *)self setValue:v19 forFeature:v9 andConversationId:v15];

          objc_autoreleasePoolPop(v16);
          ++v14;
        }

        while (v11 != v14);
        v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v4 = v21;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)renameFeatureForArguments:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(_PSInteractionsStatistics *)self conversationIds];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [(_PSInteractionsStatistics *)self valueForFeature:v5 forConversationId:v12];
          [(_PSInteractionsStatistics *)self setValue:v13 forFeature:v6 andConversationId:v12];
          [(_PSInteractionsStatistics *)self removeFeature:v5 andConversation:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)copyFeatureForArguments:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(_PSInteractionsStatistics *)self conversationIds];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [(_PSInteractionsStatistics *)self valueForFeature:v5 forConversationId:v12];
          [(_PSInteractionsStatistics *)self setValue:v13 forFeature:v6 andConversationId:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)aggregateSumForArguments:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 1)
  {
    v6 = [v4 objectAtIndexedSubscript:0];
    v26 = v4;
    v7 = [v4 objectAtIndexedSubscript:1];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = [(_PSInteractionsStatistics *)self conversationIds];
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v6 forConversationId:*(*(&v31 + 1) + 8 * i)];
          [v14 doubleValue];
          v12 = v12 + v15;
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 0.0;
    }

    v25 = v6;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = [(_PSInteractionsStatistics *)self conversationIds];
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * j);
          v22 = objc_autoreleasePoolPush();
          v23 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
          [(_PSInteractionsStatistics *)self setValue:v23 forFeature:v7 andConversationId:v21];

          objc_autoreleasePoolPop(v22);
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }

    v5 = v25;
    v4 = v26;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)imputeFeatureForArguments:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(_PSInteractionsStatistics *)self conversationIds];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([(_PSInteractionsStatistics *)self isUsingDefaultValue:v5 forConversationId:v12])
          {
            [(_PSInteractionsStatistics *)self setValue:v6 forFeature:v5 andConversationId:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (_PSInteractionsStatistics)initWithConfig:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = _PSInteractionsStatistics;
  v6 = [(_PSInteractionsStatistics *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    v8 = objc_opt_new();
    properties = v7->_properties;
    v7->_properties = v8;

    v10 = objc_opt_new();
    features = v7->_features;
    v7->_features = v10;

    v12 = objc_opt_new();
    personsIdsInPhotosForPastShareInteractions = v7->_personsIdsInPhotosForPastShareInteractions;
    v7->_personsIdsInPhotosForPastShareInteractions = v12;

    v14 = objc_opt_new();
    personsIdsInPhotosForPastSyntheticShareInteractions = v7->_personsIdsInPhotosForPastSyntheticShareInteractions;
    v7->_personsIdsInPhotosForPastSyntheticShareInteractions = v14;

    v16 = objc_opt_new();
    mostRecentInteractionTimestampByConversationId = v7->_mostRecentInteractionTimestampByConversationId;
    v7->_mostRecentInteractionTimestampByConversationId = v16;

    v18 = objc_opt_new();
    appsSharedFromByConversationId = v7->_appsSharedFromByConversationId;
    v7->_appsSharedFromByConversationId = v18;

    v20 = objc_opt_new();
    hasSharePlayedWith = v7->_hasSharePlayedWith;
    v7->_hasSharePlayedWith = v20;
  }

  return v7;
}

- (NSDictionary)features
{
  v2 = [(NSMutableDictionary *)self->_features copy];

  return v2;
}

- (NSDictionary)properties
{
  v2 = [(NSMutableDictionary *)self->_properties copy];

  return v2;
}

- (id)descriptionRedacted:(BOOL)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend(v5, "appendString:", @"_PSInteractionsStatistics(\n");
  features = self->_features;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49___PSInteractionsStatistics_descriptionRedacted___block_invoke;
  v10[3] = &unk_1E7C241F0;
  v7 = v5;
  v13 = a3;
  v11 = v7;
  v12 = self;
  [(NSMutableDictionary *)features enumerateKeysAndObjectsUsingBlock:v10];
  [v7 appendString:@""]);
  v8 = v7;

  return v7;
}

- (BOOL)containsConversationId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)addConversationId:(id)a3
{
  v14 = a3;
  v4 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:?];

  if (!v4)
  {
    v5 = objc_opt_new();
    [(NSMutableDictionary *)self->_properties setObject:v5 forKeyedSubscript:v14];

    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%du", arc4random()];
    v7 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v14];
    [v7 setObject:v6 forKeyedSubscript:@"privatizedConversationIdentifier"];
  }

  v8 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:v14];

  if (!v8)
  {
    v9 = objc_opt_new();
    [(NSMutableDictionary *)self->_features setObject:v9 forKeyedSubscript:v14];
  }

  v10 = [(NSMutableDictionary *)self->_personsIdsInPhotosForPastShareInteractions objectForKeyedSubscript:v14];

  if (!v10)
  {
    v11 = objc_opt_new();
    [(NSMutableDictionary *)self->_personsIdsInPhotosForPastShareInteractions setObject:v11 forKeyedSubscript:v14];
  }

  v12 = [(NSMutableDictionary *)self->_personsIdsInPhotosForPastSyntheticShareInteractions objectForKeyedSubscript:v14];

  if (!v12)
  {
    v13 = objc_opt_new();
    [(NSMutableDictionary *)self->_personsIdsInPhotosForPastSyntheticShareInteractions setObject:v13 forKeyedSubscript:v14];
  }
}

- (void)removeConversationIds:(id)a3
{
  features = self->_features;
  v5 = a3;
  [(NSMutableDictionary *)features removeObjectsForKeys:v5];
  [(NSMutableDictionary *)self->_properties removeObjectsForKeys:v5];
  [(NSMutableDictionary *)self->_personsIdsInPhotosForPastShareInteractions removeObjectsForKeys:v5];
  [(NSMutableDictionary *)self->_personsIdsInPhotosForPastSyntheticShareInteractions removeObjectsForKeys:v5];
  [(NSMutableDictionary *)self->_mostRecentInteractionTimestampByConversationId removeObjectsForKeys:v5];
  [(NSMutableDictionary *)self->_appsSharedFromByConversationId removeObjectsForKeys:v5];
}

- (id)privatizedConversationId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"privatizedConversationIdentifier"];

  return v4;
}

- (id)nonNilFeaturesForConversationId:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(_PSInteractionsStatisticsConfig *)self->_config defaultValues];
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
        v12 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v11 forConversationId:v4];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)initFeature:(id)a3 withValue:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(_PSInteractionsStatistics *)self conversationIds];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(_PSInteractionsStatistics *)self setValue:v7 forFeature:v6 andConversationId:*(*(&v14 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setValue:(id)a3 forFeature:(id)a4 andConversationId:(id)a5
{
  if (a3)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    [(_PSInteractionsStatistics *)self addConversationId:v8];
    v11 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:v8];

    [v11 setObject:v10 forKeyedSubscript:v9];
  }
}

- (void)removeFeature:(id)a3 andConversation:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:v6];
    [v8 removeObjectForKey:v9];
  }
}

- (id)valueForFeature:(id)a3 forConversationId:(id)a4
{
  features = self->_features;
  v6 = a3;
  v7 = [(NSMutableDictionary *)features objectForKeyedSubscript:a4];
  v8 = [v7 objectForKeyedSubscript:v6];

  return v8;
}

- (id)valueOrDefaultValueForFeature:(id)a3 forConversationId:(id)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:a4];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [(_PSInteractionsStatisticsConfig *)self->_config defaultValues];
    v10 = [v11 objectForKeyedSubscript:v6];
  }

  return v10;
}

- (BOOL)isUsingDefaultValue:(id)a3 forConversationId:(id)a4
{
  features = self->_features;
  v6 = a3;
  v7 = [(NSMutableDictionary *)features objectForKeyedSubscript:a4];
  v8 = [v7 objectForKeyedSubscript:v6];

  return v8 == 0;
}

- (void)incrementValueForFeature:(id)a3 andConversationId:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_PSInteractionsStatistics *)self addConversationId:v6];
  v8 = MEMORY[0x1E696AD98];
  v13 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:v6];
  v9 = [v13 objectForKeyedSubscript:v7];
  [v9 doubleValue];
  v11 = [v8 numberWithDouble:v10 + 1.0];
  v12 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:v6];

  [v12 setObject:v11 forKeyedSubscript:v7];
}

- (void)setValue:(id)a3 forProperty:(id)a4 andConversationId:(id)a5
{
  if (a3)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    [(_PSInteractionsStatistics *)self addConversationId:v8];
    v11 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];

    [v11 setObject:v10 forKeyedSubscript:v9];
  }
}

- (id)valueForProperty:(id)a3 forConversationId:(id)a4
{
  properties = self->_properties;
  v6 = a3;
  v7 = [(NSMutableDictionary *)properties objectForKeyedSubscript:a4];
  v8 = [v7 objectForKeyedSubscript:v6];

  return v8;
}

- (void)savePastSharedPhotoDetectedPersonIds:(id)a3 forConversationId:(id)a4 forSyntheticInteraction:(BOOL)a5
{
  v5 = a5;
  v12 = a3;
  v8 = a4;
  [(_PSInteractionsStatistics *)self addConversationId:v8];
  if ([v12 count])
  {
    v9 = 40;
    if (v5)
    {
      v9 = 48;
    }

    v10 = [*(&self->super.isa + v9) objectForKeyedSubscript:v8];
    v11 = [v12 copy];
    [v10 addObject:v11];
  }
}

- (void)computeStatisticsWithInteractionStore:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(_PSInteractionsStatisticsConfig *)self->_config maxComputationTime];
  v8 = [v6 initWithFormat:@"%.2f", v7];
  [v5 setObject:v8 forKeyedSubscript:@"maxComputationTime"];

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", -[_PSInteractionsStatisticsConfig fetchLimit](self->_config, "fetchLimit")];
  [v5 setObject:v9 forKeyedSubscript:@"fetchLimit"];

  v10 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_DEFAULT, "Processing sharing interactions", buf, 2u);
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __67___PSInteractionsStatistics_computeStatisticsWithInteractionStore___block_invoke;
  v42[3] = &unk_1E7C24218;
  v11 = v5;
  v43 = v11;
  v12 = MEMORY[0x1B8C8C060](v42);
  v13 = [(_PSInteractionsStatisticsConfig *)self->_config sharingInteractionPredicate];
  v14 = [(_PSInteractionsStatisticsConfig *)self->_config fetchLimit];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __67___PSInteractionsStatistics_computeStatisticsWithInteractionStore___block_invoke_2;
  v41[3] = &unk_1E7C24240;
  v41[4] = self;
  v33 = v12;
  [v4 iterInteractionRecordsWithPredicate:v13 fetchLimit:v14 sortAscending:0 updateTelemetry:v12 withBlock:v41];

  v15 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_DEFAULT, "Processing communication interactions", buf, 2u);
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __67___PSInteractionsStatistics_computeStatisticsWithInteractionStore___block_invoke_81;
  v39[3] = &unk_1E7C24218;
  v31 = v11;
  v40 = v31;
  v16 = MEMORY[0x1B8C8C060](v39);
  v17 = [(_PSInteractionsStatisticsConfig *)self->_config communicationInteractionPredicate];
  v18 = [(_PSInteractionsStatisticsConfig *)self->_config fetchLimit];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __67___PSInteractionsStatistics_computeStatisticsWithInteractionStore___block_invoke_2_85;
  v38[3] = &unk_1E7C24240;
  v38[4] = self;
  v32 = v16;
  [v4 iterInteractionRecordsWithPredicate:v17 fetchLimit:v18 sortAscending:0 updateTelemetry:v16 withBlock:v38];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = [(_PSInteractionsStatisticsConfig *)self->_config staticFeatures];
  v20 = [v19 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v34 + 1) + 8 * i);
        v25 = PSStaticFeatureFromString(v24);
        if (v25)
        {
          [(_PSInteractionsStatistics *)self dispatchComputationForBatchFeature:v25];
        }

        else
        {
          v26 = +[_PSLogging rewriteChannel];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v45 = v24;
            _os_log_error_impl(&dword_1B5ED1000, v26, OS_LOG_TYPE_ERROR, "Attempted to compute invalid batch statName %@", buf, 0xCu);
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v21);
  }

  v27 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [_PSInteractionsStatistics computeStatisticsWithInteractionStore:v27];
  }

  queryStats = self->_queryStats;
  self->_queryStats = v31;
  v29 = v31;

  v30 = *MEMORY[0x1E69E9840];
}

- (void)processInteractionRecord:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 targetBundleId];
  v6 = [v5 isEqual:@"com.apple.telephonyutilities.callservicesd"];

  if (v6)
  {
    v7 = MEMORY[0x1E69978D0];
    v8 = [v4 recipients];
    v9 = [v8 allObjects];
    v10 = [v7 generateConversationIdFromInteractionRecipientRecords:v9];

    if (v10)
    {
      [(NSMutableSet *)self->_hasSharePlayedWith addObject:v10];
    }
  }

  v11 = [v4 conversationId];
  if (v11)
  {
    [(_PSInteractionsStatistics *)self addConversationId:v11];
    [(_PSInteractionsStatistics *)self _updatePropertiesFromRecord:v4 forConversationId:v11];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [(_PSInteractionsStatisticsConfig *)self->_config staticFeatures];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = PSStaticFeatureFromString(v17);
          if (v18)
          {
            [(_PSInteractionsStatistics *)self dispatchComputationForIncrementalFeature:v18 conversationId:v11 interactionRecord:v4];
          }

          else
          {
            v19 = +[_PSLogging rewriteChannel];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v26 = v17;
              _os_log_error_impl(&dword_1B5ED1000, v19, OS_LOG_TYPE_ERROR, "Attempted to compute invalid incremental statName %@", buf, 0xCu);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v12 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(_PSInteractionsStatistics *)v4 processInteractionRecord:v12];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_updatePropertiesFromRecord:(id)a3 forConversationId:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_mostRecentInteractionTimestampByConversationId objectForKeyedSubscript:v6];
  [v7 doubleValue];
  v9 = v8;
  [v22 startDate];
  if (v9 <= v10)
  {
    v11 = [(_PSInteractionsStatisticsConfig *)self->_config appBundleIdForRecord:v22];
    if (v11)
    {
      [(_PSInteractionsStatistics *)self setValue:v11 forProperty:@"ConversationBundleId" andConversationId:v6];
    }

    v12 = [v22 contentURL];

    if (v12)
    {
      v13 = [v22 contentURL];
      [(_PSInteractionsStatistics *)self setValue:v13 forProperty:@"ConversationINImageURL" andConversationId:v6];
    }

    v14 = [v22 groupName];

    if (v14)
    {
      v15 = [v22 groupName];
      [(_PSInteractionsStatistics *)self setValue:v15 forProperty:@"ConversationGroupName" andConversationId:v6];
    }

    if ([v22 direction] == 1)
    {
      v16 = MEMORY[0x1E69978D0];
      v17 = [v22 recipients];
      v18 = [v17 allObjects];
      v19 = [v16 generateConversationIdFromInteractionRecipientRecords:v18];

      [(_PSInteractionsStatistics *)self setValue:v19 forProperty:@"RecipientListConversationId" andConversationId:v6];
    }

    v20 = MEMORY[0x1E696AD98];
    [v22 startDate];
    v21 = [v20 numberWithDouble:?];
    [(NSMutableDictionary *)self->_mostRecentInteractionTimestampByConversationId setObject:v21 forKeyedSubscript:v6];
  }
}

- (void)computeContentBasedFeaturesForPersonIdsDetectedInPhoto:(id)a3 sceneCategoriesDetectedInPhoto:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(_PSInteractionsStatisticsConfig *)self->_config staticFeatures];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = PSStaticFeatureFromString(v13);
        if (v14)
        {
          [(_PSInteractionsStatistics *)self dispatchComputationForContentFeature:v14 personIdsDetectedInPhoto:v6 sceneCategoriesDetectedInPhoto:v7];
        }

        else
        {
          v15 = +[_PSLogging rewriteChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v22 = v13;
            _os_log_error_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_ERROR, "Attempted to compute invalid incremental statName %@", buf, 0xCu);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)computeDynamicFeatures
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(_PSInteractionsStatisticsConfig *)self->_config dynamicFeatureRecipe];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 objectAtIndexedSubscript:0];
        v10 = [v8 subarrayWithRange:{1, objc_msgSend(v8, "count") - 1}];
        [(_PSInteractionsStatistics *)self computeDynamicFeatureWithOperatorName:v9 forArguments:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)privacyMitigatedFeatureValueFromName:(id)a3 forConversationId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v6 forConversationId:v7];
  [v9 doubleValue];
  v11 = v10;
  v12 = v6;
  if (([v12 isEqualToString:@"timeSinceLastIncomingInteraction"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"timeSinceLastOutgoingInteraction") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"timeSinceLastPhoneCallWithConversation") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"timeSinceLastPhotoShareWithConversation") & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"timeSinceLastShareWithConversation"))
  {
    v11 = round(v11);
  }

  [v8 setValue:v11];
  [v8 setDefaultValue:{-[_PSInteractionsStatistics isUsingDefaultValue:forConversationId:](self, "isUsingDefaultValue:forConversationId:", v12, v7)}];

  return v8;
}

- (void)dispatchComputationForContentFeature:(void *)a3 personIdsDetectedInPhoto:(void *)a4 sceneCategoriesDetectedInPhoto:
{
  v8 = a3;
  v7 = a4;
  if (a1)
  {
    switch(a2)
    {
      case 28:
        [a1 computeMaxIoUOfSharesOfPeopleInPhotoForPeopleDetectedInPhoto:v8];
        break;
      case 29:
        [a1 computeNumberOfEngagedSuggestionsOfDetectedPeopleForPeopleDetectedInPhoto:v8];
        break;
      case 30:
        [a1 computeNumberOfSharesOfDetectedPeopleForPeopleDetectedInPhoto:v8];
        break;
      case 31:
        [a1 computeNumberOfSharesOfDetectedScenesInPhotoForSceneCategoriesDetectedInPhoto:v7];
        break;
      default:
        break;
    }
  }
}

- (void)dispatchComputationForBatchFeature:(void *)a1
{
  if (a1)
  {
    switch(a2)
    {
      case 0x16uLL:
        a1 = [a1 computeNumberOfSharesToTargetApp];
        break;
      case 0x17uLL:
        a1 = [a1 computeNumberOfEngagedSuggestionsToTargetApp];
        break;
      case 0x18uLL:
        a1 = [a1 computeNumberOfEngagedSuggestionsOfPeopleInPhoto];
        break;
      case 0x19uLL:
        a1 = [a1 computeNumberOfSharesOfPeopleInPhoto];
        break;
      case 0x1AuLL:
        a1 = [a1 computeNumberOfSharesOfScenesInPhoto];
        break;
      case 0x1BuLL:
        a1 = [a1 computeNumberOfFacesSharedWithConversation];
        break;
      default:
        return a1;
    }
  }

  return a1;
}

- (void)dispatchComputationForIncrementalFeature:(void *)a3 conversationId:(void *)a4 interactionRecord:
{
  v8 = a3;
  v7 = a4;
  if (a1)
  {
    switch(a2)
    {
      case 1:
        [OUTLINED_FUNCTION_0_1() computeNumberOfSharesWithConversationId:? interactionRecord:?];
        break;
      case 2:
        [OUTLINED_FUNCTION_0_1() computeNumberOfSharesFromCurrentAppWithConversationForConversationId:? interactionRecord:?];
        break;
      case 3:
        [OUTLINED_FUNCTION_0_1() computeNumberOfSharesOfTopDomainURLWithConversationForConversationId:? interactionRecord:?];
        break;
      case 4:
        [OUTLINED_FUNCTION_0_1() computeNumberOfOutgoingInteractionsWithConversationId:? interactionRecord:?];
        break;
      case 5:
        [OUTLINED_FUNCTION_0_1() computeNumberOfRecentOutgoingInteractionsWithConversationForConversationId:? interactionRecord:?];
        break;
      case 6:
        [OUTLINED_FUNCTION_0_1() computeNumberOfIncomingInteractionsWithConversationId:? interactionRecord:?];
        break;
      case 7:
        [OUTLINED_FUNCTION_0_1() computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId:? interactionRecord:?];
        break;
      case 8:
        [OUTLINED_FUNCTION_0_1() computeNumberOfEngagedSuggestionsWithConversationId:? interactionRecord:?];
        break;
      case 9:
        [OUTLINED_FUNCTION_0_1() computeNumberOfEngagedSuggestionsFromCurrentAppWithConversationForConversationId:? interactionRecord:?];
        break;
      case 10:
        [OUTLINED_FUNCTION_0_1() computeNumberOfEngagedSuggestionsOfTopDomainURLWithConversationForConversationId:? interactionRecord:?];
        break;
      case 11:
        [OUTLINED_FUNCTION_0_1() computeAppsSharedFromForConversationId:? interactionRecord:?];
        break;
      case 12:
        [OUTLINED_FUNCTION_0_1() computeTimeSinceLastIncomingInteractionForConversationId:? interactionRecord:?];
        break;
      case 13:
        [OUTLINED_FUNCTION_0_1() computeTimeSinceLastOutgoingInteractionForConversationId:? interactionRecord:?];
        break;
      case 14:
        [OUTLINED_FUNCTION_0_1() computeTimeSinceLastUIEngagementForConversationId:? interactionRecord:?];
        break;
      case 15:
        [OUTLINED_FUNCTION_0_1() computeTimeSinceLastPhoneCallWithConversationId:? interactionRecord:?];
        break;
      case 16:
        [OUTLINED_FUNCTION_0_1() computeTimeSinceLastPhotoShareWithConversationId:? interactionRecord:?];
        break;
      case 17:
        [OUTLINED_FUNCTION_0_1() computeTimeSinceLastShareWithConversation:? interactionRecord:?];
        break;
      case 18:
        [OUTLINED_FUNCTION_0_1() computeHasEverSharePlayedWithConversationId:? interactionRecord:?];
        break;
      case 19:
        [OUTLINED_FUNCTION_0_1() computeIsFirstPartyAppForConversationId:? interactionRecord:?];
        break;
      case 20:
        [OUTLINED_FUNCTION_0_1() computePhotoFeaturesForConversationId:? interactionRecord:?];
        break;
      case 21:
        [OUTLINED_FUNCTION_0_1() computeScenesBasedFeaturesForConversationId:? interactionRecord:?];
        break;
      default:
        break;
    }
  }
}

- (void)computeDynamicFeatureWithOperatorName:(void *)a3 forArguments:
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    switch(PSDynamicFeatureOperatorFromString(v5))
    {
      case 1uLL:
        [OUTLINED_FUNCTION_1_0() sumWithKeyForArguments:?];
        break;
      case 2uLL:
        [OUTLINED_FUNCTION_1_0() sumWithAddendForArguments:?];
        break;
      case 3uLL:
        [OUTLINED_FUNCTION_1_0() multiplyWithKeyForArguments:?];
        break;
      case 4uLL:
        [OUTLINED_FUNCTION_1_0() mutliplyWithScalarForArguments:?];
        break;
      case 5uLL:
        [OUTLINED_FUNCTION_1_0() divideWithDivisorForArguments:?];
        break;
      case 6uLL:
        [OUTLINED_FUNCTION_1_0() exponentialWithMultiplierForArguments:?];
        break;
      case 7uLL:
        [OUTLINED_FUNCTION_1_0() reciprocalWithOffsetForArguments:?];
        break;
      case 8uLL:
        [OUTLINED_FUNCTION_1_0() powerWithExponentForArguments:?];
        break;
      case 9uLL:
        [OUTLINED_FUNCTION_1_0() laplaceProbabilityWithAlphaForArguments:?];
        break;
      case 0xAuLL:
        [OUTLINED_FUNCTION_1_0() logWithBaseForArguments:?];
        break;
      case 0xBuLL:
        [OUTLINED_FUNCTION_1_0() renameFeatureForArguments:?];
        break;
      case 0xCuLL:
        [OUTLINED_FUNCTION_1_0() copyFeatureForArguments:?];
        break;
      case 0xDuLL:
        [OUTLINED_FUNCTION_1_0() imputeFeatureForArguments:?];
        break;
      case 0xEuLL:
        [OUTLINED_FUNCTION_1_0() aggregateSumForArguments:?];
        break;
      default:
        v7 = +[_PSLogging rewriteChannel];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 138412290;
          v10 = v5;
          _os_log_error_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_ERROR, "Attempted to compute unknown operator: %@", &v9, 0xCu);
        }

        break;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)processInteractionRecord:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138477827;
  v4 = a1;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "Skipping interaction with nil conversationId: %{private}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end