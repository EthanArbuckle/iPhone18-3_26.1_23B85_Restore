@interface PRSAnonymousPipelineManager
+ (BOOL)_dataCollectionAllowedForBundle:(id)a3;
+ (id)allowedBundles;
+ (id)candidateLogsBasePath;
+ (id)candidateLogsURLForBundle:(id)a3;
+ (id)dateFormatter;
+ (id)dateFromFileURL:(id)a3;
+ (id)logURLForCurrentTimeAndBundle:(id)a3 forEngagement:(BOOL)a4;
+ (id)sharedManager;
+ (id)submittedLogsURL;
+ (id)submittedLogsURLForUser:(id)a3;
+ (id)submitttedSpotlightReportsError:(id *)a3;
- (BOOL)_shouldDataCollectForEngagementReservoirSamplingForClientBundle:(id)a3;
- (BOOL)_shouldDataCollectWithEngagedBundle:(id)a3 withQueryId:(id)a4 forClientBundle:(id)a5;
- (BOOL)dateIsExpired:(id)a3;
- (PRSAnonymousPipelineManager)init;
- (id)_abandonedItemsFromItems:(id)a3 withIndexOfEngagedItem:(unint64_t)a4;
- (id)_relativePositionForItem:(id)a3 inItems:(id)a4 withIndexOfEngagedItem:(int64_t)a5 forClientBundle:(id)a6;
- (id)retrieveFeedbackURLToSendInDirectory:(id)a3;
- (void)_addQueryInfoToJSONWriter:(json_writer *)a3 withQuery:(id)a4 cepData:(id)a5 forClient:(id)a6 debugInfoAllowed:(BOOL)a7 keyboardPrimaryLanguage:(id)a8;
- (void)_addRelativePositionToFeatureDict:(id)a3 relativePosition:(id)a4 forItem:(id)a5 debugInfoEnabled:(BOOL)a6;
- (void)_extractTrainingSamplesForQuery:(id)a3 withIndexOfEngagedItem:(unint64_t)a4 withItems:(id)a5 withRanker:(id)a6 withCEPData:(id)a7 forClientBundle:(id)a8 debugInfoEnabled:(BOOL)a9 keyboardPrimaryLanguage:(id)a10;
- (void)_increaseUserDefaultsEngagementCountForBundle:(id)a3;
- (void)_increaseUserDefaultsEngagementCountForDateWithClientBundle:(id)a3;
- (void)_updateUserDefaultsWithEngagedBundle:(id)a3 andQueryID:(id)a4 forClientBundle:(id)a5;
- (void)_writeResult:(json_writer *)a3 item:(id)a4;
- (void)cleanUp;
- (void)deleteCandidateLogs;
- (void)deleteExpiredSubmittedLogs;
- (void)extractTrainingDataWithItemAtIndex:(unint64_t)a3 withItems:(id)a4 withRanker:(id)a5 forQuery:(id)a6 dataCollectAllowed:(BOOL)a7 queryID:(id)a8 withCEPData:(id)a9 forClientBundle:(id)a10 debugInfoEnabled:(BOOL)a11 keyboardPrimaryLanguage:(id)a12 clientID:(id)a13;
- (void)queryWillFinishWithItems:(id)a3 forClient:(id)a4 forQuery:(id)a5 anonymousDataCollectionAllowed:(BOOL)a6;
- (void)registerXPCActivity;
- (void)sendMLFeedbackActivity:(id)a3 clientID:(id)a4;
- (void)userEngagedItemWithIdentifier:(id)a3 forBundle:(id)a4 forQuery:(id)a5;
@end

@implementation PRSAnonymousPipelineManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[PRSAnonymousPipelineManager sharedManager];
  }

  v3 = sharedAnonManager;

  return v3;
}

