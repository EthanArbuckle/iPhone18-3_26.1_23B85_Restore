@interface PPSocialHighlightMetrics
+ (BOOL)_queryLinksWithFetchAttributes:(id)attributes interval:(double)interval handler:(id)handler;
+ (id)SMSBucketDescriptionWithShouldContinueBlock:(id)block;
+ (id)_countSentMessagesInLastWeekMatchingChatType:(id)type shouldContinueBlock:(id)block;
+ (id)_loggableToggleStatus:(unsigned __int8)status;
+ (id)allHighlightIdentifiersReceivedWithShouldContinueBlock:(id)block;
+ (id)countIMessagesSentInPastWeekWithShouldContinueBlock:(id)block;
+ (id)countSMSSentInPastWeekWithShouldContinueBlock:(id)block;
+ (id)hasSentIMessageWithShouldContinueBlock:(id)block;
+ (id)hasSentSMSWithShouldContinueBlock:(id)block;
+ (id)highlightsReceivedInInterval:(double)interval shouldContinueBlock:(id)block;
+ (id)iMessageBucketDescriptionWithShouldContinueBlock:(id)block;
+ (id)logExpiredLinkStatsWithHighlights:(id)highlights shouldContinueBlock:(id)block;
+ (id)sendLinkExpiredMessagesForFeedbackCountsByHighlightId:(id)id tvFeedbackCountsByHighlightId:(id)highlightId highlights:(id)highlights;
+ (id)unsupportedClientsFromPastDayWithShouldContinueBlock:(id)block;
+ (unint64_t)countAllLinksReceivedInMessages;
+ (void)_recordTipsContentEvent:(id)event;
+ (void)logConsumptionByClientWithShouldContinueBlock:(id)block;
+ (void)logFeedbackForAttribution:(id)attribution type:(unint64_t)type client:(id)client;
+ (void)logFeedbackForHighlight:(id)highlight type:(unint64_t)type client:(id)client;
+ (void)registerCTSDataCollection;
+ (void)registerClientLinkStatus;
+ (void)registerCountLinks;
+ (void)registerDeviceSettingsCollection;
+ (void)registerExpiredLinkReview;
+ (void)registerLogConsumedByClient;
+ (void)registerSampledUnsupportedClientLogging;
@end

@implementation PPSocialHighlightMetrics

+ (id)hasSentSMSWithShouldContinueBlock:(id)block
{
  v3 = [self countSMSSentInPastWeekWithShouldContinueBlock:block];
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "unsignedIntegerValue") != 0}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)hasSentIMessageWithShouldContinueBlock:(id)block
{
  v3 = [self countIMessagesSentInPastWeekWithShouldContinueBlock:block];
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "unsignedIntegerValue") != 0}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)SMSBucketDescriptionWithShouldContinueBlock:(id)block
{
  v3 = [self countSMSSentInPastWeekWithShouldContinueBlock:block];
  v4 = v3;
  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
    v6 = @"1-3";
    v7 = @"11+";
    if (unsignedIntegerValue < 0xB)
    {
      v7 = @"4-10";
    }

    if (unsignedIntegerValue >= 4)
    {
      v6 = v7;
    }

    if (unsignedIntegerValue)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"0";
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)iMessageBucketDescriptionWithShouldContinueBlock:(id)block
{
  v3 = [self countIMessagesSentInPastWeekWithShouldContinueBlock:block];
  v4 = v3;
  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
    v6 = @"1-3";
    v7 = @"11+";
    if (unsignedIntegerValue < 0xB)
    {
      v7 = @"4-10";
    }

    if (unsignedIntegerValue >= 4)
    {
      v6 = v7;
    }

    if (unsignedIntegerValue)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"0";
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)countSMSSentInPastWeekWithShouldContinueBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&kPPSentSMSLock);
  v5 = kPPSentSMSCount;
  if (!kPPSentSMSCount)
  {
    v6 = [self _countSentMessagesInLastWeekMatchingChatType:@"SMS" shouldContinueBlock:blockCopy];
    v7 = kPPSentSMSCount;
    kPPSentSMSCount = v6;

    v5 = kPPSentSMSCount;
  }

  v8 = v5;
  os_unfair_lock_unlock(&kPPSentSMSLock);

  return v8;
}

+ (id)countIMessagesSentInPastWeekWithShouldContinueBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&kPPSentIMessagesLock);
  v5 = kPPSentIMessagesCount;
  if (!kPPSentIMessagesCount)
  {
    v6 = [self _countSentMessagesInLastWeekMatchingChatType:@"iMessage" shouldContinueBlock:blockCopy];
    v7 = kPPSentIMessagesCount;
    kPPSentIMessagesCount = v6;

    v5 = kPPSentIMessagesCount;
  }

  v8 = v5;
  os_unfair_lock_unlock(&kPPSentIMessagesLock);

  return v8;
}

+ (void)registerDeviceSettingsCollection
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86280], "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v4, *MEMORY[0x277D86278], 1uLL);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__PPSocialHighlightMetrics_registerDeviceSettingsCollection__block_invoke;
  v5[3] = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5[4] = self;
  v5[5] = a2;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.SocialHighlightSettingsCollection", v4, v5);
}

void __60__PPSocialHighlightMetrics_registerDeviceSettingsCollection__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PPSocialHighlightMetrics_registerDeviceSettingsCollection__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v28 = &v29;
  v4 = v3;
  v27 = v4;
  v5 = _Block_copy(aBlock);
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __60__PPSocialHighlightMetrics_registerDeviceSettingsCollection__block_invoke_3;
  v23 = &unk_278975E68;
  v6 = v5;
  v7 = *(a1 + 32);
  v24 = v6;
  v25 = v7;
  v8 = _Block_copy(&v20);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v9 = pp_maintenance_signpost_handle();
  v10 = os_signpost_id_generate(v9);

  v11 = pp_maintenance_signpost_handle();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SocialHighlightSettingsCollection", "", buf, 2u);
  }

  v8[2](v8);
  v13 = pp_maintenance_signpost_handle();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = *(v30 + 24);
    *buf = 67109120;
    v34 = v15;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v14, OS_SIGNPOST_INTERVAL_END, v10, "SocialHighlightSettingsCollection", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v30 + 24))
  {
    v16 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v16 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v16);
  if (*(v30 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      [v19 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPSocialHighlightMetrics.m" lineNumber:1110 description:@"Unexpected failure of deferral"];
    }

    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: SocialHighlightSettingsCollection: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v29, 8);
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __60__PPSocialHighlightMetrics_registerDeviceSettingsCollection__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __60__PPSocialHighlightMetrics_registerDeviceSettingsCollection__block_invoke_3(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v2, "automaticSharingEnabled")}];
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = objc_opt_new();
    [v4 setObject:v3 forKeyedSubscript:@"automaticSharingEnabled"];
    v5 = [*(a1 + 40) iMessageBucketDescriptionWithShouldContinueBlock:*(a1 + 32)];
    if ((*(*(a1 + 32) + 16))())
    {
      v6 = [*(a1 + 40) SMSBucketDescriptionWithShouldContinueBlock:*(a1 + 32)];
      if ((*(*(a1 + 32) + 16))())
      {
        v7 = [*(a1 + 40) hasSentIMessageWithShouldContinueBlock:*(a1 + 32)];
        if ((*(*(a1 + 32) + 16))())
        {
          v8 = [*(a1 + 40) hasSentSMSWithShouldContinueBlock:*(a1 + 32)];
          if ((*(*(a1 + 32) + 16))())
          {
            v9 = +[PPSocialHighlightMetrics _loggableToggleStatus:](PPSocialHighlightMetrics, "_loggableToggleStatus:", [v2 automaticSharingEnabledForClient:*MEMORY[0x277D3A5E0] error:0]);
            [v4 setObject:v9 forKeyedSubscript:@"tvAutomaticSharing"];

            v10 = +[PPSocialHighlightMetrics _loggableToggleStatus:](PPSocialHighlightMetrics, "_loggableToggleStatus:", [v2 automaticSharingEnabledForClient:*MEMORY[0x277D3A5B8] error:0]);
            [v4 setObject:v10 forKeyedSubscript:@"newsAutomaticSharing"];

            v11 = +[PPSocialHighlightMetrics _loggableToggleStatus:](PPSocialHighlightMetrics, "_loggableToggleStatus:", [v2 automaticSharingEnabledForClient:*MEMORY[0x277D3A5B0] error:0]);
            [v4 setObject:v11 forKeyedSubscript:@"musicAutomaticSharing"];

            v12 = +[PPSocialHighlightMetrics _loggableToggleStatus:](PPSocialHighlightMetrics, "_loggableToggleStatus:", [v2 automaticSharingEnabledForClient:*MEMORY[0x277D3A5C8] error:0]);
            [v4 setObject:v12 forKeyedSubscript:@"podcastsAutomaticSharing"];

            v13 = +[PPSocialHighlightMetrics _loggableToggleStatus:](PPSocialHighlightMetrics, "_loggableToggleStatus:", [v2 automaticSharingEnabledForClient:*MEMORY[0x277D3A5C0] error:0]);
            [v4 setObject:v13 forKeyedSubscript:@"photosAutomaticSharing"];

            v14 = +[PPSocialHighlightMetrics _loggableToggleStatus:](PPSocialHighlightMetrics, "_loggableToggleStatus:", [v2 automaticSharingEnabledForClient:*MEMORY[0x277D3A5D0] error:0]);
            [v4 setObject:v14 forKeyedSubscript:@"safariAutomaticSharing"];

            if (v5)
            {
              [v4 setObject:v5 forKeyedSubscript:@"iMesssageBucket"];
            }

            else
            {
              v16 = [MEMORY[0x277CBEB68] null];
              [v4 setObject:v16 forKeyedSubscript:@"iMesssageBucket"];
            }

            if (v6)
            {
              [v4 setObject:v6 forKeyedSubscript:@"SMSBucket"];
            }

            else
            {
              v17 = [MEMORY[0x277CBEB68] null];
              [v4 setObject:v17 forKeyedSubscript:@"SMSBucket"];
            }

            if (v7)
            {
              [v4 setObject:v7 forKeyedSubscript:@"activeiMessageUser"];
            }

            else
            {
              v18 = [MEMORY[0x277CBEB68] null];
              [v4 setObject:v18 forKeyedSubscript:@"activeiMessageUser"];
            }

            if (v8)
            {
              [v4 setObject:v8 forKeyedSubscript:@"activeSMSUser"];
            }

            else
            {
              v19 = [MEMORY[0x277CBEB68] null];
              [v4 setObject:v19 forKeyedSubscript:@"activeSMSUser"];
            }

            if ((*(*(a1 + 32) + 16))())
            {
              [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.SocialHighlights.SettingsStatus" payload:v4 inBackground:1];
            }
          }

          else
          {
            v15 = pp_social_highlights_log_handle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *v20 = 0;
              _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring settings collection during message counts fetching.", v20, 2u);
            }
          }
        }

        else
        {
          v8 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v21 = 0;
            _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring settings collection during message counts fetching.", v21, 2u);
          }
        }
      }

      else
      {
        v7 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring settings collection during message counts fetching.", v22, 2u);
        }
      }
    }

    else
    {
      v6 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring settings collectionduring message counts fetching.", buf, 2u);
      }
    }
  }
}

+ (id)_loggableToggleStatus:(unsigned __int8)status
{
  if (status)
  {
    if (status == 1)
    {
      null = MEMORY[0x277CBEC28];
    }

    else
    {
      null = MEMORY[0x277CBEC38];
    }
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  return null;
}

+ (void)registerExpiredLinkReview
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86280], "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v4, *MEMORY[0x277D86278], 1uLL);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__PPSocialHighlightMetrics_registerExpiredLinkReview__block_invoke;
  v5[3] = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5[4] = a2;
  v5[5] = self;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.ExpiredLinkReview", v4, v5);
}

void __53__PPSocialHighlightMetrics_registerExpiredLinkReview__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PPSocialHighlightMetrics_registerExpiredLinkReview__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v23 = &v24;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53__PPSocialHighlightMetrics_registerExpiredLinkReview__block_invoke_3;
  v19[3] = &unk_278975D98;
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ExpiredLinkReview", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v25 + 24);
    *buf = 67109120;
    v29 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "ExpiredLinkReview", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v25 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v25 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPSocialHighlightMetrics.m" lineNumber:1023 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: ExpiredLinkReview: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PPSocialHighlightMetrics_registerExpiredLinkReview__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __53__PPSocialHighlightMetrics_registerExpiredLinkReview__block_invoke_3(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v28 = 0;
  v4 = [v2 autoDonatingChatsWithShouldContinueBlock:v3 error:&v28];
  v5 = v28;
  v29 = v5;
  if (v4)
  {
    if ((*(*(a1 + 32) + 16))())
    {
      *&v32 = 0;
      *(&v32 + 1) = &v32;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__8559;
      v35 = __Block_byref_object_dispose__8560;
      v36 = 0;
      v6 = +[PPSQLDatabase sharedInstance];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __53__PPSocialHighlightMetrics_registerExpiredLinkReview__block_invoke_313;
      v27[3] = &unk_278977E98;
      v27[4] = &v32;
      [v6 readTransactionWithClient:6 block:v27];

      if (((*(*(a1 + 32) + 16))() & 1) == 0)
      {
        v10 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring link review after last date.", buf, 2u);
        }

        goto LABEL_26;
      }

      v7 = objc_alloc(MEMORY[0x277CBEAA8]);
      v8 = +[PPConfiguration sharedInstance];
      [v8 socialHighlightFeedbackDeletionInterval];
      v10 = [v7 initWithTimeIntervalSinceNow:-v9];

      v11 = objc_alloc(MEMORY[0x277CBEAA8]);
      [*(*(&v32 + 1) + 40) doubleValue];
      v12 = [v11 initWithTimeIntervalSinceReferenceDate:?];
      [v12 timeIntervalSinceNow];
      v14 = v13;

      if (v14 > 0.0)
      {
        v15 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v31 = -v14;
          _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, "PPSocialHighlightMetrics: lastProcessedTimeSinceNow is in the future! %f", buf, 0xCu);
        }

        goto LABEL_25;
      }

      v18 = [v2 allSupportedHighlightsForAutoDonatingChats:v4 error:&v29];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __53__PPSocialHighlightMetrics_registerExpiredLinkReview__block_invoke_319;
      v25[3] = &unk_278978428;
      v26 = v10;
      v19 = [v18 _pas_filteredArrayWithTest:v25];

      if ([v19 count])
      {
        if ((*(*(a1 + 32) + 16))())
        {
          v20 = [PPSocialHighlightMetrics logExpiredLinkStatsWithHighlights:v19 shouldContinueBlock:*(a1 + 32)];
          if (v20)
          {
            objc_storeStrong((*(&v32 + 1) + 40), v20);
            v21 = +[PPSQLDatabase sharedInstance];
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __53__PPSocialHighlightMetrics_registerExpiredLinkReview__block_invoke_321;
            v24[3] = &unk_278973F30;
            v24[4] = &v32;
            [v21 writeTransactionWithClient:6 block:v24];
          }

          goto LABEL_24;
        }

        v20 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v22 = "PPSocialHighlightMetrics: deferred while constructing highlight array";
          goto LABEL_23;
        }
      }

      else
      {
        v20 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v22 = "PPSocialHighlightMetrics: no highlights have expired.";
LABEL_23:
          _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
        }
      }

LABEL_24:

      v15 = v26;
LABEL_25:

LABEL_26:
      _Block_object_dispose(&v32, 8);

      goto LABEL_27;
    }

    v17 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring link review after fetching chats.", &v32, 2u);
    }
  }

  else
  {
    v16 = v5;
    v17 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v32) = 138412290;
      *(&v32 + 4) = v16;
      _os_log_error_impl(&dword_23224A000, v17, OS_LOG_TYPE_ERROR, "PPSocialHighlightMetrics: unable to fetch auto donating chats: %@", &v32, 0xCu);
    }
  }

LABEL_27:
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PPSocialHighlightMetrics_registerExpiredLinkReview__block_invoke_313(uint64_t a1, uint64_t a2)
{
  v3 = [PPSQLKVStore numberForKey:@"lastProcessedSocialHighlightLinkDate" transaction:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

BOOL __53__PPSocialHighlightMetrics_registerExpiredLinkReview__block_invoke_319(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3A578];
  [a2 contentCreationSecondsSinceReferenceDate];
  v5 = v4;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  return [v3 compareDouble:v5 withDouble:v6] == -1;
}

+ (id)logExpiredLinkStatsWithHighlights:(id)highlights shouldContinueBlock:(id)block
{
  blockCopy = block;
  v7 = [highlights sortedArrayUsingComparator:&__block_literal_global_310];
  v8 = +[PPConfiguration sharedInstance];
  [v8 socialHighlightFeedbackDeletionInterval];
  v9 = [PPSocialHighlightMetrics feedbackTypeCountsByHighlightIdentifierInInterval:0 forTVOS:?];

  if (blockCopy[2](blockCopy))
  {
    v10 = +[PPConfiguration sharedInstance];
    [v10 socialHighlightFeedbackDeletionInterval];
    v11 = [PPSocialHighlightMetrics feedbackTypeCountsByHighlightIdentifierInInterval:1 forTVOS:?];

    if (blockCopy[2](blockCopy))
    {
      v12 = [self sendLinkExpiredMessagesForFeedbackCountsByHighlightId:v9 tvFeedbackCountsByHighlightId:v11 highlights:v7];
      goto LABEL_10;
    }

    v13 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferred after tv feedback count generation.", v15, 2u);
    }
  }

  else
  {
    v11 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferred after feedback count generation.", buf, 2u);
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

uint64_t __82__PPSocialHighlightMetrics_logExpiredLinkStatsWithHighlights_shouldContinueBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D3A578];
  v5 = a3;
  [a2 contentCreationSecondsSinceReferenceDate];
  v7 = v6;
  [v5 contentCreationSecondsSinceReferenceDate];
  v9 = v8;

  return [v4 compareDouble:v7 withDouble:v9];
}