void __44__PRSAnonymousPipelineManager_sharedManager__block_invoke()
{
  v9[65] = *MEMORY[0x1E69E9840];
  v0 = sNSNotFound;
  sNSNotFound = &unk_1F55B3BA0;

  v1 = objc_opt_new();
  v2 = sharedAnonManager;
  sharedAnonManager = v1;

  v9[0] = @"kMDItemSpecialCondition1";
  v9[1] = @"kMDItemSpecialCondition2";
  v9[2] = @"kMDItemSpecialCondition3";
  v9[3] = @"kMDItemSpecialCondition4";
  v9[4] = @"kMDItemSpecialCondition5";
  v9[5] = @"ItemIsFlagged";
  v9[6] = @"PortraitImportantPeople";
  v9[7] = @"PhoneFavoritesInReceivers";
  v9[8] = @"PhoneFavoritesInSender";
  v9[9] = @"VIPInEmails";
  v9[10] = @"receiver_is_vip2";
  v9[11] = @"sender_is_vip2";
  v9[12] = @"kMDItemNamedLocationExactWord";
  v9[13] = @"kMDItemNamedLocationExactPrefix";
  v9[14] = @"kMDItemNamedLocationExact";
  v9[15] = @"kMDItemArtistPrefixTokenized";
  v9[16] = @"kMDItemArtistPrefixWord";
  v9[17] = @"kMDItemArtistExactWord";
  v9[18] = @"kMDItemArtistExactPrefix";
  v9[19] = @"kMDItemAuthorsPrefixTokenized";
  v9[20] = @"kMDItemRecipientsPrefixTokenized";
  v9[21] = @"kMDItemAuthorsPrefixWord";
  v9[22] = @"kMDItemRecipientsPrefixWord";
  v9[23] = @"kMDItemAuthorsExactPrefix";
  v9[24] = @"kMDItemRecipientsExactPrefix";
  v9[25] = @"kMDItemAuthorsExact";
  v9[26] = @"kMDItemRecipientsExact";
  v9[27] = @"kMDItemDisplayNamePrefixWord";
  v9[28] = @"kMDItemSubjectPrefixWord";
  v9[29] = @"kMDItemTitlePrefixWord";
  v9[30] = @"kMDItemRankingTagMatch";
  v9[31] = @"kMDItemUserIsSender";
  v9[32] = @"kMDItemContentCreationRecent";
  v9[33] = @"kMDItemEscapedWord";
  v9[34] = @"kMDItemCreationDateThisYear";
  v9[35] = @"kMDItemLastUsedDateThisYear";
  v9[36] = @"kMDItemContentCreationThisMonth";
  v9[37] = @"kMDItemLastUsedDateThisMonth";
  v9[38] = @"kMDItemContentCreationThisWeek";
  v9[39] = @"kMDItemLastUsedDateThisWeek";
  v9[40] = @"kMDItemEventTodayToNextYear";
  v9[41] = @"kMDItemEventLastMonthToToday";
  v9[42] = @"kMDItemEventTodayToNextMonth";
  v9[43] = @"kMDItemEventTodayToNextWeek";
  v9[44] = @"kMDItemEventTodayToLastWeek";
  v9[45] = @"kMDItemEventYesterdayToToday";
  v9[46] = @"kMDItemEventToday";
  v9[47] = @"kMDItemTextContentTokenizedMatch";
  v9[48] = @"kMDItemTextContentMatch";
  v9[49] = @"kMDItemAuthorsOrRecipientsTokenizedPrefixMatch";
  v9[50] = @"kMDItemDescriptionTokenizedPrefixMatch";
  v9[51] = @"kMDItemAlbumTokenizedPrefixMatch";
  v9[52] = @"kMDItemAuthorsOrRecipientsNonTokenizedPrefixMatch";
  v9[53] = @"kMDItemDescriptionPrefixWordMatch";
  v9[54] = @"kMDItemComposerPrefixWordMatch";
  v9[55] = @"kMDItemAlbumPrefixWordMatch";
  v9[56] = @"kMDItemComposerNonTokenizedPrefixMatch";
  v9[57] = @"kMDItemComposerNonTokenizedWordMatch";
  v9[58] = @"kMDItemAppSBLaunchedDateLastWeek";
  v9[59] = @"kMDItemAuthorsOrRecipientsPrefixWordMatch";
  v9[60] = @"kMDItemDescriptionExactPrefixMatch";
  v9[61] = @"kMDItemAlbumNonTokenizedPrefixMatch";
  v9[62] = @"kMDItemAuthorsOrRecipientsExactMatch";
  v9[63] = @"kMDItemDescriptionNonTokenizedWordMatch";
  v9[64] = @"kMDItemAlbumNonTokenizedWordMatch";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:65];
  v4 = sScoreMappingLSB;
  sScoreMappingLSB = v3;

  v8[0] = @"kMDItemUserActivity";
  v8[1] = @"kMDItemAlternateNameNonTokenizedWordMatch";
  v8[2] = @"kMDItemAlternateNamePrefixWordMatch";
  v8[3] = @"kMDItemAlternateNameExactMatch";
  v8[4] = @"kMDItemShortcutRecent";
  v8[5] = @"kMDItemDueDateInLastOneToNextTwentyFourHours";
  v8[6] = @"kMDItemDueDateInLastOneToNextOneHour";
  v8[7] = @"kMDItemDisplayNameCorrections";
  v8[8] = @"kMDItemDisplayNameOrSubjectOrTitleTokenizedPrefixMatch";
  v8[9] = @"kMDItemContentCreationDateToday";
  v8[10] = @"kMDItemBoostedVIPFavorites";
  v8[11] = @"kMDItemBoostedVIPFavoritesRecent";
  v8[12] = @"kMDItemLastSpaceAndTotalMatchAndDisplayNameOrSubjectOrTitleWordMatch";
  v8[13] = @"kMDItemDisplayNameOrSubjectOrTitleNonTokenizedWordMatch";
  v8[14] = @"kMDItemDisplayNameOrSubjectOrTitleNonTokenizedPrefixMatch";
  v8[15] = @"kMDItemDisplayNameOrSubjectOrTitleExactMatch";
  v8[16] = @"PRSRankingRecency365Days";
  v8[17] = @"PRSRankingRecency270Days";
  v8[18] = @"PRSRankingRecency180Days";
  v8[19] = @"PRSRankingRecency90Days";
  v8[20] = @"PRSRankingRecency30Days";
  v8[21] = @"PRSRankingRecency15Days";
  v8[22] = @"PRSRankingRecency7Days";
  v8[23] = @"PRSRankingRecency1Days";
  v8[24] = @"kMDItemPolicyPrefixMatch_0_3";
  v8[25] = @"kMDItemPolicyPrefixMatch_1_3";
  v8[26] = @"kMDItemPolicyPrefixMatch_2_3";
  v8[27] = @"kMDItemPolicyExactWordMatch_0_3";
  v8[28] = @"kMDItemPolicyExactWordMatch_1_3";
  v8[29] = @"kMDItemPolicyExactWordMatch_2_3";
  v8[30] = @"PRSRankingMostlyExactMultiFieldsDomainTCMatch";
  v8[31] = @"PRSRankingTCNearMatch";
  v8[32] = @"PRSRankingOneTwoTermsMultiPhraseTCNearMatch";
  v8[33] = @"PRSRankingTCOrderedMatch";
  v8[34] = @"PRSRankingOneTwoTermsMultiPhraseTCOrderedMatch";
  v8[35] = @"PRSRankingTCOrderedPhraseMatch";
  v8[36] = @"PRSRankingOneTwoTermsMultiPhraseTCOrderedPhraseMatch";
  v8[37] = @"PRSRankingMostlyExactMultiFieldsTCMatch";
  v8[38] = @"PRSRankingMostlyExactMultiFieldsTCNearMatch";
  v8[39] = @"PRSRankingTCMostlyExactOrderedPhraseMatch";
  v8[40] = @"PRSRankingOneTermMultiPhraseTCMostlyExactOrderedPhraseMatch";
  v8[41] = @"PRSRankingTwoTermsMultiPhraseTCMostlyExactOrderedPhraseMatch";
  v8[42] = @"PRSRankingExactMultiFieldsTCNearMatch";
  v8[43] = @"PRSRankingTCExactNearMatch";
  v8[44] = @"PRSRankingOneTermMultiPhraseTCExactNearMatch";
  v8[45] = @"PRSRankingTwoTermsMultiPhraseTCExactNearMatch";
  v8[46] = @"PRSRankingTCExactOrderedMatch";
  v8[47] = @"PRSRankingOneTermMultiPhraseTCExactOrderedMatch";
  v8[48] = @"PRSRankingTwoTermsMultiPhraseTCExactOrderedMatch";
  v8[49] = @"PRSRankingTCExactOrderedPhraseMatch";
  v8[50] = @"PRSRankingOneTermMultiPhraseTCExactOrderedPhraseMatch";
  v8[51] = @"PRSRankingTwoTermsMultiPhraseTCExactOrderedPhraseMatch";
  v8[52] = @"PRSPolicyFieldsPrefixMatch";
  v8[53] = @"PRSPolicyFieldsPhraseMatchBit";
  v8[54] = @"PRSPolicyFieldsMostlyExactPhraseMatchBit";
  v8[55] = @"exact_policy_flag_bit";
  v8[56] = @"PRSPolicyFieldsExactPhraseMatchBit";
  v8[57] = @"kMDItemShortcutWithinBagParamValue";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:58];
  v6 = sScoreMappingMSB;
  sScoreMappingMSB = v5;

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)logURLForCurrentTimeAndBundle:(id)a3 forEngagement:(BOOL)a4
{
  v4 = a3;
  v5 = [PRSAnonymousPipelineManager candidateLogsURLForBundle:v4];
  v6 = [(__CFString *)v4 length];
  v7 = @"searchd";
  if (v6)
  {
    v7 = v4;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = v7;
  v10 = +[PRSAnonymousPipelineManager dateFormatter];
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [v10 stringFromDate:v11];
  v13 = [v8 stringWithFormat:@"%@-%@", v9, v12];

  v14 = [v5 URLByAppendingPathComponent:v13];
  v15 = [v14 URLByAppendingPathExtension:@"json"];

  return v15;
}

+ (id)submittedLogsURLForUser:(id)a3
{
  v3 = NSHomeDirectoryForUser(a3);
  v4 = [v3 stringByAppendingString:@"/Library/Spotlight/Diagnostics/SubmittedReports"];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PRSAnonymousPipelineManager_submittedLogsURLForUser___block_invoke;
  block[3] = &unk_1E8595778;
  v10 = v4;
  v5 = submittedLogsURLForUser__onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&submittedLogsURLForUser__onceToken, block);
  }

  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:1 relativeToURL:0];

  return v7;
}

void __55__PRSAnonymousPipelineManager_submittedLogsURLForUser___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v2 fileExistsAtPath:*(a1 + 32)] & 1) == 0)
  {
    [v2 createDirectoryAtPath:*(a1 + 32) withIntermediateDirectories:1 attributes:0 error:0];
  }
}