+ (id)sendLinkExpiredMessagesForFeedbackCountsByHighlightId:(id)id tvFeedbackCountsByHighlightId:(id)highlightId highlights:(id)highlights
{
  v42 = *MEMORY[0x277D85DE8];
  idCopy = id;
  highlightIdCopy = highlightId;
  highlightsCopy = highlights;
  if (![highlightsCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPSocialHighlightMetrics.m" lineNumber:903 description:{@"Invalid parameter not satisfying: %@", @"highlights.count > 0"}];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = highlightsCopy;
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v11)
  {

LABEL_16:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPSocialHighlightMetrics.m" lineNumber:913 description:{@"This value must not be nil, as the highlight array has contents."}];

    v13 = 0;
    goto LABEL_17;
  }

  v12 = v11;
  v32 = a2;
  selfCopy = self;
  v13 = 0;
  v14 = *v38;
  do
  {
    v15 = 0;
    v36 = v12;
    do
    {
      if (*v38 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v37 + 1) + 8 * v15);
      v17 = objc_autoreleasePoolPush();
      highlightIdentifier = [v16 highlightIdentifier];
      if (highlightIdentifier)
      {
        v19 = highlightIdentifier;
        hasContentCreationSecondsSinceReferenceDate = [v16 hasContentCreationSecondsSinceReferenceDate];

        if (hasContentCreationSecondsSinceReferenceDate)
        {
          v21 = v14;
          v22 = v13;
          highlightIdentifier2 = [v16 highlightIdentifier];
          v24 = [highlightIdCopy objectForKeyedSubscript:highlightIdentifier2];
          [PPSocialHighlightMetrics logLinkExpiredMetricsForHighlight:v16 feedbackCountsByClient:v24 forTVOS:1];

          highlightIdentifier3 = [v16 highlightIdentifier];
          v26 = [idCopy objectForKeyedSubscript:highlightIdentifier3];
          [PPSocialHighlightMetrics logLinkExpiredMetricsForHighlight:v16 feedbackCountsByClient:v26 forTVOS:0];

          v27 = MEMORY[0x277CCABB0];
          [v16 contentCreationSecondsSinceReferenceDate];
          v13 = [v27 numberWithDouble:?];

          v14 = v21;
          v12 = v36;
        }
      }

      objc_autoreleasePoolPop(v17);
      ++v15;
    }

    while (v12 != v15);
    v12 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v12);

  a2 = v32;
  self = selfCopy;
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_17:

  v29 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __86__PPSocialHighlightMetrics_feedbackTypeCountsByHighlightIdentifierInInterval_forTVOS___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  v6 = [v5 highlight];
  v7 = [v6 highlightIdentifier];

  if (v7)
  {
    v8 = [v3 eventBody];
    v9 = [v8 feedbackType];

    if (v9 == 2)
    {
      v10 = [v3 eventBody];
      v11 = [v10 feedbackCreationDate];
      v12 = [v11 compare:*(a1 + 32)] != -1;
    }

    else
    {
      v13 = *(a1 + 40);
      v14 = [v3 eventBody];
      v10 = v14;
      if (v13 == 1)
      {
        v11 = [v14 clientIdentifier];
        v12 = [v11 isEqualToString:*MEMORY[0x277D3A5E8]];
      }

      else
      {
        v11 = [v14 highlight];
        v15 = [v11 isPrimary];
        v16 = v15;
        if (!v15)
        {
          v15 = MEMORY[0x277CBEC38];
        }

        if ([v15 BOOLValue])
        {
          v17 = [v3 eventBody];
          v18 = [v17 clientIdentifier];
          v12 = v18 != 0;
        }

        else
        {
          v12 = 0;
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v12;
}

id __86__PPSocialHighlightMetrics_feedbackTypeCountsByHighlightIdentifierInInterval_forTVOS___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  context = objc_autoreleasePoolPush();
  v7 = [v6 eventBody];
  v8 = [v7 highlight];
  v9 = [v8 highlightIdentifier];

  v10 = [v6 eventBody];
  v11 = [v10 clientIdentifier];
  v12 = v11;
  v13 = &stru_284759D38;
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  if (!v9)
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPSocialHighlightMetrics.m" lineNumber:847 description:@"Highlight identifier has been checked in the filter clause to be nonnull"];
  }

  v15 = [v5 objectForKeyedSubscript:v9];

  if (!v15)
  {
    v16 = objc_opt_new();
    [v5 setObject:v16 forKeyedSubscript:v9];
  }

  v17 = [v5 objectForKeyedSubscript:v9];
  v18 = [v17 objectForKeyedSubscript:v14];

  if (!v18)
  {
    v19 = objc_opt_new();
    v20 = [v5 objectForKeyedSubscript:v9];
    [v20 setObject:v19 forKeyedSubscript:v14];
  }

  v21 = [v5 objectForKeyedSubscript:v9];
  v22 = [v21 objectForKeyedSubscript:v14];
  v23 = MEMORY[0x277CCABB0];
  v24 = [v6 eventBody];
  v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "feedbackType")}];
  v26 = [v22 objectForKeyedSubscript:v25];
  v27 = v6;
  v28 = [v26 unsignedIntegerValue];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28 + 1];
  v30 = [v5 objectForKeyedSubscript:v9];
  v31 = [v30 objectForKeyedSubscript:v14];
  v32 = MEMORY[0x277CCABB0];
  v33 = [v27 eventBody];
  v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "feedbackType")}];
  [v31 setObject:v29 forKeyedSubscript:v34];

  v35 = v5;
  objc_autoreleasePoolPop(context);

  return v35;
}

void __86__PPSocialHighlightMetrics_feedbackTypeCountsByHighlightIdentifierInInterval_forTVOS___block_invoke_267(uint64_t a1, void *a2)
{
  v6 = [a2 firstObject];
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __86__PPSocialHighlightMetrics_feedbackTypeCountsByHighlightIdentifierInInterval_forTVOS___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 state] == 1)
  {
    v3 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [v2 error];
      v6 = 138412290;
      v7 = v5;
      _os_log_error_impl(&dword_23224A000, v3, OS_LOG_TYPE_ERROR, "PPSocialHighlightMetrics: failed to collect highlight feedback counts: %@", &v6, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)registerCountLinks
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86288], *MEMORY[0x277D862C8]);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86280], "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v4, *MEMORY[0x277D86278], 1uLL);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__PPSocialHighlightMetrics_registerCountLinks__block_invoke;
  v5[3] = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5[4] = self;
  v5[5] = a2;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.LinkStatusGeneration", v4, v5);
}

void __46__PPSocialHighlightMetrics_registerCountLinks__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PPSocialHighlightMetrics_registerCountLinks__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v28 = &v29;
  v4 = v3;
  v27 = v4;
  v5 = _Block_copy(aBlock);
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __46__PPSocialHighlightMetrics_registerCountLinks__block_invoke_3;
  v23 = &unk_278975E68;
  v6 = v5;
  v7 = *(a1 + 32);
  v24 = v6;
  v25 = v7;
  v8 = _Block_copy(&v20);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v9 = pp_maintenance_signpost_handle();
  v10 = os_signpost_id_generate(v9);

  v11 = pp_maintenance_signpost_handle();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "LinkStatusGeneration", "", buf, 2u);
  }

  v8[2](v8);
  v13 = pp_maintenance_signpost_handle();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = *(v30 + 24);
    *buf = 67109120;
    v34 = v15;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v14, OS_SIGNPOST_INTERVAL_END, v10, "LinkStatusGeneration", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v30 + 24))
  {
    v16 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v16 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v16);
  if (*(v30 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      [v19 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPSocialHighlightMetrics.m" lineNumber:814 description:@"Unexpected failure of deferral"];
    }

    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: LinkStatusGeneration: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v29, 8);
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __46__PPSocialHighlightMetrics_registerCountLinks__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __46__PPSocialHighlightMetrics_registerCountLinks__block_invoke_3(uint64_t a1)
{
  v125 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = +[PPSocialHighlightMetrics countAllLinksReceivedInMessages];
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    v51 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v51, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring link stats after messages count.", buf, 2u);
    }

    goto LABEL_97;
  }

  obj = 0;
  location = 0;
  v4 = [v2 autoDonatingChatsWithShouldContinueBlock:*(a1 + 32) error:&obj];
  objc_storeStrong(&location, obj);
  if (!v4)
  {
    v5 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v118 = location;
      _os_log_error_impl(&dword_23224A000, v5, OS_LOG_TYPE_ERROR, "PPSocialHighlightMetrics: unable to fetch auto donating chats (potentially deferred). %@", buf, 0xCu);
    }

    goto LABEL_96;
  }

  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    v5 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring link stats after fetching autodonating chats.", buf, 2u);
    }

    goto LABEL_96;
  }

  v5 = [v2 allSupportedHighlightsForAutoDonatingChats:v4 error:&location];
  if (!v5)
  {
    log = pp_social_highlights_log_handle();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v118 = location;
      _os_log_error_impl(&dword_23224A000, log, OS_LOG_TYPE_ERROR, "PPSocialHighlightMetrics: unable to fetch highlights, will retry at a later date: %@", buf, 0xCu);
    }

    goto LABEL_95;
  }

  v95 = a1;
  v92 = v3;
  log = objc_opt_new();
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v94 = v5;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v108 objects:v124 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v109;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v109 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v108 + 1) + 8 * i);
        v12 = [v11 highlightIdentifier];

        if (v12)
        {
          v13 = [v11 highlightIdentifier];
          v14 = [log objectForKeyedSubscript:v13];

          if (!v14)
          {
            v15 = objc_opt_new();
            v16 = [v11 highlightIdentifier];
            [log setObject:v15 forKeyedSubscript:v16];
          }

          v17 = [v11 attributionIdentifier];

          if (v17)
          {
            v18 = [v11 highlightIdentifier];
            v19 = [log objectForKeyedSubscript:v18];
            v20 = [v11 attributionIdentifier];
            [v19 addObject:v20];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v108 objects:v124 count:16];
    }

    while (v8);
  }

  v21 = v95;
  v22 = [PPSocialHighlightMetrics allHighlightIdentifiersReceivedWithShouldContinueBlock:*(v95 + 32)];
  if (!v22)
  {
    v25 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: Unable to fetch, or requested to defer fetching of highlight identifiers.", buf, 2u);
    }

    v5 = v94;
    goto LABEL_94;
  }

  v23 = objc_alloc(MEMORY[0x277CBEB98]);
  v24 = [log allKeys];
  v25 = [v23 initWithArray:v24];

  [v22 minusSet:v25];
  v97 = objc_opt_new();
  v26 = [v22 count];
  v27 = [*(v95 + 40) iMessageBucketDescriptionWithShouldContinueBlock:*(v95 + 32)];
  if (((*(*(v95 + 32) + 16))() & 1) == 0)
  {
    v28 = pp_social_highlights_log_handle();
    v5 = v94;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring link stats during message counts fetching.", buf, 2u);
    }

    goto LABEL_93;
  }

  v73 = v26;
  v28 = [*(v95 + 40) SMSBucketDescriptionWithShouldContinueBlock:*(v95 + 32)];
  if (((*(*(v95 + 32) + 16))() & 1) == 0)
  {
    v52 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v52, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring link stats during message counts fetching.", buf, 2u);
    }

    v5 = v94;
    goto LABEL_92;
  }

  v75 = [*(v95 + 40) hasSentIMessageWithShouldContinueBlock:*(v95 + 32)];
  if (((*(*(v95 + 32) + 16))() & 1) == 0)
  {
    v53 = pp_social_highlights_log_handle();
    v5 = v94;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v53, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring link stats during message counts fetching.", buf, 2u);
    }

    v52 = v75;
    goto LABEL_91;
  }

  v70 = [*(v95 + 40) hasSentSMSWithShouldContinueBlock:*(v95 + 32)];
  if (((*(*(v95 + 32) + 16))() & 1) == 0)
  {
    v54 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v54, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring link stats during message counts fetching.", buf, 2u);
    }

LABEL_89:
    v5 = v94;
    goto LABEL_90;
  }

  v68 = v28;
  v69 = v27;
  v67 = v22;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v74 = v6;
  v72 = v4;
  v81 = [v74 countByEnumeratingWithState:&v104 objects:v123 count:16];
  if (!v81)
  {
    v76 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    goto LABEL_69;
  }

  v76 = 0;
  v78 = v25;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v79 = *v105;
  v71 = v2;
  while (2)
  {
    v33 = 0;
    do
    {
      if (*v105 != v79)
      {
        objc_enumerationMutation(v74);
      }

      v88 = v33;
      v34 = *(*(&v104 + 1) + 8 * v33);
      context = objc_autoreleasePoolPush();
      if (((*(*(v21 + 32) + 16))() & 1) == 0)
      {
        v55 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v55, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: link stats deferring.", buf, 2u);
        }

        goto LABEL_88;
      }

      v35 = [v34 highlightIdentifier];

      if (!v35)
      {
        goto LABEL_40;
      }

      v84 = v30;
      v36 = [v34 highlightIdentifier];
      v37 = [log objectForKeyedSubscript:v36];
      v83 = [v37 count];

      v86 = [v34 highlightIdentifier];
      v38 = [log objectForKeyedSubscript:v86];
      v39 = [v38 allObjects];
      v103 = location;
      v40 = [v2 attributionsForIdentifiers:v39 error:&v103];
      objc_storeStrong(&location, v103);
      v41 = [v40 allValues];

      if (!v41)
      {
        v55 = pp_social_highlights_log_handle();
        v25 = v78;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v64 = [v34 highlightIdentifier];
          v65 = [v34 highlightIdentifier];
          v66 = [log objectForKeyedSubscript:v65];
          *buf = 138412802;
          v118 = v64;
          v119 = 2112;
          v120 = v66;
          v121 = 2112;
          v122 = location;
          _os_log_error_impl(&dword_23224A000, v55, OS_LOG_TYPE_ERROR, "PPSocialHighlightMetrics: unable to fetch attributions for highlight: %@, attributions %@, will try again at a later date: %@", buf, 0x20u);
        }

LABEL_88:
        v22 = v67;
        v28 = v68;
        v27 = v69;

        objc_autoreleasePoolPop(context);
        goto LABEL_89;
      }

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v42 = v41;
      v43 = [v42 countByEnumeratingWithState:&v99 objects:v116 count:16];
      v25 = v78;
      if (v43)
      {
        v44 = v43;
        v45 = 0;
        v46 = *v100;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v100 != v46)
            {
              objc_enumerationMutation(v42);
            }

            v48 = *(*(&v99 + 1) + 8 * j);
            v49 = [v48 conversationIdentifier];
            [v97 addObject:v49];

            v50 = [v48 isStarred];
            v31 += (v50 & 1) == 0;
            v32 += v50 & 1;
            v45 |= v50;
            v29 += [v48 isFromMe];
          }

          v44 = [v42 countByEnumeratingWithState:&v99 objects:v116 count:16];
        }

        while (v44);

        v25 = v78;
        v76 += v45 & 1;
        v2 = v71;
        v4 = v72;
      }

      else
      {
      }

      v30 = v83 + v84;

      v21 = v95;
LABEL_40:
      objc_autoreleasePoolPop(context);
      v33 = v88 + 1;
    }

    while (v88 + 1 != v81);
    v81 = [v74 countByEnumeratingWithState:&v104 objects:v123 count:16];
    if (v81)
    {
      continue;
    }

    break;
  }

LABEL_69:

  v114[0] = @"urlsInMessages";
  v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v92];
  v115[0] = v96;
  v114[1] = @"manuallyHighlightedLinks";
  v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
  v115[1] = v93;
  v114[2] = @"automaticallyHighlightedLinks";
  contexta = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
  v115[2] = contexta;
  v114[3] = @"totalLinkCount";
  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
  v115[3] = v89;
  v114[4] = @"uniqueLinkCount";
  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject count](v74, "count")}];
  v115[4] = v87;
  v114[5] = @"uniqueChats";
  v85 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v97, "count")}];
  v115[5] = v85;
  v114[6] = @"autoDonatingChats";
  v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  v115[6] = v82;
  v114[7] = @"uniqueManuallyHighlightedLinks";
  v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v76];
  v115[7] = v80;
  v114[8] = @"outboundLinks";
  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
  v115[8] = v77;
  v114[9] = @"automaticSyndicationEnabled";
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v2, "automaticSharingEnabled")}];
  v115[9] = v56;
  v114[10] = @"unsupportedLinkCount";
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v73];
  v115[10] = v57;
  v114[11] = @"iMesssageBucket";
  v58 = v69;
  if (!v69)
  {
    v58 = [MEMORY[0x277CBEB68] null];
  }

  v115[11] = v58;
  v114[12] = @"SMSBucket";
  v59 = v68;
  if (!v68)
  {
    v59 = [MEMORY[0x277CBEB68] null];
  }

  v115[12] = v59;
  v114[13] = @"activeiMessageUser";
  v60 = v75;
  if (!v75)
  {
    v60 = [MEMORY[0x277CBEB68] null];
  }

  v115[13] = v60;
  v114[14] = @"activeSMSUser";
  v61 = v70;
  if (!v70)
  {
    v61 = [MEMORY[0x277CBEB68] null];
  }

  v115[14] = v61;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:15];
  [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.LinkStatusGenerated" payload:v62 inBackground:1];

  if (!v70)
  {
  }

  if (!v75)
  {
  }

  if (!v68)
  {
  }

  v22 = v67;
  if (!v69)
  {
  }

  v4 = v72;
  v5 = v94;
  v28 = v68;
  v27 = v69;
LABEL_90:
  v52 = v75;
  v53 = v70;
LABEL_91:

LABEL_92:
LABEL_93:

LABEL_94:
LABEL_95:

LABEL_96:
LABEL_97:

  v63 = *MEMORY[0x277D85DE8];
}