+ (id)submittedLogsURL
{
  v2 = NSUserName();
  v3 = [PRSAnonymousPipelineManager submittedLogsURLForUser:v2];

  return v3;
}

+ (id)candidateLogsBasePath
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingString:@"/Library/Spotlight/Diagnostics/CandidateReports"];

  return v3;
}

+ (id)candidateLogsURLForBundle:(id)a3
{
  v3 = a3;
  v4 = +[PRSAnonymousPipelineManager candidateLogsBasePath];
  if ([(__CFString *)v3 length])
  {
    v5 = v3;
  }

  else
  {
    v5 = @"com.apple.searchd";
  }

  v6 = [v4 stringByAppendingPathComponent:v5];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v7 fileExistsAtPath:v6] & 1) == 0)
  {
    [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:1 relativeToURL:0];

  return v8;
}

+ (id)dateFormatter
{
  v2 = objc_opt_new();
  [v2 setDateFormat:@"yyyy-MM-dd"];
  v3 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [v2 setTimeZone:v3];

  return v2;
}

+ (id)dateFromFileURL:(id)a3
{
  v3 = [a3 lastPathComponent];
  v4 = [v3 stringByDeletingPathExtension];

  [v4 rangeOfString:@"com.apple.searchd.suggestions"];
  if (v5 || ([v4 rangeOfString:@"com.apple.searchd"], v5))
  {
    v6 = v5 + 1;
    if (v5 + 1 < [v4 length])
    {
      v7 = [v4 substringFromIndex:v6];

      if (v7)
      {
LABEL_9:
        v4 = v7;
        v10 = +[PRSAnonymousPipelineManager dateFormatter];
        v7 = [v10 dateFromString:v7];

        goto LABEL_11;
      }

      v4 = 0;
    }
  }

  [v4 rangeOfString:@"com.apple.mobilemail"];
  if (v8 && (v9 = v8 + 1, v8 + 1 < [v4 length]))
  {
    v7 = [v4 substringFromIndex:v9];

    if (v7)
    {
      goto LABEL_9;
    }

    v4 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_11:

  return v7;
}

+ (id)allowedBundles
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.mobilemail";
  v5[1] = @"com.apple.searchd";
  v5[2] = @"com.apple.searchd.suggestions";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (BOOL)_dataCollectionAllowedForBundle:(id)a3
{
  v3 = a3;
  v4 = +[PRSAnonymousPipelineManager allowedBundles];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (PRSAnonymousPipelineManager)init
{
  v7.receiver = self;
  v7.super_class = PRSAnonymousPipelineManager;
  v2 = [(PRSAnonymousPipelineManager *)&v7 init];
  if (v2)
  {
    [(PRSAnonymousPipelineManager *)v2 setSubmissionEnabled:DiagnosticLogSubmissionEnabled()];
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
    [(PRSAnonymousPipelineManager *)v2 setUserDefaults:v3];

    [(PRSAnonymousPipelineManager *)v2 setIsInternalDevice:os_variant_has_internal_diagnostics()];
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v5 = dispatch_queue_create("com.apple.spotlight.dataCollection", v4);
    [(PRSAnonymousPipelineManager *)v2 setQueue:v5];

    [(PRSAnonymousPipelineManager *)v2 registerXPCActivity];
  }

  return v2;
}

- (void)sendMLFeedbackActivity:(id)a3 clientID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PRSAnonymousPipelineManager *)self submissionEnabled])
  {
    if (v6)
    {
      dispatch_group_enter(v6);
    }

    v8 = [(PRSAnonymousPipelineManager *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PRSAnonymousPipelineManager_sendMLFeedbackActivity_clientID___block_invoke;
    block[3] = &unk_1E85957A0;
    block[4] = self;
    v10 = v7;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void __63__PRSAnonymousPipelineManager_sendMLFeedbackActivity_clientID___block_invoke(uint64_t a1)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = MEMORY[0x1E695DFF8];
  v4 = +[PRSAnonymousPipelineManager candidateLogsBasePath];
  v5 = [v3 fileURLWithPath:v4];
  v47[0] = *MEMORY[0x1E695EBE8];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  v43 = 0;
  v33 = v2;
  v7 = [v2 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v6 options:0 error:&v43];
  v8 = v43;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    v13 = 0x1E695D000uLL;
    v35 = v9;
    v36 = a1;
    v34 = *v40;
    do
    {
      v14 = 0;
      v15 = v8;
      v37 = v11;
      do
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = [*(a1 + 32) retrieveFeedbackURLToSendInDirectory:*(*(&v39 + 1) + 8 * v14)];
        if (v16)
        {
          v17 = objc_alloc(*(v13 + 3824));
          v38 = v15;
          v18 = [v17 initWithContentsOfURL:v16 options:8 error:&v38];
          v8 = v38;

          if (v8)
          {
            v19 = PRSLogCategoryAnonymousPipeline();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v45 = v8;
              _os_log_error_impl(&dword_1D9F69000, v19, OS_LOG_TYPE_ERROR, "Error reading file for submission %@", buf, 0xCu);
            }
          }

          else
          {
            v19 = [objc_alloc(MEMORY[0x1E69CA008]) initWithType:3 data:v18];
            v20 = [*(a1 + 32) delegate];
            [v20 sendCustomFeedback:v19 clientID:*(a1 + 40)];

            v21 = PRSLogCategoryAnonymousPipeline();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v18 length];
              *buf = 134217984;
              v45 = v22;
              _os_log_impl(&dword_1D9F69000, v21, OS_LOG_TYPE_DEFAULT, "Sending custom feedback len %lu", buf, 0xCu);
            }

            v23 = [v16 lastPathComponent];
            v24 = [v16 path];
            v25 = [v24 UTF8String];

            v26 = +[PRSAnonymousPipelineManager submittedLogsURL];
            v27 = [v26 URLByAppendingPathComponent:v23];
            v28 = [v27 path];
            v29 = [v28 UTF8String];

            if (v25 && v29)
            {
              rename(v25, v29, v30);
            }

            v9 = v35;
            a1 = v36;
            v11 = v37;
            v8 = 0;
            v12 = v34;
            v13 = 0x1E695D000;
          }

          v15 = v8;
        }

        else
        {
          v8 = v15;
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v11);
  }

  [*(a1 + 32) cleanUp];
  v31 = *(a1 + 48);
  if (v31)
  {
    dispatch_group_leave(v31);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)registerXPCActivity
{
  v9 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v2 = PRSLogCategoryAnonymousPipeline();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "com.apple.searchd.sendmlfeedback";
    _os_log_impl(&dword_1D9F69000, v2, OS_LOG_TYPE_DEFAULT, "Registering XPC activity:%s", buf, 0xCu);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PRSAnonymousPipelineManager_registerXPCActivity__block_invoke;
  v4[3] = &unk_1E8595EA8;
  objc_copyWeak(&v5, &location);
  xpc_activity_register("com.apple.searchd.sendmlfeedback", *MEMORY[0x1E69E9C50], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
  v3 = *MEMORY[0x1E69E9840];
}

void __50__PRSAnonymousPipelineManager_registerXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v7 = PRSLogCategoryAnonymousPipeline();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v15 = "com.apple.searchd.sendmlfeedback";
        _os_log_impl(&dword_1D9F69000, v7, OS_LOG_TYPE_INFO, "Performing XPC activity:%s", buf, 0xCu);
      }

      xpc_activity_set_state(v3, 4);
      v8 = dispatch_group_create();
      [WeakRetained sendMLFeedbackActivity:v8 clientID:0];
      v9 = dispatch_get_global_queue(9, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__PRSAnonymousPipelineManager_registerXPCActivity__block_invoke_187;
      block[3] = &unk_1E8595778;
      v13 = v3;
      dispatch_group_notify(v8, v9, block);
    }

    else
    {
      xpc_activity_set_state(v3, 5);
    }