+ (void)registerLogConsumedByClient
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86280], "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v4, *MEMORY[0x277D86278], 1uLL);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__PPSocialHighlightMetrics_registerLogConsumedByClient__block_invoke;
  v5[3] = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5[4] = a2;
  v5[5] = self;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.FeedbackStreamReviewed", v4, v5);
}

void __55__PPSocialHighlightMetrics_registerLogConsumedByClient__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PPSocialHighlightMetrics_registerLogConsumedByClient__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v23 = &v24;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __55__PPSocialHighlightMetrics_registerLogConsumedByClient__block_invoke_3;
  v19[3] = &unk_278975D98;
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "FeedbackStreamReviewed", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v25 + 24);
    *buf = 67109120;
    v29 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "FeedbackStreamReviewed", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v25 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v25 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPSocialHighlightMetrics.m" lineNumber:667 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: FeedbackStreamReviewed: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PPSocialHighlightMetrics_registerLogConsumedByClient__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

+ (void)logConsumptionByClientWithShouldContinueBlock:(id)block
{
  v81 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = +[PPSettings sharedInstance];
  hasWrittenSharedWithYouContentConsumed = [v5 hasWrittenSharedWithYouContentConsumed];

  v7 = objc_alloc(MEMORY[0x277CBEAA8]);
  v8 = +[PPConfiguration sharedInstance];
  [v8 socialHighlightMetricReportingInterval];
  v10 = [v7 initWithTimeIntervalSinceNow:-v9];

  v11 = objc_opt_new();
  [v10 timeIntervalSinceNow];
  v13 = [v11 feedbackPublisherWithInterval:0 includingRemote:-v12];

  v14 = objc_opt_new();
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __74__PPSocialHighlightMetrics_logConsumptionByClientWithShouldContinueBlock___block_invoke;
  v75[3] = &unk_2789770F8;
  v15 = v10;
  v76 = v15;
  v16 = [v13 filterWithIsIncluded:v75];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __74__PPSocialHighlightMetrics_logConsumptionByClientWithShouldContinueBlock___block_invoke_213;
  v71[3] = &unk_278973EE8;
  v58 = v14;
  v72 = v58;
  v74 = hasWrittenSharedWithYouContentConsumed;
  v17 = blockCopy;
  v73 = v17;
  v18 = [v16 sinkWithCompletion:&__block_literal_global_212 shouldContinue:v71];

  if (v17[2](v17))
  {
    v19 = [self iMessageBucketDescriptionWithShouldContinueBlock:v17];
    if (v17[2](v17))
    {
      v20 = [self SMSBucketDescriptionWithShouldContinueBlock:v17];
      if (v17[2](v17))
      {
        v44 = v15;
        v45 = v13;
        v61 = [self hasSentIMessageWithShouldContinueBlock:v17];
        if (v17[2](v17))
        {
          v21 = [self hasSentSMSWithShouldContinueBlock:v17];
          if (v17[2](v17))
          {
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            keyEnumerator = [v58 keyEnumerator];
            v48 = [keyEnumerator countByEnumeratingWithState:&v66 objects:v80 count:16];
            if (!v48)
            {

              goto LABEL_56;
            }

            obj = keyEnumerator;
            v23 = 0;
            v47 = *v67;
            v57 = v21;
LABEL_8:
            v24 = 0;
            while (1)
            {
              if (*v67 != v47)
              {
                objc_enumerationMutation(obj);
              }

              v49 = v24;
              v25 = *(*(&v66 + 1) + 8 * v24);
              v62 = 0u;
              v63 = 0u;
              v64 = 0u;
              v65 = 0u;
              v50 = [v58 objectForKeyedSubscript:v25];
              v59 = [v50 countByEnumeratingWithState:&v62 objects:v79 count:16];
              if (v59)
              {
                break;
              }

LABEL_40:

              v24 = v49 + 1;
              if (v49 + 1 == v48)
              {
                v48 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
                if (!v48)
                {

                  if (v23)
                  {
                    goto LABEL_57;
                  }

LABEL_56:
                  [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.SocialHighlights.FeedbackStreamReviewed" payload:MEMORY[0x277CBEC10] inBackground:1];
                  goto LABEL_57;
                }

                goto LABEL_8;
              }
            }

            v56 = *v63;
LABEL_13:
            v26 = 0;
            while (1)
            {
              v27 = v20;
              if (*v63 != v56)
              {
                objc_enumerationMutation(v50);
              }

              v28 = v19;
              v29 = *(*(&v62 + 1) + 8 * v26);
              context = objc_autoreleasePoolPush();
              v77[0] = @"clientIdentifier";
              v30 = v25;
              if (!v25)
              {
                null = [MEMORY[0x277CBEB68] null];
                v30 = null;
              }

              v78[0] = v30;
              v77[1] = @"feedbackType";
              v31 = +[PPSocialHighlightFeedbackUtils stringifyBiomeFeedbackType:](PPSocialHighlightFeedbackUtils, "stringifyBiomeFeedbackType:", [v29 unsignedIntegerValue]);
              v78[1] = v31;
              v77[2] = @"eventCount";
              v32 = MEMORY[0x277CCABB0];
              v33 = [v58 objectForKeyedSubscript:v25];
              v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "countForObject:", v29)}];
              v78[2] = v34;
              v77[3] = @"iMesssageBucket";
              v35 = v28;
              if (!v28)
              {
                null2 = [MEMORY[0x277CBEB68] null];
                v35 = null2;
              }

              v78[3] = v35;
              v77[4] = @"SMSBucket";
              v36 = v27;
              if (!v27)
              {
                null3 = [MEMORY[0x277CBEB68] null];
                v36 = null3;
              }

              v78[4] = v36;
              v77[5] = @"activeiMessageUser";
              v37 = v61;
              if (!v61)
              {
                null4 = [MEMORY[0x277CBEB68] null];
                v37 = null4;
              }

              v78[5] = v37;
              v77[6] = @"activeSMSUser";
              v38 = v57;
              if (!v57)
              {
                null5 = [MEMORY[0x277CBEB68] null];
                v38 = null5;
              }

              v78[6] = v38;
              v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:7];
              [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.SocialHighlights.FeedbackStreamReviewed" payload:v39 inBackground:1];

              if (!v57)
              {
              }

              v19 = v28;
              if (!v61)
              {
              }

              v20 = v27;
              if (v27)
              {
                if (!v19)
                {
                  goto LABEL_37;
                }
              }

              else
              {

                if (!v19)
                {
LABEL_37:
                }
              }

              if (!v25)
              {
              }

              objc_autoreleasePoolPop(context);
              if (v59 == ++v26)
              {
                v40 = [v50 countByEnumeratingWithState:&v62 objects:v79 count:16];
                v59 = v40;
                if (!v40)
                {
                  v23 = 1;
                  v21 = v57;
                  goto LABEL_40;
                }

                goto LABEL_13;
              }
            }
          }

          v42 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v42, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring feedback stream review during message counts fetching.", buf, 2u);
          }
        }

        else
        {
          v21 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring feedback stream review during message counts fetching.", buf, 2u);
          }
        }