LABEL_12:

    goto LABEL_13;
  }

  v10 = state;
  if (xpc_activity_should_defer(v3) && xpc_activity_should_defer(v3) && xpc_activity_set_state(v3, 3))
  {
    WeakRetained = PRSLogCategoryAnonymousPipeline();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "com.apple.searchd.sendmlfeedback";
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&dword_1D9F69000, WeakRetained, OS_LOG_TYPE_INFO, "Deferring XPC activity:%s, state:%ld", buf, 0x16u);
    }

    goto LABEL_12;
  }

LABEL_13:
  objc_autoreleasePoolPop(v4);

  v11 = *MEMORY[0x1E69E9840];
}

void __50__PRSAnonymousPipelineManager_registerXPCActivity__block_invoke_187(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  xpc_activity_set_state(*(a1 + 32), 5);
  v1 = PRSLogCategoryAnonymousPipeline();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "com.apple.searchd.sendmlfeedback";
    _os_log_impl(&dword_1D9F69000, v1, OS_LOG_TYPE_INFO, "Marked XPC activity:%s as done", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (id)_abandonedItemsFromItems:(id)a3 withIndexOfEngagedItem:(unint64_t)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  if (a4)
  {
    v7 = a4 - 48;
    if (a4 > 0x30)
    {
      if (a4 == 49)
      {
        goto LABEL_29;
      }

      v25 = [v5 objectAtIndexedSubscript:0];
      [v6 addObject:v25];

      v8 = v5;
      v9 = v7;
      v10 = 48;
    }

    else
    {
      v8 = v5;
      v9 = 0;
      v10 = a4;
    }

    goto LABEL_24;
  }

  if ([v5 count] < 0x33)
  {
    if ([v5 count] < 2)
    {
      goto LABEL_29;
    }

    v10 = [v5 count] - 1;
    v8 = v5;
    v9 = 1;
LABEL_24:
    v12 = [v8 subarrayWithRange:{v9, v10}];
    [v6 addObjectsFromArray:v12];
    goto LABEL_28;
  }

  v11 = [v5 objectAtIndexedSubscript:0];
  v12 = [v11 dataCollectionBundle];

  v13 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = v5;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v17 = *v34;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v34 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v33 + 1) + 8 * i);
      v20 = [v19 dataCollectionBundle];
      if (![v20 isEqualToString:v12])
      {

LABEL_14:
        v23 = [v6 count];
        v22 = v6;
        if (v23 > 0x31)
        {
          continue;
        }

        goto LABEL_15;
      }

      v21 = [v13 count];

      v22 = v13;
      if (v21 >= 0x32)
      {
        goto LABEL_14;
      }

LABEL_15:
      [v22 addObject:v19];
    }

    v16 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
  }

  while (v16);
LABEL_18:

  v24 = [v6 count];
  if (([v13 count] + v24) > 0x32)
  {
    v26 = 50 - [v13 count];
    v27 = [v6 count] - v26;
    v28 = [v13 subarrayWithRange:{0, v27}];
    [v6 replaceObjectsInRange:v26 withObjectsFromArray:{v27, v28}];

    v5 = v32;
    if ([v13 count] > v27)
    {
      v29 = [v13 subarrayWithRange:{v27, objc_msgSend(v13, "count") - v27}];
      [v6 addObjectsFromArray:v29];
    }
  }

  else
  {
    [v6 addObjectsFromArray:v13];
    v5 = v32;
  }

LABEL_28:
LABEL_29:

  v30 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_relativePositionForItem:(id)a3 inItems:(id)a4 withIndexOfEngagedItem:(int64_t)a5 forClientBundle:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = [v9 indexOfObject:a3];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = sNSNotFound;
  }

  else
  {
    v13 = v11;
    if ([v10 isEqualToString:@"com.apple.searchd.suggestions"])
    {
      v14 = 0;
    }

    else
    {
      if (v13 >= a5)
      {
        v15 = a5;
      }

      else
      {
        v15 = v13;
      }

      if (v13 <= a5)
      {
        v16 = a5;
      }

      else
      {
        v16 = v13;
      }

      if (v15 >= v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        do
        {
          v18 = [v9 objectAtIndex:v15];
          v17 += ([v18 bundleIDType] >> 19) & 1;

          ++v15;
        }

        while (v16 != v15);
      }

      if (v13 < a5)
      {
        v14 = v17;
      }

      else
      {
        v14 = -v17;
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v13 - a5 + v14];
  }

  v19 = v12;

  return v19;
}

- (void)_addRelativePositionToFeatureDict:(id)a3 relativePosition:(id)a4 forItem:(id)a5 debugInfoEnabled:(BOOL)a6
{
  v6 = a6;
  v13 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [objc_opt_class() relativePositionKey];
  [v13 setObject:v10 forKeyedSubscript:v11];

  if (v6)
  {
    v12 = [v9 identifier];
    [v13 setObject:v12 forKeyedSubscript:@"identifier"];
  }
}

- (void)_addQueryInfoToJSONWriter:(json_writer *)a3 withQuery:(id)a4 cepData:(id)a5 forClient:(id)a6 debugInfoAllowed:(BOOL)a7 keyboardPrimaryLanguage:(id)a8
{
  v8 = a7;
  v11 = a4;
  v12 = PRSLogCategoryAnonymousPipeline();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1D9F69000, v12, OS_LOG_TYPE_DEFAULT, "[Logging] Writing query info to json writer.", v27, 2u);
  }

  if (v8)
  {
    json_writer_add_key(a3, "query", 5uLL, 1);
    json_writer_add_string(a3, [v11 UTF8String], 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  v13 = [MEMORY[0x1E695DF58] currentLocale];
  if (!v13)
  {
    v13 = [MEMORY[0x1E695DF58] systemLocale];
  }

  v14 = [v13 countryCode];
  v15 = [v13 languageCode];
  json_writer_add_key(a3, "country_code", 0xCuLL, 1);
  v16 = [v14 UTF8String];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = "";
  }

  json_writer_add_string(a3, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
  json_writer_add_key(a3, "language_code", 0xDuLL, 1);
  v18 = [v15 UTF8String];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = "";
  }

  json_writer_add_string(a3, v19, 0xFFFFFFFFFFFFFFFFLL, 0);
  json_writer_add_key(a3, "is_internal", 0xBuLL, 1);
  if ([(PRSAnonymousPipelineManager *)self isInternalDevice])
  {
    v20 = "1";
  }

  else
  {
    v20 = "0";
  }

  json_writer_add_raw_value(a3, v20, 1uLL);
  v21 = MGCopyAnswer();
  v22 = MGCopyAnswer();
  json_writer_add_key(a3, "device_type", 0xBuLL, 1);
  v23 = [v21 UTF8String];
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = "";
  }

  json_writer_add_string(a3, v24, 0xFFFFFFFFFFFFFFFFLL, 0);
  json_writer_add_key(a3, "device_build_number", 0x13uLL, 1);
  v25 = [v22 UTF8String];
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = "";
  }

  json_writer_add_string(a3, v26, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)_increaseUserDefaultsEngagementCountForBundle:(id)a3
{
  v4 = a3;
  v12 = [(PRSAnonymousPipelineManager *)self userDefaults];
  v5 = [PRSAnonymousPipelineManager engagementCountKeyForBundle:v4];

  v6 = [v12 objectForKey:v5];
  v7 = v6;
  v8 = &unk_1F55B3BB8;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [v9 integerValue];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10 + 1];
  [v12 setObject:v11 forKey:v5];
}