LABEL_57:

        v15 = v44;
        v13 = v45;
      }

      else
      {
        v41 = pp_social_highlights_log_handle();
        v61 = v41;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v41, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring feedback stream review during message counts fetching.", buf, 2u);
        }
      }
    }

    else
    {
      v20 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring feedback stream review during message counts fetching.", buf, 2u);
      }
    }
  }

  else
  {
    v19 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring feedback stream review.", buf, 2u);
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __74__PPSocialHighlightMetrics_logConsumptionByClientWithShouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  v6 = [v5 feedbackType];

  v7 = [v3 eventBody];
  v8 = v7;
  if (v6 == 2)
  {
    v9 = [v7 feedbackCreationDate];
    v10 = [v9 compare:*(a1 + 32)] != -1;
    v11 = v8;
  }

  else
  {
    v11 = [v7 highlight];

    v9 = [v3 eventBody];
    v12 = [v9 clientIdentifier];
    if (v12)
    {
      v13 = [v11 isPrimary];
      if (v13)
      {
        v14 = [v11 isPrimary];
        v10 = [v14 BOOLValue];
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  objc_autoreleasePoolPop(v4);
  return v10;
}

uint64_t __74__PPSocialHighlightMetrics_logConsumptionByClientWithShouldContinueBlock___block_invoke_213(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  v6 = [v5 clientIdentifier];
  v7 = v6;
  v8 = &stru_284759D38;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [*(a1 + 32) objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = objc_opt_new();
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v9];
  }

  v12 = [*(a1 + 32) objectForKeyedSubscript:v9];
  v13 = MEMORY[0x277CCABB0];
  v14 = [v3 eventBody];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "feedbackType")}];
  [v12 addObject:v15];

  v16 = [v3 eventBody];
  if ([v16 feedbackType] == 1)
  {
    v17 = *(a1 + 48);

    if ((v17 & 1) == 0)
    {
      [PPSocialHighlightMetrics _recordTipsContentEvent:@"com.apple.proactive.PersonalizationPortrait.shared-with-you-content-consumed"];
    }
  }

  else
  {
  }

  v18 = (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v4);
  return v18;
}

void __74__PPSocialHighlightMetrics_logConsumptionByClientWithShouldContinueBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 state] == 1)
  {
    v3 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [v2 error];
      v6 = 138412290;
      v7 = v5;
      _os_log_error_impl(&dword_23224A000, v3, OS_LOG_TYPE_ERROR, "PPSocialHighlightMetrics: failed to complete traversal of local feedback stream: %@", &v6, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)registerClientLinkStatus
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86288], *MEMORY[0x277D862C8]);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86280], "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v4, *MEMORY[0x277D86278], 1uLL);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PPSocialHighlightMetrics_registerClientLinkStatus__block_invoke;
  v5[3] = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5[4] = a2;
  v5[5] = self;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.ClientLinkStatus", v4, v5);
}

void __52__PPSocialHighlightMetrics_registerClientLinkStatus__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PPSocialHighlightMetrics_registerClientLinkStatus__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v23 = &v24;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__PPSocialHighlightMetrics_registerClientLinkStatus__block_invoke_3;
  v19[3] = &unk_278975D98;
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ClientLinkStatus", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v25 + 24);
    *buf = 67109120;
    v29 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "ClientLinkStatus", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v25 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v25 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPSocialHighlightMetrics.m" lineNumber:554 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: ClientLinkStatus: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PPSocialHighlightMetrics_registerClientLinkStatus__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __52__PPSocialHighlightMetrics_registerClientLinkStatus__block_invoke_3(uint64_t a1)
{
  v93[5] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = *MEMORY[0x277D3A5B8];
  v93[0] = *MEMORY[0x277D3A5E0];
  v93[1] = v3;
  v4 = *MEMORY[0x277D3A5C8];
  v93[2] = *MEMORY[0x277D3A5D0];
  v93[3] = v4;
  v93[4] = *MEMORY[0x277D3A5B0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:5];
  v6 = [v5 _pas_shuffledArrayUsingRng:0];

  v92[0] = @"internal";
  v92[1] = @"*";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v82 objects:v91 count:16];
  if (!v8)
  {
    goto LABEL_56;
  }

  v10 = v8;
  v69 = *v83;
  v67 = *MEMORY[0x277D3A740];
  *&v9 = 138412290;
  v53 = v9;
  v55 = v7;
  v56 = v2;
  v54 = a1;
  while (2)
  {
    v11 = 0;
    v57 = v10;
    do
    {
      if (*v83 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v82 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = [v2 automaticSharingEnabledForClient:v12 error:0];
      if (!(*(*(a1 + 32) + 16))())
      {
        goto LABEL_55;
      }

      if (v14 != 2 || ([v2 autoDonatingChatsWithShouldContinueBlock:*(a1 + 32) error:0], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v16 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPSocialHighlightMetrics: unable to fetch auto donating chat identifiers", buf, 2u);
        }

        goto LABEL_54;
      }

      v16 = v15;
      if (((*(*(a1 + 32) + 16))() & 1) == 0)
      {
        v50 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v50, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring client link status after fetching autodonating chats.", buf, 2u);
        }

        goto LABEL_54;
      }

      v17 = [v2 sharedContentForClient:v12 variant:v67 applicationIdentifiers:v7 limit:-1 autoDonatingChatIdentifiers:v16 error:0];
      if (((*(*(a1 + 32) + 16))() & 1) == 0)
      {
        v19 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring after fetching searchable items.", buf, 2u);
        }

        goto LABEL_53;
      }

      v70 = v11;
      v71 = v12;
      v18 = [v17 _pas_mappedArrayWithTransform:&__block_literal_global_181_8664];
      v19 = [v2 attributionsForIdentifiers:v18 error:0];

      if (((*(*(a1 + 32) + 16))() & 1) == 0)
      {
        v51 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v51, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring after fetching attributions.", buf, 2u);
        }

LABEL_53:
LABEL_54:

LABEL_55:
        objc_autoreleasePoolPop(v13);
        goto LABEL_56;
      }

      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __52__PPSocialHighlightMetrics_registerClientLinkStatus__block_invoke_182;
      v77[3] = &unk_278973EC0;
      v20 = v19;
      v78 = v20;
      v21 = v16;
      v79 = v21;
      v80 = v7;
      v81 = v71;
      v22 = [v17 _pas_mappedArrayWithTransform:v77];
      v23 = (*(*(a1 + 32) + 16))();
      v24 = v23;
      if (v23)
      {
        v62 = v23;
        v63 = v20;
        v64 = v21;
        v65 = v17;
        v66 = v13;
        v60 = [v22 count];
        v25 = objc_opt_new();
        v72 = objc_opt_new();
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v26 = v22;
        v27 = [v26 countByEnumeratingWithState:&v73 objects:v90 count:16];
        v61 = v22;
        if (v27)
        {
          v28 = v27;
          v29 = 0;
          v30 = 0;
          v31 = *v74;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v74 != v31)
              {
                objc_enumerationMutation(v26);
              }

              v33 = *(*(&v73 + 1) + 8 * i);
              if ([v33 hasHighlightIdentifier])
              {
                v34 = v25;
                if ([v33 highlightType] == 2 || (v34 = v72, objc_msgSend(v33, "highlightType") == 1))
                {
                  v35 = [v33 highlightIdentifier];
                  [v34 addObject:v35];
                }
              }

              if ([v33 highlightType] == 2)
              {
                ++v29;
              }

              else if ([v33 highlightType] == 1)
              {
                ++v30;
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v73 objects:v90 count:16];
          }

          while (v28);
        }

        else
        {
          v29 = 0;
          v30 = 0;
        }

        if (v30 | v29 && (+[PPSettings sharedInstance](PPSettings, "sharedInstance"), v36 = objc_claimAutoreleasedReturnValue(), v37 = [v36 hasWrittenSharedWithYouContentAvailable], v36, (v37 & 1) == 0))
        {
          [PPSocialHighlightMetrics _recordTipsContentEvent:@"com.apple.proactive.PersonalizationPortrait.shared-with-you-content-available"];
        }

        else
        {
          v38 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = +[PPSettings sharedInstance];
            v40 = [v39 hasWrittenSharedWithYouContentAvailable];
            v41 = @"NO";
            if (v40)
            {
              v41 = @"YES";
            }

            *buf = v53;
            v89 = v41;
            _os_log_impl(&dword_23224A000, v38, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: ineligible to update tips shared content. Has written previously: %@", buf, 0xCu);
          }
        }

        context = objc_autoreleasePoolPush();
        v86[0] = @"automaticHighlights";
        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
        v87[0] = v58;
        v86[1] = @"uniqueAutomaticHighlights";
        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v72, "count")}];
        v87[1] = v42;
        v86[2] = @"manualHighlights";
        v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
        v87[2] = v43;
        v86[3] = @"uniqueManualHighlights";
        v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
        v87[3] = v44;
        v86[4] = @"totalHighlights";
        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v60];
        v87[4] = v45;
        v86[5] = @"uniqueHighlights";
        v46 = MEMORY[0x277CCABB0];
        v47 = [v72 setByAddingObjectsFromSet:v25];
        v48 = [v46 numberWithUnsignedInteger:{objc_msgSend(v47, "count")}];
        v86[6] = @"clientIdentifier";
        v87[5] = v48;
        v87[6] = v71;
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:7];

        objc_autoreleasePoolPop(context);
        [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.SocialHighlights.ClientLinkStatus" payload:v49 inBackground:1];

        v7 = v55;
        v2 = v56;
        a1 = v54;
        v17 = v65;
        v13 = v66;
        v10 = v57;
        v20 = v63;
        v21 = v64;
        v24 = v62;
        v22 = v61;
      }

      objc_autoreleasePoolPop(v13);
      if (!v24)
      {
        goto LABEL_56;
      }

      v11 = v70 + 1;
    }

    while (v70 + 1 != v10);
    v10 = [obj countByEnumeratingWithState:&v82 objects:v91 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_56:

  v52 = *MEMORY[0x277D85DE8];
}