- (void)_updateUserDefaultsWithEngagedBundle:(id)a3 andQueryID:(id)a4 forClientBundle:(id)a5
{
  v9 = a3;
  v7 = a4;
  if ([a5 isEqualToString:@"com.apple.searchd"])
  {
    v8 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
    [v8 setObject:v9 forKey:@"collectedBundleID"];
    if ([v7 integerValue] != -1)
    {
      [v8 setObject:v7 forKey:@"lastQueryID"];
    }
  }
}

- (void)_increaseUserDefaultsEngagementCountForDateWithClientBundle:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PRSAnonymousPipelineManager *)self userDefaults];
  v6 = [PRSAnonymousPipelineManager engagementCountForDateKeyForBundle:v4];
  v7 = [PRSAnonymousPipelineManager engagementDateKeyForBundle:v4];

  v8 = [v5 objectForKey:v6];
  v9 = [v5 objectForKey:v7];
  v10 = +[PRSAnonymousPipelineManager dateFormatter];
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [v10 stringFromDate:v11];

  if (v9 && [v9 isEqualToString:v12])
  {
    v13 = [v8 integerValue] + 1;
  }

  else
  {
    v13 = 1;
  }

  [v5 setObject:v12 forKey:v7];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
  [v5 setObject:v14 forKey:v6];

  v15 = PRSLogCategoryAnonymousPipeline();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = 134218754;
    v18 = [v8 integerValue];
    v19 = 2112;
    v20 = v9;
    v21 = 2048;
    v22 = v13;
    v23 = 2112;
    v24 = v12;
    _os_log_debug_impl(&dword_1D9F69000, v15, OS_LOG_TYPE_DEBUG, "[Sampling] Previous count:%lu previous date:%@ new count:%lu new date:%@", &v17, 0x2Au);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldDataCollectForEngagementReservoirSamplingForClientBundle:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.searchd"])
  {
    v5 = [(PRSAnonymousPipelineManager *)self userDefaults];
    v6 = [PRSAnonymousPipelineManager engagementCountForDateKeyForBundle:v4];
    v7 = [PRSAnonymousPipelineManager engagementDateKeyForBundle:v4];
    v8 = [v5 objectForKey:v6];
    v9 = [v5 objectForKey:v7];
    if ([v8 integerValue] < 1)
    {
      v11 = 0;
    }

    else
    {
      v10 = arc4random_uniform([v8 integerValue]);
      v11 = v10 == 0;
      v12 = PRSLogCategoryAnonymousPipeline();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        if (v13)
        {
          v16 = 134218498;
          v17 = [v8 integerValue];
          v18 = 2048;
          v19 = v10;
          v20 = 2112;
          v21 = v9;
          _os_log_debug_impl(&dword_1D9F69000, v12, OS_LOG_TYPE_DEBUG, "[Sampling] Skipping this sample. Engagement count:%lu random num:%lu date:%@", &v16, 0x20u);
        }
      }

      else if (v13)
      {
        [(PRSAnonymousPipelineManager *)v8 _shouldDataCollectForEngagementReservoirSamplingForClientBundle:v9, v12];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)_shouldDataCollectWithEngagedBundle:(id)a3 withQueryId:(id)a4 forClientBundle:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 isEqualToString:@"com.apple.searchd"])
  {
    v10 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
    v11 = [PRSAnonymousPipelineManager engagementCountKeyForBundle:v9];
    v12 = [v10 objectForKey:v11];

    v13 = [v10 objectForKey:@"lastQueryID"];
    if ([v8 integerValue] == -1 || (v14 = objc_msgSend(v13, "unsignedLongLongValue"), v14 != objc_msgSend(v8, "unsignedLongLongValue")))
    {
      v25 = v12;
      v16 = [v12 integerValue];
      v17 = [v10 objectForKey:@"collectedBundleID"];
      v18 = +[PRSBagHandler sharedHandler];
      v19 = [v18 anonymousMetadataUndesiredBundleIDs];
      v20 = [v19 copy];

      v21 = [v20 containsObject:v17];
      v22 = [v20 containsObject:v7];
      v23 = v22;
      if (!v21 || !v22)
      {
        goto LABEL_12;
      }

      if (v16 <= 2)
      {
        v16 = 2;
      }

      if (arc4random() % v16)
      {
        v15 = 0;
      }

      else
      {
LABEL_12:
        v15 = (v17 == 0) | v21 | v23 ^ 1;
      }

      v12 = v25;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15 & 1;
}

- (void)extractTrainingDataWithItemAtIndex:(unint64_t)a3 withItems:(id)a4 withRanker:(id)a5 forQuery:(id)a6 dataCollectAllowed:(BOOL)a7 queryID:(id)a8 withCEPData:(id)a9 forClientBundle:(id)a10 debugInfoEnabled:(BOOL)a11 keyboardPrimaryLanguage:(id)a12 clientID:(id)a13
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a12;
  v24 = a13;
  v25 = [(PRSAnonymousPipelineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __201__PRSAnonymousPipelineManager_extractTrainingDataWithItemAtIndex_withItems_withRanker_forQuery_dataCollectAllowed_queryID_withCEPData_forClientBundle_debugInfoEnabled_keyboardPrimaryLanguage_clientID___block_invoke;
  block[3] = &unk_1E8595ED0;
  block[4] = self;
  v37 = v22;
  v46 = a7;
  v38 = v17;
  v39 = v19;
  v40 = v18;
  v41 = v21;
  v47 = a11;
  v42 = v23;
  v43 = v20;
  v44 = v24;
  v45 = a3;
  v35 = v24;
  v26 = v20;
  v27 = v23;
  v28 = v21;
  v29 = v18;
  v30 = v19;
  v31 = v17;
  v32 = v22;
  dispatch_async(v25, block);
}

void __201__PRSAnonymousPipelineManager_extractTrainingDataWithItemAtIndex_withItems_withRanker_forQuery_dataCollectAllowed_queryID_withCEPData_forClientBundle_debugInfoEnabled_keyboardPrimaryLanguage_clientID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _increaseUserDefaultsEngagementCountForBundle:*(a1 + 40)];
  [*(a1 + 32) _increaseUserDefaultsEngagementCountForDateWithClientBundle:*(a1 + 40)];
  if (*(a1 + 112) == 1 && ([*(a1 + 40) isEqualToString:@"com.apple.searchd.suggestions"] & 1) == 0)
  {
    v2 = *(a1 + 104);
    if (v2 >= [*(a1 + 48) count])
    {
      v5 = PRSLogCategoryAnonymousPipeline();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __201__PRSAnonymousPipelineManager_extractTrainingDataWithItemAtIndex_withItems_withRanker_forQuery_dataCollectAllowed_queryID_withCEPData_forClientBundle_debugInfoEnabled_keyboardPrimaryLanguage_clientID___block_invoke_cold_1((a1 + 104), v5, v7, v8, v9, v10, v11, v12);
      }

      goto LABEL_12;
    }

    if ([*(a1 + 32) _shouldDataCollectForEngagementReservoirSamplingForClientBundle:*(a1 + 40)])
    {
      v3 = PRSLogCategoryAnonymousPipeline();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 48) count];
        *buf = 134217984;
        v16 = v4;
        _os_log_impl(&dword_1D9F69000, v3, OS_LOG_TYPE_DEFAULT, "[Logging] Extracting dataCollection for %lu items", buf, 0xCu);
      }

      v5 = [*(a1 + 48) objectAtIndexedSubscript:*(a1 + 104)];
      v6 = [v5 dataCollectionBundle];
      LOBYTE(v14) = *(a1 + 113);
      [*(a1 + 32) _extractTrainingSamplesForQuery:*(a1 + 56) withIndexOfEngagedItem:*(a1 + 104) withItems:*(a1 + 48) withRanker:*(a1 + 64) withCEPData:*(a1 + 72) forClientBundle:*(a1 + 40) debugInfoEnabled:v14 keyboardPrimaryLanguage:*(a1 + 80)];
      [*(a1 + 32) _updateUserDefaultsWithEngagedBundle:v6 andQueryID:*(a1 + 88) forClientBundle:*(a1 + 40)];
      if ([*(a1 + 32) isInternalDevice])
      {
        [*(a1 + 32) sendMLFeedbackActivity:0 clientID:*(a1 + 96)];
      }

LABEL_12:
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_writeResult:(json_writer *)a3 item:(id)a4
{
  object = a4;
  json_writer_add_key(a3, "_identifier", 0xBuLL, 1);
  v5 = [object identifier];
  json_writer_add_string(a3, [v5 UTF8String], 0xFFFFFFFFFFFFFFFFLL, 0);

  v6 = PRSModelManagerAssociatedObjectKeyForType(1);
  v7 = PRSModelManagerAssociatedObjectKeyForType(2);
  v8 = PRSModelManagerAssociatedObjectKeyForType(3);
  v9 = objc_getAssociatedObject(object, v6);
  v10 = objc_getAssociatedObject(object, v7);
  v11 = objc_getAssociatedObject(object, v8);
  json_writer_add_key(a3, "_l2_score", 9uLL, 1);
  v66 = v11;
  [v11 doubleValue];
  json_writer_add_double(a3, v12);
  json_writer_add_key(a3, "_l2_inputs", 0xAuLL, 1);
  json_writer_begin_dictionary(a3);
  if ([v10 unsignedIntegerValue])
  {
    v13 = 0;
    do
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", v13];
      v15 = [v14 UTF8String];

      v16 = strlen(v15);
      json_writer_add_key(a3, v15, v16, 1);
      v17 = [v9 objectAtIndexedSubscript:v13];
      [v17 floatValue];
      json_writer_add_double(a3, v18);

      ++v13;
    }

    while (v13 < [v10 unsignedIntegerValue]);
  }

  json_writer_end_dictionary(a3);
  v19 = PRSModelManagerAssociatedObjectKeyForType(4);
  v20 = PRSModelManagerAssociatedObjectKeyForType(5);
  v21 = PRSModelManagerAssociatedObjectKeyForType(6);
  v22 = objc_getAssociatedObject(object, v19);
  v23 = objc_getAssociatedObject(object, v20);
  v24 = objc_getAssociatedObject(object, v21);
  json_writer_add_key(a3, "_l2e_score", 0xAuLL, 1);
  v65 = v24;
  [v24 doubleValue];
  json_writer_add_double(a3, v25);
  json_writer_add_key(a3, "_l2e_inputs", 0xBuLL, 1);
  json_writer_begin_dictionary(a3);
  if ([v23 unsignedIntegerValue])
  {
    v26 = 0;
    do
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", v26];
      v28 = [v27 UTF8String];

      v29 = strlen(v28);
      json_writer_add_key(a3, v28, v29, 1);
      v30 = [v22 objectAtIndexedSubscript:v26];
      [v30 floatValue];
      json_writer_add_double(a3, v31);

      ++v26;
    }

    while (v26 < [v23 unsignedIntegerValue]);
  }

  json_writer_end_dictionary(a3);
  v32 = [object sectionBundleIdentifier];
  if ([v32 isEqualToString:@"com.apple.mobilemail"])
  {
    v62 = v32;
    v63 = v10;
    v64 = v9;
    v33 = PRSModelManagerAssociatedObjectKeyForType(7);
    v34 = PRSModelManagerAssociatedObjectKeyForType(8);
    v35 = PRSModelManagerAssociatedObjectKeyForType(9);
    v36 = objc_getAssociatedObject(object, v33);
    v37 = objc_getAssociatedObject(object, v34);
    v38 = objc_getAssociatedObject(object, v35);
    json_writer_add_key(a3, "_within_bundle_l2_score", 0x17uLL, 1);
    v59 = v38;
    [v38 doubleValue];
    json_writer_add_double(a3, v39);
    json_writer_add_key(a3, "_within_bundle_l2_inputs", 0x18uLL, 1);
    json_writer_begin_dictionary(a3);
    if ([v37 unsignedIntegerValue])
    {
      v40 = 0;
      do
      {
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", v40];
        v42 = [v41 UTF8String];

        v43 = strlen(v42);
        json_writer_add_key(a3, v42, v43, 1);
        v44 = [v36 objectAtIndexedSubscript:v40];
        [v44 floatValue];
        json_writer_add_double(a3, v45);

        ++v40;
      }

      while (v40 < [v37 unsignedIntegerValue]);
    }

    v60 = v37;
    v61 = v36;
    json_writer_end_dictionary(a3);
    v46 = PRSModelManagerAssociatedObjectKeyForType(10);
    v47 = PRSModelManagerAssociatedObjectKeyForType(11);
    v48 = PRSModelManagerAssociatedObjectKeyForType(12);
    v49 = objc_getAssociatedObject(object, v46);
    v50 = objc_getAssociatedObject(object, v47);
    v51 = objc_getAssociatedObject(object, v48);
    json_writer_add_key(a3, "_within_bundle_l2e_score", 0x18uLL, 1);
    [v51 doubleValue];
    json_writer_add_double(a3, v52);
    json_writer_add_key(a3, "_within_bundle_l2e_inputs", 0x19uLL, 1);
    json_writer_begin_dictionary(a3);
    if ([v50 unsignedIntegerValue])
    {
      v53 = 0;
      do
      {
        v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", v53];
        v55 = [v54 UTF8String];

        v56 = strlen(v55);
        json_writer_add_key(a3, v55, v56, 1);
        v57 = [v49 objectAtIndexedSubscript:v53];
        [v57 floatValue];
        json_writer_add_double(a3, v58);

        ++v53;
      }

      while (v53 < [v50 unsignedIntegerValue]);
    }

    json_writer_end_dictionary(a3);

    v10 = v63;
    v9 = v64;
    v32 = v62;
  }
}