id __52__PPSocialHighlightMetrics_registerClientLinkStatus__block_invoke_182(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = a1[4];
    v8 = [v3 uniqueIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [PPRankableSocialHighlightUtils rankableHighlightFromSearchableItem:v3 attribution:v9 autoDonatingChats:a1[5] applicationIdentifiers:a1[6] clientIdentifier:a1[7] variant:*MEMORY[0x277D3A740]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)_recordTipsContentEvent:(id)event
{
  eventCopy = event;
  v4 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPSocialHighlight-tipsContent" qosClass:5];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__PPSocialHighlightMetrics__recordTipsContentEvent___block_invoke;
  block[3] = &unk_2789790A8;
  v7 = eventCopy;
  v5 = eventCopy;
  dispatch_async(v4, block);
}

void __52__PPSocialHighlightMetrics__recordTipsContentEvent___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CF1938]) initWithIdentifier:*(a1 + 32) bundleID:@"com.apple.proactive.PersonalizationPortrait" context:0];
  v3 = BiomeLibrary();
  v4 = [v3 Discoverability];
  v5 = [v4 Signals];

  v6 = [v5 source];
  [v6 sendEvent:v2];
  v7 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: wrote tips content event %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)registerSampledUnsupportedClientLogging
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86280], "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v4, *MEMORY[0x277D86278], 1uLL);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__PPSocialHighlightMetrics_registerSampledUnsupportedClientLogging__block_invoke;
  v5[3] = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5[4] = self;
  v5[5] = a2;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.UnsupportedClient", v4, v5);
}

void __67__PPSocialHighlightMetrics_registerSampledUnsupportedClientLogging__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PPSocialHighlightMetrics_registerSampledUnsupportedClientLogging__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v27 = &v28;
  v4 = v3;
  v26 = v4;
  v5 = _Block_copy(aBlock);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __67__PPSocialHighlightMetrics_registerSampledUnsupportedClientLogging__block_invoke_3;
  v22 = &unk_278975E68;
  v24 = *(a1 + 32);
  v6 = v5;
  v23 = v6;
  v7 = _Block_copy(&v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "UnsupportedClient", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v29 + 24);
    *buf = 67109120;
    v33 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "UnsupportedClient", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v29 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v29 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPSocialHighlightMetrics.m" lineNumber:425 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: UnsupportedClient: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v28, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __67__PPSocialHighlightMetrics_registerSampledUnsupportedClientLogging__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __67__PPSocialHighlightMetrics_registerSampledUnsupportedClientLogging__block_invoke_3(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) unsupportedClientsFromPastDayWithShouldContinueBlock:*(a1 + 32)];
  v3 = [v2 _pas_shuffledArrayUsingRng:0];

  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v13 = v3;
      v7 = *v15;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (!(*(*(a1 + 32) + 16))())
        {
          break;
        }

        if ([MEMORY[0x277D3A578] yesWithProbability:0.01])
        {
          v10 = objc_autoreleasePoolPush();
          v19 = @"bundleId";
          v20 = v9;
          v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
          [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.SocialHighlights.UnsupportedLinkReceived" payload:v11 inBackground:1];

          objc_autoreleasePoolPop(v10);
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v14 objects:v21 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }

      v3 = v13;
    }
  }

  else
  {
    v4 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: unable to, or deferred from fetching unsupported clients.", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)unsupportedClientsFromPastDayWithShouldContinueBlock:(id)block
{
  v58 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = *MEMORY[0x277D3A5C8];
  v41 = [v5 initWithObjects:{*MEMORY[0x277D3A5B8], *MEMORY[0x277D3A5C8], *MEMORY[0x277D3A5B0], *MEMORY[0x277D3A5E0], 0}];
  objc_autoreleasePoolPop(v4);
  v7 = [PPSocialHighlightMetrics highlightsReceivedInInterval:blockCopy shouldContinueBlock:86400.0];
  if (v7)
  {
    v39 = blockCopy;
    v40 = objc_opt_new();
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v38 = v7;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v51;
      v12 = 0x277CBE000uLL;
      v42 = *v51;
      v43 = v8;
      do
      {
        v13 = 0;
        v44 = v10;
        do
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v50 + 1) + 8 * v13);
          resourceUrl = [v14 resourceUrl];

          if (resourceUrl)
          {
            v16 = objc_alloc(*(v12 + 3008));
            resourceUrl2 = [v14 resourceUrl];
            v18 = [v16 initWithString:resourceUrl2];

            if (v18)
            {
              resolvedUrl = [v14 resolvedUrl];
              if (resolvedUrl)
              {
                v20 = objc_alloc(*(v12 + 3008));
                resolvedUrl2 = [v14 resolvedUrl];
                v22 = [v20 initWithString:resolvedUrl2];
              }

              else
              {
                v22 = 0;
              }

              v24 = [PPSocialHighlightStorage appLinksForResourceURL:v18 resolvedURL:v22];
              if (v24)
              {
                v45 = v22;
                v25 = objc_opt_new();
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                v26 = v24;
                v27 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = *v47;
                  do
                  {
                    for (i = 0; i != v28; ++i)
                    {
                      if (*v47 != v29)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v31 = *(*(&v46 + 1) + 8 * i);
                      if ([v31 isEnabled])
                      {
                        targetApplicationRecord = [v31 targetApplicationRecord];
                        applicationIdentifier = [targetApplicationRecord applicationIdentifier];

                        if (applicationIdentifier)
                        {
                          [v25 addObject:applicationIdentifier];
                        }
                      }
                    }

                    v28 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
                  }

                  while (v28);
                }

                if ([v25 count])
                {
                  v34 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v25];
                  v35 = [v34 intersectsSet:v41];

                  if ((v35 & 1) == 0)
                  {
                    [v40 addObjectsFromArray:v25];
                  }
                }

                v11 = v42;
                v8 = v43;
                v10 = v44;
                v22 = v45;
                v12 = 0x277CBE000;
              }
            }
          }

          else
          {
            v18 = pp_social_highlights_log_handle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              attributionIdentifier = [v14 attributionIdentifier];
              *buf = 138412290;
              v56 = attributionIdentifier;
              _os_log_error_impl(&dword_23224A000, v18, OS_LOG_TYPE_ERROR, "PPSocialHighlightMetrics: encountered highlight (attribution ID: %@) without a valid resource URL", buf, 0xCu);
            }
          }

          ++v13;
        }

        while (v13 != v10);
        v10 = [v8 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v10);
    }

    v7 = v38;
    blockCopy = v39;
  }

  else
  {
    v40 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (unint64_t)countAllLinksReceivedInMessages
{
  v13[2] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = *MEMORY[0x277CC31F8];
  v13[0] = *MEMORY[0x277CC3208];
  v13[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v4 = +[PPConfiguration sharedInstance];
  [v4 socialHighlightMetricReportingInterval];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__PPSocialHighlightMetrics_countAllLinksReceivedInMessages__block_invoke;
  v8[3] = &unk_278978270;
  v8[4] = &v9;
  [PPSocialHighlightMetrics _queryLinksWithFetchAttributes:v3 interval:v8 handler:?];

  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __59__PPSocialHighlightMetrics_countAllLinksReceivedInMessages__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

+ (id)allHighlightIdentifiersReceivedWithShouldContinueBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = +[PPConfiguration sharedInstance];
  [v4 socialHighlightMetricReportingInterval];
  v5 = [PPSocialHighlightMetrics highlightsReceivedInInterval:blockCopy shouldContinueBlock:?];

  if (v5)
  {
    v6 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          highlightIdentifier = [v12 highlightIdentifier];

          if (highlightIdentifier)
          {
            highlightIdentifier2 = [v12 highlightIdentifier];
            [v6 addObject:highlightIdentifier2];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)highlightsReceivedInInterval:(double)interval shouldContinueBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = objc_opt_new();
  v21 = 0;
  v7 = [v6 autoDonatingChatsWithShouldContinueBlock:blockCopy error:&v21];
  v8 = v21;
  location = v8;
  if (!v7)
  {
    v15 = v8;
    v10 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v15;
      _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "PPSocialHighlightMetrics: unable to fetch autodonating chats (possibly deferred): %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if ((blockCopy[2](blockCopy) & 1) == 0)
  {
    v10 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring highlights received in interval.", buf, 2u);
    }

LABEL_10:
    v13 = 0;
    goto LABEL_19;
  }

  v9 = [v6 sharedContentFromChats:v7 dateRange:0 applicationIdentifiers:&location error:interval];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_150];
    obj = location;
    v12 = [v6 attributionsForIdentifiers:v11 error:&obj];
    objc_storeStrong(&location, obj);

    if (v12)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __77__PPSocialHighlightMetrics_highlightsReceivedInInterval_shouldContinueBlock___block_invoke_151;
      v18[3] = &unk_278973E98;
      v19 = v12;
      v13 = [v10 _pas_mappedArrayWithTransform:v18];
      v14 = v19;
    }

    else
    {
      v14 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = location;
        _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "PPSocialHighlightMetrics: unable to fetch attributions: %@", buf, 0xCu);
      }

      v13 = 0;
    }
  }

  else
  {
    v12 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = location;
      _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPSocialHighlightMetrics: unable to fetch searchable items: %@", buf, 0xCu);
    }

    v13 = 0;
  }