- (void)_extractTrainingSamplesForQuery:(id)a3 withIndexOfEngagedItem:(unint64_t)a4 withItems:(id)a5 withRanker:(id)a6 withCEPData:(id)a7 forClientBundle:(id)a8 debugInfoEnabled:(BOOL)a9 keyboardPrimaryLanguage:(id)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  PRSRankingSDEnabledFlagState();
  v22 = [(PRSAnonymousPipelineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __176__PRSAnonymousPipelineManager__extractTrainingSamplesForQuery_withIndexOfEngagedItem_withItems_withRanker_withCEPData_forClientBundle_debugInfoEnabled_keyboardPrimaryLanguage___block_invoke;
  block[3] = &unk_1E8595EF8;
  v30 = v17;
  v31 = self;
  v32 = v20;
  v33 = v18;
  v34 = v16;
  v35 = v19;
  v38 = a9;
  v36 = v21;
  v37 = a4;
  v23 = v21;
  v24 = v19;
  v25 = v16;
  v26 = v18;
  v27 = v20;
  v28 = v17;
  dispatch_async(v22, block);
}

void __176__PRSAnonymousPipelineManager__extractTrainingSamplesForQuery_withIndexOfEngagedItem_withItems_withRanker_withCEPData_forClientBundle_debugInfoEnabled_keyboardPrimaryLanguage___block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 88);
  v1 = *(a1 + 88);
  if (v1 == 0x7FFFFFFFFFFFFFFFLL || v1 >= [*(a1 + 32) count])
  {
    v5 = PRSLogCategoryAnonymousPipeline();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __201__PRSAnonymousPipelineManager_extractTrainingDataWithItemAtIndex_withItems_withRanker_forQuery_dataCollectAllowed_queryID_withCEPData_forClientBundle_debugInfoEnabled_keyboardPrimaryLanguage_clientID___block_invoke_cold_1(v2, v5, v49, v50, v51, v52, v53, v54);
    }
  }

  else
  {
    v4 = [*(a1 + 40) _abandonedItemsFromItems:*(a1 + 32) withIndexOfEngagedItem:*(a1 + 88)];
    v5 = [v4 mutableCopy];

    if ([v5 count]>= 0x10)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        [v5 exchangeObjectAtIndex:v7 withObjectAtIndex:v7 + arc4random_uniform([v5 count]+ v6)];
        ++v7;
        --v6;
      }

      while (v6 != -15);
    }

    v8 = [v5 count];
    if (v8 >= 0xF)
    {
      v9 = 15;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v5 subarrayWithRange:0, v9];
    v11 = [v10 count];
    v12 = v11 + 1;
    v13 = 14 - v11;
    v14 = [*(a1 + 32) count];
    if (v13 >= v14 - v12)
    {
      v15 = v14 - v12;
    }

    else
    {
      v15 = v13;
    }

    v16 = objc_opt_new();
    if (v15)
    {
      v17 = [*(a1 + 32) subarrayWithRange:{v12, v15}];
      [v16 addObjectsFromArray:v17];
    }

    v18 = *(a1 + 40);
    v19 = [objc_opt_class() logURLForCurrentTimeAndBundle:*(a1 + 48) forEngagement:1];
    v20 = [v19 path];
    v21 = [v20 stringByAppendingString:@".tmp"];
    v22 = json_writer_create_with_path([v21 UTF8String], 0x10000);
    if (v22)
    {
      v23 = v22;
      v61 = v20;
      json_writer_begin_dictionary(v22);
      v24 = *(a1 + 56);
      if (v24)
      {
        [v24 serializeAnonymousQueryLogFeaturesToJSONWithWriter:v23];
      }

      v60 = v21;
      v62 = v19;
      [*(a1 + 40) _addQueryInfoToJSONWriter:v23 withQuery:*(a1 + 64) cepData:*(a1 + 72) forClient:*(a1 + 48) debugInfoAllowed:*(a1 + 96) keyboardPrimaryLanguage:*(a1 + 80)];
      v25 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 88)];
      json_writer_add_key(v23, "ENGAGED_RESULT", 0xEuLL, 1);
      json_writer_begin_dictionary(v23);
      v26 = +[PRSL2FeatureVector allowedAttributeSetForAnonPipeline];
      v59 = v25;
      [v25 serializeAnonymousLogFeaturesToJSONWithWriter:v23 allowedAttributeSet:v26];

      json_writer_add_key(v23, "item_pos", 8uLL, 1);
      json_writer_add_uint64(v23, *(a1 + 88));
      if (*(a1 + 96) == 1)
      {
        json_writer_add_key(v23, "identifier", 0xAuLL, 1);
        json_writer_add_string(v23, [*(a1 + 64) UTF8String], 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      json_writer_end_dictionary(v23);
      json_writer_add_key(v23, "ABANDONED_RESULTS", 0x11uLL, 1);
      json_writer_begin_array(v23);
      v27 = [*(a1 + 48) isEqualToString:@"com.apple.searchd.suggestions"];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v63 = v10;
      v28 = v10;
      v29 = [v28 countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v69;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v69 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v68 + 1) + 8 * i);
            v34 = v33;
            if ((v27 & 1) != 0 || ([v33 bundleIDType] & 0x80000) == 0)
            {
              json_writer_begin_dictionary(v23);
              v35 = +[PRSL2FeatureVector allowedAttributeSetForAnonPipeline];
              [v34 serializeAnonymousLogFeaturesToJSONWithWriter:v23 allowedAttributeSet:v35];

              json_writer_end_dictionary(v23);
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v68 objects:v73 count:16];
        }

        while (v30);
      }

      json_writer_end_array(v23);
      json_writer_add_key(v23, "OTHER_RESULTS", 0xDuLL, 1);
      json_writer_begin_array(v23);
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v36 = v16;
      v37 = [v36 countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v65;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v65 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v64 + 1) + 8 * j);
            v42 = v41;
            if ((v27 & 1) != 0 || ([v41 bundleIDType] & 0x80000) == 0)
            {
              json_writer_begin_dictionary(v23);
              v43 = +[PRSL2FeatureVector allowedAttributeSetForAnonPipeline];
              [v42 serializeAnonymousLogFeaturesToJSONWithWriter:v23 allowedAttributeSet:v43];

              json_writer_end_dictionary(v23);
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v64 objects:v72 count:16];
        }

        while (v38);
      }

      json_writer_end_array(v23);
      json_writer_end_dictionary(v23);
      json_writer_flush(v23);
      err = json_writer_get_err(v23);
      json_writer_dispose(v23);
      v21 = v60;
      [v60 UTF8String];
      v45 = compress_file_in_place();
      if (err | v45)
      {
        v46 = v45;
        v47 = PRSLogCategoryAnonymousPipeline();
        v19 = v62;
        v48 = v59;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          __176__PRSAnonymousPipelineManager__extractTrainingSamplesForQuery_withIndexOfEngagedItem_withItems_withRanker_withCEPData_forClientBundle_debugInfoEnabled_keyboardPrimaryLanguage___block_invoke_cold_1(err, v46, v47);
        }

        unlink([v60 UTF8String]);
        v10 = v63;
        v20 = v61;
      }

      else
      {
        v55 = [v60 UTF8String];
        v20 = v61;
        v56 = [v61 UTF8String];
        rename(v55, v56, v57);
        v10 = v63;
        v19 = v62;
        v48 = v59;
      }
    }
  }

  v58 = *MEMORY[0x1E69E9840];
}

- (BOOL)dateIsExpired:(id)a3
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a3;
  v5 = [v3 dateWithTimeIntervalSinceNow:-604800.0];
  v6 = [v4 earlierDate:v5];

  return v6 == v4;
}

- (void)deleteCandidateLogs
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = +[PRSAnonymousPipelineManager candidateLogsBasePath];
  [v3 removeItemAtPath:v2 error:0];
}