LABEL_19:
  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

id __77__PPSocialHighlightMetrics_highlightsReceivedInInterval_shouldContinueBlock___block_invoke_151(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v3 uniqueIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = objc_opt_new();
    v11 = [PPRankableSocialHighlightUtils rankableHighlightFromSearchableItem:v3 attribution:v9 autoDonatingChats:v10 applicationIdentifiers:MEMORY[0x277CBEBF8] clientIdentifier:&stru_284759D38 variant:*MEMORY[0x277D3A740]];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_queryLinksWithFetchAttributes:(id)attributes interval:(double)interval handler:(id)handler
{
  v39[1] = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  handlerCopy = handler;
  v9 = objc_opt_new();
  [v9 setReason:@"SHMetrics"];
  [v9 setDisableBlockingOnIndex:1];
  [v9 setMaxCount:500];
  [v9 setFetchAttributes:attributesCopy];
  [v9 setLowPriority:1];
  [v9 setReason:@"reason:PPSocialHighlightMetrics-1 code:1"];
  v39[0] = *MEMORY[0x277CCA1A0];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  [v9 setProtectionClasses:v10];

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [v11 initWithFormat:@"%@=%@", *MEMORY[0x277CC2DB8], @"lnk"];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"kMDItemContentCreationDate>=$time.now(-%.f)", *&interval];
  v38[0] = v12;
  v38[1] = v13;
  v38[2] = @"URL=*";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
  v15 = [v14 _pas_componentsJoinedByString:@" && "];

  v16 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v15;
    _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: Performing CoreSpotlight highlight query: %@", &buf, 0xCu);
  }

  v17 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v15 context:v9];
  v37 = *MEMORY[0x277D3A658];
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  [v17 setBundleIDs:v18];

  [v17 setFoundItemsHandler:handlerCopy];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__8559;
  v35 = __Block_byref_object_dispose__8560;
  v36 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v19 = dispatch_semaphore_create(0);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __76__PPSocialHighlightMetrics__queryLinksWithFetchAttributes_interval_handler___block_invoke;
  v24[3] = &unk_278973E70;
  p_buf = &buf;
  v27 = &v28;
  v20 = v19;
  v25 = v20;
  [v17 setCompletionHandler:v24];
  [v17 start];
  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
  v21 = *(v29 + 24);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&buf, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

void __76__PPSocialHighlightMetrics__queryLinksWithFetchAttributes_interval_handler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (!v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)_countSentMessagesInLastWeekMatchingChatType:(id)type shouldContinueBlock:(id)block
{
  v42[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  blockCopy = block;
  v7 = objc_opt_new();
  [v7 setReason:@"SHMetrics"];
  [v7 setDisableBlockingOnIndex:1];
  [v7 setMaxCount:500];
  v42[0] = *MEMORY[0x277CC2BD8];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  [v7 setFetchAttributes:v8];

  [v7 setLowPriority:1];
  [v7 setReason:@"reason:PPSocialHighlightMetrics-1; code:1"];
  v41 = *MEMORY[0x277CCA1A0];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  [v7 setProtectionClasses:v9];

  typeCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com_apple_mobilesms_service=%@", typeCopy];
  v40[0] = typeCopy;
  v40[1] = @"kMDItemContentCreationDate>=$time.now(-7d)";
  v40[2] = @"com_apple_mobilesms_fromMe=1";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
  v12 = [v11 _pas_componentsJoinedByString:@" && "];

  v13 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: Performing CoreSpotlight highlight query: %@", &buf, 0xCu);
  }

  v14 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v12 context:v7];
  v39 = *MEMORY[0x277D3A658];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  [v14 setBundleIDs:v15];

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __93__PPSocialHighlightMetrics__countSentMessagesInLastWeekMatchingChatType_shouldContinueBlock___block_invoke;
  v29[3] = &unk_278978270;
  v29[4] = &v30;
  [v14 setFoundItemsHandler:v29];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__8559;
  v37 = __Block_byref_object_dispose__8560;
  v38 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v16 = dispatch_semaphore_create(0);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __93__PPSocialHighlightMetrics__countSentMessagesInLastWeekMatchingChatType_shouldContinueBlock___block_invoke_130;
  v23[3] = &unk_278973E70;
  p_buf = &buf;
  v26 = v27;
  v17 = v16;
  v24 = v17;
  [v14 setCompletionHandler:v23];
  [v14 start];
  do
  {
    if ([MEMORY[0x277D425A0] waitForSemaphore:v17 timeoutSeconds:1.0] != 1)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v31 + 6)];
      goto LABEL_10;
    }
  }

  while ((blockCopy[2](blockCopy) & 1) != 0);
  v18 = pp_default_log_handle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightMetrics: deferring while counting metrics.", v22, 2u);
  }

  [v14 cancel];
  v19 = 0;
LABEL_10:

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v30, 8);
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __93__PPSocialHighlightMetrics__countSentMessagesInLastWeekMatchingChatType_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void __93__PPSocialHighlightMetrics__countSentMessagesInLastWeekMatchingChatType_shouldContinueBlock___block_invoke_130(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (!v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)registerCTSDataCollection
{
  +[PPSocialHighlightMetrics registerLogConsumedByClient];
  +[PPSocialHighlightMetrics registerDeviceSettingsCollection];
  +[PPSocialHighlightMetrics registerCountLinks];
  +[PPSocialHighlightMetrics registerSampledUnsupportedClientLogging];
  +[PPSocialHighlightMetrics registerClientLinkStatus];

  +[PPSocialHighlightMetrics registerExpiredLinkReview];
}

+ (void)logFeedbackForAttribution:(id)attribution type:(unint64_t)type client:(id)client
{
  v18[3] = *MEMORY[0x277D85DE8];
  attributionCopy = attribution;
  clientCopy = client;
  v9 = [PPSocialHighlightStorage attributionFeedbackTypeForAttributionFeedbackType:type];
  if (v9 >= 0xC)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v9];
  }

  else
  {
    v10 = off_278973F50[v9];
  }

  v11 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_INFO, "Logging feedback for highlight attribution", buf, 2u);
  }

  v12 = objc_autoreleasePoolPush();
  v17[0] = @"clientIdentifier";
  null = clientCopy;
  if (!clientCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v18[0] = null;
  v18[1] = @"attributionFeedbackDomain";
  v17[1] = @"feedbackDomain";
  v17[2] = @"feedbackType";
  v18[2] = v10;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  if (!clientCopy)
  {
  }

  objc_autoreleasePoolPop(v12);
  [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.SocialHighlights.FeedbackReceived" payload:v14 inBackground:0];

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)logFeedbackForHighlight:(id)highlight type:(unint64_t)type client:(id)client
{
  v18[3] = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  clientCopy = client;
  v9 = [PPSocialHighlightStorage unifiedFeedbackTypeForHighlightFeedbackType:type];
  if (v9 >= 0xC)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v9];
  }

  else
  {
    v10 = off_278973F50[v9];
  }

  v11 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_INFO, "Logging feedback for highlight engagement", buf, 2u);
  }

  v12 = objc_autoreleasePoolPush();
  v17[0] = @"clientIdentifier";
  null = clientCopy;
  if (!clientCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v18[0] = null;
  v18[1] = @"engagementFeedbackDomain";
  v17[1] = @"feedbackDomain";
  v17[2] = @"feedbackType";
  v18[2] = v10;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  if (!clientCopy)
  {
  }

  objc_autoreleasePoolPop(v12);
  [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.SocialHighlights.FeedbackReceived" payload:v14 inBackground:0];

  v15 = *MEMORY[0x277D85DE8];
}

@end