- (void)deleteExpiredSubmittedLogs
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = +[PRSAnonymousPipelineManager submittedLogsURL];
  v25[0] = *MEMORY[0x1E695EBE8];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v23 = 0;
  v17 = v4;
  v6 = [v3 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v5 options:0 error:&v23];
  v7 = v23;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [PRSAnonymousPipelineManager dateFromFileURL:v13];
        if ([(PRSAnonymousPipelineManager *)self dateIsExpired:v14])
        {
          v18 = v7;
          [v3 removeItemAtURL:v13 error:&v18];
          v15 = v18;

          v7 = v15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)retrieveFeedbackURLToSendInDirectory:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v31[0] = *MEMORY[0x1E695EBE8];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v29 = 0;
  v6 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:v5 options:0 error:&v29];
  v7 = v29;

  if (v7)
  {
    v8 = PRSLogCategoryAnonymousPipeline();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(PRSAnonymousPipelineManager *)v7 retrieveFeedbackURLToSendInDirectory:v8, v9, v10, v11, v12, v13, v14];
    }

    goto LABEL_4;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v16 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (!v16)
  {
LABEL_4:
    v15 = 0;
    goto LABEL_16;
  }

  v17 = v16;
  v24 = v3;
  v18 = *v26;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v26 != v18)
      {
        objc_enumerationMutation(v8);
      }

      v20 = *(*(&v25 + 1) + 8 * i);
      v21 = [v20 path];
      if ([v21 hasSuffix:@".json"])
      {
        v15 = v20;

        goto LABEL_15;
      }
    }

    v17 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

  v15 = 0;
LABEL_15:
  v3 = v24;
LABEL_16:

  v22 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)cleanUp
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PRSAnonymousPipelineManager *)self userDefaults];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = +[PRSAnonymousPipelineManager allowedBundles];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [PRSAnonymousPipelineManager engagementCountKeyForBundle:*(*(&v11 + 1) + 8 * v8)];
        [v3 setObject:&unk_1F55B3BB8 forKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v3 removeObjectForKey:@"collectedBundleID"];
  [v3 removeObjectForKey:@"lastQueryID"];
  [(PRSAnonymousPipelineManager *)self deleteCandidateLogs];
  [(PRSAnonymousPipelineManager *)self deleteExpiredSubmittedLogs];

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)submitttedSpotlightReportsError:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = +[PRSAnonymousPipelineManager submittedLogsURL];
  v13[0] = *MEMORY[0x1E695EBE8];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v12 = 0;
  v7 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v6 options:0 error:&v12];
  v8 = v12;

  if (a3 && v8)
  {
    v9 = v8;
    *a3 = v8;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)queryWillFinishWithItems:(id)a3 forClient:(id)a4 forQuery:(id)a5 anonymousDataCollectionAllowed:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(PRSAnonymousPipelineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__PRSAnonymousPipelineManager_queryWillFinishWithItems_forClient_forQuery_anonymousDataCollectionAllowed___block_invoke;
  block[3] = &unk_1E8595F20;
  block[4] = self;
  v18 = v11;
  v21 = a6;
  v19 = v10;
  v20 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(v13, block);
}

void __106__PRSAnonymousPipelineManager_queryWillFinishWithItems_forClient_forQuery_anonymousDataCollectionAllowed___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) submissionEnabled] && +[PRSAnonymousPipelineManager _dataCollectionAllowedForBundle:](PRSAnonymousPipelineManager, "_dataCollectionAllowedForBundle:", *(a1 + 40)) && *(a1 + 64) == 1)
  {
    v2 = PRSLogCategoryAnonymousPipeline();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 48) count];
      v4 = *(a1 + 40);
      v5 = *(a1 + 56);
      *buf = 134218498;
      v14 = v3;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1D9F69000, v2, OS_LOG_TYPE_INFO, "QueryWillFinish with %lu items client:%@ query:%@", buf, 0x20u);
    }

    [*(a1 + 32) setLastTopHitQueryString:*(a1 + 56)];
    [*(a1 + 32) setLastTopHitQueryItems:*(a1 + 48)];
    v6 = [*(a1 + 32) topHitDataCollectionTimer];

    if (v6)
    {
      v7 = [*(a1 + 32) topHitDataCollectionTimer];
      dispatch_source_cancel(v7);
    }

    v8 = [*(a1 + 32) queue];
    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 1uLL, 0, v8);

    v10 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __106__PRSAnonymousPipelineManager_queryWillFinishWithItems_forClient_forQuery_anonymousDataCollectionAllowed___block_invoke_243;
    handler[3] = &unk_1E8595778;
    handler[4] = *(a1 + 32);
    dispatch_source_set_event_handler(v9, handler);
    [*(a1 + 32) setTopHitDataCollectionTimer:v9];
    dispatch_resume(v9);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __106__PRSAnonymousPipelineManager_queryWillFinishWithItems_forClient_forQuery_anonymousDataCollectionAllowed___block_invoke_243(uint64_t a1)
{
  [*(a1 + 32) setLastTopHitQueryItems:0];
  v2 = *(a1 + 32);

  return [v2 setLastTopHitQueryString:0];
}

- (void)userEngagedItemWithIdentifier:(id)a3 forBundle:(id)a4 forQuery:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PRSLogCategoryAnonymousPipeline();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_1D9F69000, v11, OS_LOG_TYPE_DEFAULT, "UserEngagedItem id:%@ bundle:%@ query:%@", buf, 0x20u);
  }

  v12 = v10;
  v13 = [(PRSAnonymousPipelineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PRSAnonymousPipelineManager_userEngagedItemWithIdentifier_forBundle_forQuery___block_invoke;
  block[3] = &unk_1E85957F0;
  block[4] = self;
  v14 = v12;
  v19 = v14;
  v20 = v9;
  v21 = v8;
  v22 = v14;
  v15 = v8;
  v16 = v9;
  dispatch_async(v13, block);

  v17 = *MEMORY[0x1E69E9840];
}

void __80__PRSAnonymousPipelineManager_userEngagedItemWithIdentifier_forBundle_forQuery___block_invoke(uint64_t a1)
{
  v16 = [*(a1 + 32) lastTopHitQueryString];
  if (![v16 isEqualToString:*(a1 + 40)])
  {
LABEL_11:

    return;
  }

  v2 = [PRSAnonymousPipelineManager _dataCollectionAllowedForBundle:*(a1 + 48)];

  if (v2)
  {
    v3 = [*(a1 + 32) lastTopHitQueryItems];
    v4 = [v3 count];

    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = [*(a1 + 32) lastTopHitQueryItems];
        v7 = [v6 objectAtIndexedSubscript:v5];

        v8 = [v7 identifier];
        v9 = [v8 isEqualToString:*(a1 + 56)];

        if (v9)
        {
          break;
        }

        ++v5;
        v10 = [*(a1 + 32) lastTopHitQueryItems];
        v11 = [v10 count];

        if (v5 >= v11)
        {
          return;
        }
      }

      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = *(a1 + 32);
        v13 = [v12 lastTopHitQueryItems];
        v14 = *(a1 + 64);
        v15 = *(a1 + 48);
        v16 = v13;
        [v12 extractTrainingDataWithItemAtIndex:v5 withItems:0 withRanker:0 forQuery:? dataCollectAllowed:? forClientBundle:? keyboardPrimaryLanguage:? clientID:?];
        goto LABEL_11;
      }
    }
  }
}

@end