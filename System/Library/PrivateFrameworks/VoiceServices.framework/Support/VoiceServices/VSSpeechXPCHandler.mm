@interface VSSpeechXPCHandler
+ (BOOL)isSiriClientBundleIdentifier:(id)a3;
- (AFAudioPowerUpdater)audioPowerUpdater;
- (BOOL)isSpeaking;
- (OS_dispatch_queue)audioPowerUpdateQueue;
- (VSSpeechXPCHandler)initWithConnection:(id)a3;
- (id)_delegate;
- (void)audioRequest:(id)a3 didReportInstrumentMetrics:(id)a4 error:(id)a5;
- (void)audioRequestDidStart:(id)a3;
- (void)beginAudioPowerUpdateWithReply:(id)a3;
- (void)cachePresynthesizedAudioRequest:(id)a3;
- (void)cleanUnusedAssets:(id)a3;
- (void)continueSpeechRequest:(id)a3;
- (void)dealloc;
- (void)endAudioPowerUpdate;
- (void)estimateDurationWithRequest:(id)a3 reply:(id)a4;
- (void)forwardStreamObject:(id)a3;
- (void)getAllVoiceSubscriptionsWithReply:(id)a3;
- (void)getFootprintsForVoiceName:(id)a3 languageCode:(id)a4 reply:(id)a5;
- (void)getLocalVoiceResourcesReply:(id)a3;
- (void)getLocalVoicesForLanguage:(id)a3 reply:(id)a4;
- (void)getSpeechIsActiveForConnectionReply:(id)a3;
- (void)getSpeechIsActiveReply:(id)a3;
- (void)getSubscribedVoiceAssetsWithClientID:(id)a3 forAccessoryID:(id)a4 reply:(id)a5;
- (void)getVoiceInfoForLanguageCode:(id)a3 name:(id)a4 footprint:(int64_t)a5 gender:(int64_t)a6 type:(int64_t)a7 reply:(id)a8;
- (void)getVoiceNamesForLanguage:(id)a3 reply:(id)a4;
- (void)getVoiceResourceForLanguage:(id)a3 reply:(id)a4;
- (void)invalidate;
- (void)invokeDaemon:(id)a3;
- (void)killDaemon;
- (void)pauseSpeechRequest:(id)a3 atMark:(int64_t)a4;
- (void)performLanguageFallBackIfNeededWithRequest:(id)a3;
- (void)preprocessRequestBeforeSynthesis:(id)a3;
- (void)prewarmIfNeededWithRequest:(id)a3 reply:(id)a4;
- (void)queryPhaticCapabilityWithRequest:(id)a3 reply:(id)a4;
- (void)setSubscribedVoiceAssets:(id)a3 withClientID:(id)a4 forAccessoryID:(id)a5;
- (void)speechRequest:(id)a3 didReceiveTimingInfo:(id)a4;
- (void)speechRequest:(id)a3 didReportInstrumentMetrics:(id)a4;
- (void)speechRequest:(id)a3 didStartWithMark:(int64_t)a4 forRange:(_NSRange)a5;
- (void)speechRequestDidContinue:(id)a3;
- (void)speechRequestDidPause:(id)a3;
- (void)speechRequestDidStart:(id)a3;
- (void)startPhonemesRequest:(id)a3 phonemeSystem:(int64_t)a4 reply:(id)a5;
- (void)startPresynthesizedAudioRequest:(id)a3;
- (void)startSpeechRequest:(id)a3 reply:(id)a4;
- (void)startSynthesisRequest:(id)a3;
- (void)stopPresynthesizedAudioRequest:(id)a3;
- (void)stopSpeechRequest:(id)a3 atMark:(int64_t)a4;
- (void)synthesisRequest:(id)a3 didFinishWithInstrumentMetrics:(id)a4 error:(id)a5;
- (void)synthesisRequest:(id)a3 didGenerateAudioChunk:(id)a4;
- (void)synthesisRequest:(id)a3 didReceiveTimingInfo:(id)a4;
- (void)triggerCellularDownloadedVoiceAssets:(id)a3 withClientID:(id)a4;
- (void)updateWithConnectionIdentifier:(id)a3 keepActive:(BOOL)a4;
@end

@implementation VSSpeechXPCHandler

- (void)killDaemon
{
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_DEFAULT, "Received killDaemon, shutting down", v3, 2u);
  }

  exit(0);
}

- (void)invokeDaemon:(id)a3
{
  v3 = a3;
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2727E4000, v4, OS_LOG_TYPE_DEFAULT, "Received invokeDaemon, I'm listening", v6, 2u);
  }

  if (v3)
  {
    v5 = getpid();
    v3[2](v3, v5);
  }
}

- (void)forwardStreamObject:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 streamId];

  v5 = VSGetLogDefault();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [v3 streamId];
      v10 = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_INFO, "Enqueue stream object %@, streamId: %@", &v10, 0x16u);
    }

    v6 = +[VSInlineStreamService sharedService];
    v8 = [v3 streamId];
    [v6 enqueueStreamId:v8 withObject:v3];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Ignore stream object with nil stream ID: %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceInfoForLanguageCode:(id)a3 name:(id)a4 footprint:(int64_t)a5 gender:(int64_t)a6 type:(int64_t)a7 reply:(id)a8
{
  v51 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a8;
  v16 = VSGetLogDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithLong:a6];
    *buf = 138543874;
    v46 = v13;
    v47 = 2112;
    v48 = v14;
    v49 = 2112;
    v50 = v17;
    _os_log_impl(&dword_2727E4000, v16, OS_LOG_TYPE_INFO, "Begin getVoiceInfoForLanguageCode: %{public}@, %@, %@", buf, 0x20u);
  }

  if (v15)
  {
    if (!v13)
    {
      v21 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v44 = @"Missing languageCode";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v22 = [v21 errorWithDomain:@"VoiceServicesErrorDomain" code:100 userInfo:v19];
      v15[2](v15, 0, v22);
LABEL_18:

      goto LABEL_19;
    }

    v18 = [MEMORY[0x277D79950] sharedManager];
    v19 = [v18 selectVoiceForLang:v13 name:v14 type:a7 gender:a6 footprint:a5];

    v20 = [v19 voiceData];
    if ([v20 footprint]== 1)
    {
    }

    else
    {
      if (!v14)
      {
LABEL_14:

        goto LABEL_15;
      }

      v23 = [v19 voiceData];
      v24 = [v23 name];
      v25 = [v14 isEqual:v24];

      if (v25)
      {
LABEL_15:
        v39 = VSGetLogDefault();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = [v19 voiceData];
          *buf = 138412290;
          v46 = v40;
          _os_log_impl(&dword_2727E4000, v39, OS_LOG_TYPE_INFO, "End getVoiceInfoForLanguageCode: %@", buf, 0xCu);
        }

        v22 = [v19 voiceData];
        (v15)[2](v15, v22, 0);
        goto LABEL_18;
      }
    }

    v26 = [v19 voiceData];
    [v26 setGender:a6];

    v27 = [v19 voiceData];
    [v27 setName:v14];

    v28 = [v19 voiceData];
    [v28 setFootprint:1];

    v29 = [v19 voiceData];
    [v29 setType:1];

    v30 = [v19 voiceData];
    [v30 setContentVersion:&unk_2881D53B0];

    v31 = [v19 voiceData];
    v32 = [v31 languages];
    v33 = [v32 firstObject];
    v34 = [v33 isEqualToString:v13];

    if ((v34 & 1) == 0)
    {
      v35 = [MEMORY[0x277D799B0] fallbackLanguageForLanguage:v13];
      v42 = v35;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
      v37 = [v19 voiceData];
      [v37 setLanguages:v36];
    }

    v20 = VSGetLogDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v38 = [v19 voiceData];
      *buf = 136315394;
      v46 = "[VSSpeechXPCHandler getVoiceInfoForLanguageCode:name:footprint:gender:type:reply:]";
      v47 = 2112;
      v48 = v38;
      _os_log_impl(&dword_2727E4000, v20, OS_LOG_TYPE_INFO, "%s override voice info for server TTS platform, %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

LABEL_19:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceResourceForLanguage:(id)a3 reply:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (v5)
  {
    if (v8)
    {
      v6 = [MEMORY[0x277D79950] sharedManager];
      v7 = [v6 selectVoiceResourceAssetForLanguage:v8];
    }

    else
    {
      v7 = 0;
    }

    v5[2](v5, v7);
  }
}

- (void)triggerCellularDownloadedVoiceAssets:(id)a3 withClientID:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEFAULT, "Preparing cellular download for %@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277D79950] sharedManager];
  [v7 cancelDownloads:triggerCellularDownloadedVoiceAssets_withClientID__previousDownloads completion:0];

  v8 = [MEMORY[0x277D79950] sharedManager];
  [v8 cancelDownloads:v5 completion:0];

  objc_storeStrong(&triggerCellularDownloadedVoiceAssets_withClientID__previousDownloads, a3);
  v9 = [MEMORY[0x277D79950] downloadOptionsWithBattery:1];
  [v9 setAllowsCellularAccess:1];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = VSGetLogDefault();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v15;
          _os_log_impl(&dword_2727E4000, v16, OS_LOG_TYPE_DEFAULT, "Start cellular download for %@", buf, 0xCu);
        }

        v17 = [MEMORY[0x277D79950] sharedManager];
        [v17 downloadVoiceAsset:v15 options:v9 progressUpdateHandler:0];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)getAllVoiceSubscriptionsWithReply:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v3 = [MEMORY[0x277D79978] defaultInstance];
  v4 = [v3 subscribedVoicesForClientID:0 accessoryID:0];

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v4;
  v32 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v32)
  {
    v31 = *v39;
    do
    {
      v6 = 0;
      do
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v6;
        v7 = *(*(&v38 + 1) + 8 * v6);
        v8 = [MEMORY[0x277D79950] sharedManager];
        v9 = [v8 voiceAssetsForSubscription:v7];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v35;
          do
          {
            v14 = 0;
            do
            {
              if (*v35 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v34 + 1) + 8 * v14) voiceData];
              v16 = [v7 voice];
              v17 = [v16 name];
              v18 = [v17 length];

              if (v18)
              {
                v19 = [v7 voice];
                v20 = [v19 name];
                [v15 setName:v20];
              }

              v21 = [v7 voice];
              v22 = [v21 type];

              if (v22)
              {
                v23 = [v7 voice];
                [v15 setType:{objc_msgSend(v23, "type")}];
              }

              v24 = objc_alloc(MEMORY[0x277D799E0]);
              v25 = [v7 clientID];
              v26 = [v7 accessoryID];
              v27 = [v24 initWithClient:v25 accessory:v26 voice:v15];

              [v5 addObject:v27];
              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v12);
        }

        v6 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v32);
  }

  v29[2](v29, v5);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)getSubscribedVoiceAssetsWithClientID:(id)a3 forAccessoryID:(id)a4 reply:(id)a5
{
  if (a5)
  {
    v7 = MEMORY[0x277D79978];
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = [v7 defaultInstance];
    v12 = [v9 UUIDString];

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = &stru_2881CBD18;
    }

    v15 = [v11 subscribedVoicesForClientID:v10 accessoryID:v13];

    v14 = [v15 valueForKey:@"voice"];
    v8[2](v8, v14);
  }
}

- (void)setSubscribedVoiceAssets:(id)a3 withClientID:(id)a4 forAccessoryID:(id)a5
{
  v75 = *MEMORY[0x277D85DE8];
  v53 = a3;
  v8 = a4;
  v9 = a5;
  if (v9 && ![(VSHHManagementClient *)self->_hubManagementClient isExistingAccessoryId:v9])
  {
    v41 = VSGetLogDefault();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v67 = v8;
      v68 = 2112;
      v69 = v9;
      _os_log_error_impl(&dword_2727E4000, v41, OS_LOG_TYPE_ERROR, "ignored client '%{public}@' setting auto-download for a non-existing accessoryId '%@'", buf, 0x16u);
    }
  }

  else
  {
    v44 = v9;
    v10 = [v9 UUIDString];
    v11 = v10;
    v12 = &stru_2881CBD18;
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v14 = [MEMORY[0x277D79978] defaultInstance];
    v45 = v13;
    v46 = v8;
    v15 = [v14 subscribedVoicesForClientID:v8 accessoryID:v13];

    v47 = [MEMORY[0x277CBEB18] array];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v15;
    v16 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (v16)
    {
      v17 = v16;
      v51 = *v63;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v63 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [*(*(&v62 + 1) + 8 * i) voice];
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v20 = v53;
          v21 = [v20 countByEnumeratingWithState:&v58 objects:v73 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v59;
            while (2)
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v59 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = [*(*(&v58 + 1) + 8 * j) dictionaryRepresentation];
                v26 = [v19 dictionaryRepresentation];
                v27 = [v25 isEqualToDictionary:v26];

                if (v27)
                {

                  goto LABEL_20;
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v58 objects:v73 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          [v47 addObject:v19];
LABEL_20:
        }

        v17 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
      }

      while (v17);
    }

    v28 = [MEMORY[0x277D79978] defaultInstance];
    [v28 setSubscribedVoices:v53 forClientID:v46 accessoryID:v45];

    v52 = [MEMORY[0x277CBEB18] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v48 = v53;
    v29 = [v48 countByEnumeratingWithState:&v54 objects:v72 count:16];
    if (v29)
    {
      v30 = v29;
      v50 = *v55;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v55 != v50)
          {
            objc_enumerationMutation(v48);
          }

          v32 = *(*(&v54 + 1) + 8 * k);
          v33 = MEMORY[0x277CCACA8];
          v34 = [v32 languages];
          v35 = [v34 firstObject];
          v36 = [v32 name];
          v37 = [MEMORY[0x277D799C8] typeStringFromType:{objc_msgSend(v32, "type")}];
          v38 = [MEMORY[0x277D799C8] footprintStringFromFootprint:{objc_msgSend(v32, "footprint")}];
          v39 = [v33 stringWithFormat:@"%@:%@:%@:%@", v35, v36, v37, v38];
          [v52 addObject:v39];
        }

        v30 = [v48 countByEnumeratingWithState:&v54 objects:v72 count:16];
      }

      while (v30);
    }

    v40 = VSGetLogDefault();
    v41 = v45;
    v8 = v46;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v67 = v46;
      v68 = 2112;
      v69 = v45;
      v70 = 2114;
      v71 = v52;
      _os_log_impl(&dword_2727E4000, v40, OS_LOG_TYPE_DEFAULT, "client '%{public}@' and accessory '%@' set auto download voice assets:%{public}@", buf, 0x20u);
    }

    v42 = [[VSDownloadService alloc] initWithType:2];
    [(VSDownloadService *)v42 cancelDownloadForAssets:v47];
    [(VSDownloadService *)v42 updateVoicesAndVoiceResources];

    v9 = v44;
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)getLocalVoiceResourcesReply:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277D79950];
    v4 = a3;
    v5 = [v3 sharedManager];
    v6 = [v5 installedVoiceResources];

    v4[2](v4, v6, 0);
  }
}

- (void)getLocalVoicesForLanguage:(id)a3 reply:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [MEMORY[0x277D79950] sharedManager];
    v9 = [v8 installedAssetsForType:0 voicename:0 language:v5 gender:0 footprint:0];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v17 + 1) + 8 * v14) voiceData];
          [v7 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    v6[2](v6, v7, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)cleanUnusedAssets:(id)a3
{
  v6 = a3;
  [(VSHHManagementClient *)self->_hubManagementClient cleanUnknownAccessoriesPreferences];
  if ([MEMORY[0x277D79930] useSiriTTSServiceV2])
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277D79950] sharedManager];
    v4 = [v5 cleanUnusedAssets];
  }

  if (v6)
  {
    v6[2](v6, v4);
  }
}

- (void)audioRequest:(id)a3 didReportInstrumentMetrics:(id)a4 error:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [(VSSpeechXPCHandler *)self _delegate];
  [v11 audioRequest:v12 didReportInstrumentMetrics:v8 error:v9];

  objc_autoreleasePoolPop(v10);
}

- (void)audioRequestDidStart:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(VSSpeechXPCHandler *)self _delegate];
  [v5 audioRequestDidStart:v6];

  objc_autoreleasePoolPop(v4);
}

- (void)synthesisRequest:(id)a3 didFinishWithInstrumentMetrics:(id)a4 error:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [(VSSpeechXPCHandler *)self _delegate];
  [v11 synthesisRequest:v12 didFinishWithInstrumentMetrics:v8 error:v9];

  objc_autoreleasePoolPop(v10);
}

- (void)synthesisRequest:(id)a3 didGenerateAudioChunk:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [(VSSpeechXPCHandler *)self _delegate];
  [v8 synthesisRequest:v9 didGenerateAudioChunk:v6];

  objc_autoreleasePoolPop(v7);
}

- (void)synthesisRequest:(id)a3 didReceiveTimingInfo:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [(VSSpeechXPCHandler *)self _delegate];
  [v8 synthesisRequest:v9 didReceiveTimingInfo:v6];

  objc_autoreleasePoolPop(v7);
}

- (void)speechRequest:(id)a3 didReportInstrumentMetrics:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [(VSSpeechXPCHandler *)self _delegate];
  [v8 speechRequest:v9 didReportInstrumentMetrics:v6];

  objc_autoreleasePoolPop(v7);
}

- (void)speechRequest:(id)a3 didReceiveTimingInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VSSpeechXPCHandler *)self _delegate];
  [v8 speechRequest:v7 didReceiveTimingInfo:v6];
}

- (void)speechRequest:(id)a3 didStartWithMark:(int64_t)a4 forRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v11 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = [(VSSpeechXPCHandler *)self _delegate];
  [v10 speechRequest:v11 didStartWithMark:a4 forRange:{location, length}];

  objc_autoreleasePoolPop(v9);
}

- (void)speechRequestDidContinue:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(VSSpeechXPCHandler *)self _delegate];
  [v5 speechRequestDidContinue:v6];

  objc_autoreleasePoolPop(v4);
}

- (void)speechRequestDidPause:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(VSSpeechXPCHandler *)self _delegate];
  [v5 speechRequestDidPause:v6];

  objc_autoreleasePoolPop(v4);
}

- (void)speechRequestDidStart:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(VSSpeechXPCHandler *)self _delegate];
  [v5 speechRequestDidStart:v6];

  objc_autoreleasePoolPop(v4);
}

- (id)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v3 = [WeakRetained remoteObjectProxy];

  return v3;
}

- (void)getFootprintsForVoiceName:(id)a3 languageCode:(id)a4 reply:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [MEMORY[0x277D79950] sharedManager];
    v22 = v7;
    v11 = [v10 installedAssetsForType:0 voicename:v7 language:v8 gender:0 footprint:0];

    v12 = [MEMORY[0x277CBEB18] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = MEMORY[0x277CCABB0];
          v19 = [*(*(&v23 + 1) + 8 * v17) voiceData];
          v20 = [v18 numberWithLong:{objc_msgSend(v19, "footprint")}];
          [v12 addObject:v20];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    v9[2](v9, v12);
    v7 = v22;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceNamesForLanguage:(id)a3 reply:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [MEMORY[0x277D79950] sharedManager];
    v9 = [v8 installedAssetsForType:0 voicename:0 language:v5 gender:0 footprint:0];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v18 + 1) + 8 * v14) voiceData];
          v16 = [v15 name];
          [v7 addObject:v16];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v6[2](v6, v7);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)endAudioPowerUpdate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[VSSpeechXPCHandler endAudioPowerUpdate]";
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_INFO, "%s", &v6, 0xCu);
  }

  v4 = [(VSSpeechXPCHandler *)self audioPowerUpdater];
  [v4 endUpdate];

  [(VSSpeechXPCHandler *)self setAudioPowerUpdater:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)beginAudioPowerUpdateWithReply:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[VSSpeechXPCHandler beginAudioPowerUpdateWithReply:]";
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (v4)
  {
    v6 = [(VSSpeechXPCHandler *)self audioPowerUpdater];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__VSSpeechXPCHandler_beginAudioPowerUpdateWithReply___block_invoke;
    v9[3] = &unk_279E4B598;
    v10 = v4;
    [v6 createNewXPCWrapperWithCompletion:v9];

    v7 = [(VSSpeechXPCHandler *)self audioPowerUpdater];
    [v7 beginUpdate];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (AFAudioPowerUpdater)audioPowerUpdater
{
  audioPowerUpdater = self->_audioPowerUpdater;
  if (!audioPowerUpdater)
  {
    v4 = +[VSSpeechAudioPowerService sharedServices];
    v5 = objc_alloc(MEMORY[0x277CEF190]);
    v6 = [(VSSpeechXPCHandler *)self audioPowerUpdateQueue];
    v7 = [v5 initWithProvider:v4 queue:v6 frequency:1 delegate:0];
    v8 = self->_audioPowerUpdater;
    self->_audioPowerUpdater = v7;

    audioPowerUpdater = self->_audioPowerUpdater;
  }

  return audioPowerUpdater;
}

- (OS_dispatch_queue)audioPowerUpdateQueue
{
  audioPowerUpdateQueue = self->_audioPowerUpdateQueue;
  if (!audioPowerUpdateQueue)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v5 = dispatch_queue_create("VSAudioPowerUpdateQueue", v4);
    v6 = self->_audioPowerUpdateQueue;
    self->_audioPowerUpdateQueue = v5;

    audioPowerUpdateQueue = self->_audioPowerUpdateQueue;
  }

  return audioPowerUpdateQueue;
}

- (void)startPhonemesRequest:(id)a3 phonemeSystem:(int64_t)a4 reply:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  [(VSSpeechXPCHandler *)self preprocessRequestBeforeSynthesis:v8];
  v10 = [(VSSpeechSpeakTask *)[VSTextToPhonemesTask alloc] initWithRequest:v8];
  [(VSSpeechSpeakTask *)v10 setDelegate:self];
  [(VSTextToPhonemesTask *)v10 setReply:v9];
  v11 = VSGetLogDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v8 requestCreatedTimestamp];
    _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_DEFAULT, "Created phonemes task %llu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = os_transaction_create();
  objc_initWeak(&location, v10);
  [(VSTextToPhonemesTask *)v10 setPhonemeSystem:a4];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __63__VSSpeechXPCHandler_startPhonemesRequest_phonemeSystem_reply___block_invoke;
  v18 = &unk_279E4B570;
  p_buf = &buf;
  objc_copyWeak(&v21, &location);
  v12 = v9;
  v19 = v12;
  [(VSTextToPhonemesTask *)v10 setCompletionBlock:&v15];
  v13 = [VSSpeechTaskQueue mainDeviceQueue:v15];
  [v13 addTask:v10];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);

  v14 = *MEMORY[0x277D85DE8];
}

void __63__VSSpeechXPCHandler_startPhonemesRequest_phonemeSystem_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  v5 = [WeakRetained phonemes];
  v6 = [v5 firstObject];
  v7 = [WeakRetained error];
  (*(v4 + 16))(v4, v6, v7);
}

- (void)getSpeechIsActiveForConnectionReply:(id)a3
{
  v9 = a3;
  v4 = +[VSSpeechTaskQueue mainDeviceQueue];
  v5 = [v4 currentTask];

  if ([v5 conformsToProtocol:&unk_2881D6B48])
  {
    v6 = v5;
    if ([v6 isSpeaking])
    {
      v7 = [v6 delegate];
      v8 = v7 == self;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v9)
  {
    v9[2](v9, v8);
  }
}

- (void)getSpeechIsActiveReply:(id)a3
{
  v6 = a3;
  v3 = +[VSSpeechTaskQueue mainDeviceQueue];
  v4 = [v3 currentTask];

  if ([v4 conformsToProtocol:&unk_2881D6B48])
  {
    v5 = [v4 isSpeaking];
  }

  else
  {
    v5 = 0;
  }

  if (v6)
  {
    v6[2](v6, v5);
  }
}

- (void)stopSpeechRequest:(id)a3 atMark:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[VSSpeechTaskQueue mainDeviceQueue];
  v6 = [v4 accessoryID];

  if (v6)
  {
    v7 = [v4 accessoryID];
    v8 = [v7 UUIDString];
    v9 = [VSSpeechTaskQueue parallelQueueWithIdentifier:v8];

    v5 = v9;
  }

  v10 = [v5 taskWithCreatedTimeStamp:{objc_msgSend(v4, "requestCreatedTimestamp")}];
  if (v10)
  {
    [v5 cancelTask:v10];
  }

  else
  {
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = [v4 requestCreatedTimestamp];
      _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_DEFAULT, "Ignore stopSpeechRequest. Cannot find task with associated request %llu.", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)continueSpeechRequest:(id)a3
{
  v3 = a3;
  v4 = +[VSSpeechTaskQueue mainDeviceQueue];
  v5 = [v3 accessoryID];

  if (v5)
  {
    v6 = [v3 accessoryID];
    v7 = [v6 UUIDString];
    v8 = [VSSpeechTaskQueue parallelQueueWithIdentifier:v7];

    v4 = v8;
  }

  v9 = [v4 currentTask];
  v10 = [v4 createdTimestampWithTask:v9];

  if (v3 && [v3 requestCreatedTimestamp] != v10)
  {
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_DEFAULT, "Ignore continueSpeechRequest. Current request is different than requested request.", v12, 2u);
    }
  }

  else
  {
    [v4 resumeCurrentTask];
  }
}

- (void)pauseSpeechRequest:(id)a3 atMark:(int64_t)a4
{
  v4 = a3;
  v5 = +[VSSpeechTaskQueue mainDeviceQueue];
  v6 = [v4 accessoryID];

  if (v6)
  {
    v7 = [v4 accessoryID];
    v8 = [v7 UUIDString];
    v9 = [VSSpeechTaskQueue parallelQueueWithIdentifier:v8];

    v5 = v9;
  }

  v10 = [v5 currentTask];
  v11 = [v5 createdTimestampWithTask:v10];

  if (v4 && [v4 requestCreatedTimestamp] != v11)
  {
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_DEFAULT, "Ignore pauseSpeechRequest. Current request is different than requested request.", v13, 2u);
    }
  }

  else
  {
    [v5 suspendCurrentTask];
  }
}

- (void)startSynthesisRequest:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(VSSpeechXPCHandler *)self preprocessRequestBeforeSynthesis:v4];
  if ([VSServerTTSClient shouldUseServerTTSForRequest:v4])
  {
    v5 = [[VSSpeechServerTask alloc] initWithRequest:v4 shouldSpeak:0];
    [(VSSpeechServerTask *)v5 setDelegate:self];
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(VSSpeechServerTask *)v5 instrumentMetrics];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v7 requestCreatedTimestamp];
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEFAULT, "Created server synthesis task %llu", &buf, 0xCu);
    }
  }

  else
  {
    v5 = [[VSSpeechSynthesisTask alloc] initWithRequest:v4];
    [(VSSpeechServerTask *)v5 setDelegate:self];
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(VSSpeechServerTask *)v5 instrumentMetrics];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v8 requestCreatedTimestamp];
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEFAULT, "Created synthesis task %llu", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = os_transaction_create();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__VSSpeechXPCHandler_startSynthesisRequest___block_invoke;
  v19[3] = &unk_279E4B548;
  v19[4] = &buf;
  [(VSSpeechServerTask *)v5 setCompletionBlock:v19];
  v9 = +[VSInlineStreamService sharedService];
  v10 = [v9 hasInlineStreamRequestForSpeakRequest:v4];

  if (v10)
  {
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(VSSpeechServerTask *)v5 instrumentMetrics];
      v13 = [v12 requestCreatedTimestamp];
      *v20 = 134217984;
      v21 = v13;
      _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_DEFAULT, "Found matched inline streaming request, cancel synthesis task %llu", v20, 0xCu);
    }

    [(VSSpeechServerTask *)v5 cancel];
  }

  else
  {
    v14 = [v4 accessoryID];

    if (v14)
    {
      v15 = [v4 accessoryID];
      v16 = [v15 UUIDString];
      v17 = [VSSpeechTaskQueue parallelQueueWithIdentifier:v16];
      [v17 addTask:v5];
    }

    else
    {
      v15 = +[VSSpeechTaskQueue mainDeviceQueue];
      [v15 addTask:v5];
    }
  }

  _Block_object_dispose(&buf, 8);

  v18 = *MEMORY[0x277D85DE8];
}

void __44__VSSpeechXPCHandler_startSynthesisRequest___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)stopPresynthesizedAudioRequest:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 accessoryID];

  if (v4)
  {
    v5 = [v3 accessoryID];
    v6 = [v5 UUIDString];
    v7 = [VSSpeechTaskQueue parallelQueueWithIdentifier:v6];
  }

  else
  {
    v7 = +[VSSpeechTaskQueue mainDeviceQueue];
  }

  v8 = [v7 taskWithCreatedTimeStamp:{objc_msgSend(v3, "requestCreatedTimestamp")}];
  if (v8)
  {
    [v7 cancelTask:v8];
  }

  else
  {
    v9 = VSGetLogDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = [v3 requestCreatedTimestamp];
      _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_DEFAULT, "Ignore stopPresynthesizedAudioRequest. Cannot find task with associated request %llu.", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cachePresynthesizedAudioRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v4 length];

  if (v5)
  {
    v6 = +[VSInlineStreamService sharedService];
    [v6 addInlineStreamRequest:v3];
  }

  else
  {
    v6 = [MEMORY[0x277D79920] audioDataFromPresynthesisRequest:v3];
    [v6 duration];
    if (v7 == 0.0)
    {
      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        v15 = [v3 requestCreatedTimestamp];
        _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "Cache #PresynthesizedRequest %llu skipped: no audio", &v14, 0xCu);
      }
    }

    else
    {
      v8 = +[VSCachingService standardService];
      v9 = [v3 text];
      [v8 enqueueShortTermCacheWithHash:v9 audio:v6 timingInfo:0 voiceKey:@"unknown:unknown:PresynthesizedAudio" voiceResourceKey:@"unknown:PresynthesizedAudio:unknown" completion:0];

      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v3 requestCreatedTimestamp];
        v12 = [v3 logText];
        v14 = 134218242;
        v15 = v11;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "Cache #PresynthesizedRequest %llu with text: %@", &v14, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)startPresynthesizedAudioRequest:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 siriRequestId];
  if (v5)
  {
    v6 = [v4 clientBundleIdentifier];
    v7 = [VSSpeechXPCHandler isSiriClientBundleIdentifier:v6];

    if (!v7)
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v22 = [v4 clientBundleIdentifier];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v22;
        _os_log_fault_impl(&dword_2727E4000, v8, OS_LOG_TYPE_FAULT, "Unexpected client '%{public}@' sets Siri request ID.", &buf, 0xCu);
      }

      [v4 setSiriRequestId:0];
    }
  }

  v9 = [v4 siriRequestId];

  if (v9)
  {
    v10 = [VSSiriInstrumentation alloc];
    v11 = [v4 siriRequestId];
    v9 = [(VSSiriInstrumentation *)v10 initWithSiriRequestId:v11];

    v12 = [v4 text];
    [(VSSiriInstrumentation *)v9 instrumentRequestReceivedWithText:v12 requestedVoiceType:0 requestedVoiceFootprint:0 isPrivate:0];
  }

  v13 = [[VSSpeechPresynthesizedTask alloc] initWithRequest:v4];
  [(VSSpeechPresynthesizedTask *)v13 setDelegate:self];
  v14 = VSGetLogDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(VSSpeechPresynthesizedTask *)v13 instrumentMetrics];
    v16 = [v15 requestCreatedTimestamp];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v16;
    _os_log_impl(&dword_2727E4000, v14, OS_LOG_TYPE_DEFAULT, "Created presynthesized task %llu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = os_transaction_create();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__VSSpeechXPCHandler_startPresynthesizedAudioRequest___block_invoke;
  v23[3] = &unk_279E4B548;
  v23[4] = &buf;
  [(VSSpeechPresynthesizedTask *)v13 setCompletionBlock:v23];
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(VSSpeechPresynthesizedTask *)v13 setSiriInstrumentation:v9];
  }

  v17 = [v4 accessoryID];

  if (v17)
  {
    v18 = [v4 accessoryID];
    v19 = [v18 UUIDString];
    v20 = [VSSpeechTaskQueue parallelQueueWithIdentifier:v19];
    [v20 addTask:v13];
  }

  else
  {
    v18 = +[VSSpeechTaskQueue mainDeviceQueue];
    [v18 addTask:v13];
  }

  _Block_object_dispose(&buf, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __54__VSSpeechXPCHandler_startPresynthesizedAudioRequest___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)startSpeechRequest:(id)a3 reply:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(VSSpeechXPCHandler *)self preprocessRequestBeforeSynthesis:v6];
  v8 = [v6 siriRequestId];

  if (v8)
  {
    v9 = [VSSiriInstrumentation alloc];
    v10 = [v6 siriRequestId];
    v8 = [(VSSiriInstrumentation *)v9 initWithSiriRequestId:v10];

    v11 = [v6 text];
    -[VSSiriInstrumentation instrumentRequestReceivedWithText:requestedVoiceType:requestedVoiceFootprint:isPrivate:](v8, "instrumentRequestReceivedWithText:requestedVoiceType:requestedVoiceFootprint:isPrivate:", v11, [v6 voiceType], objc_msgSend(v6, "footprint"), objc_msgSend(v6, "canUseServerTTS") ^ 1);
  }

  v12 = [MEMORY[0x277D79978] defaultInstance];
  v13 = [MEMORY[0x277CBEAA8] date];
  [v12 setLastTTSRequestDate:v13];

  v14 = [MEMORY[0x277D79998] standardInstance];
  v15 = [v14 disableInlineStreamTTS];

  if (v15)
  {
    v16 = VSGetLogDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2727E4000, v16, OS_LOG_TYPE_DEFAULT, "Server Inline Streaming TTS is disabled in internal settings", &buf, 2u);
    }
  }

  v17 = [MEMORY[0x277D79998] standardInstance];
  v18 = [v17 disableServerTTS];

  if (v18)
  {
    v19 = VSGetLogDefault();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2727E4000, v19, OS_LOG_TYPE_DEFAULT, "Server TTS is disabled in internal settings", &buf, 2u);
    }
  }

  v20 = +[VSInlineStreamService sharedService];
  v21 = [v20 popInlineStreamRequestForSpeakRequest:v6];

  if (((v15 | v18) & 1) != 0 || !v21)
  {
    if ([VSServerTTSClient shouldUseServerTTSForRequest:v6])
    {
      v29 = [[VSSpeechServerTask alloc] initWithRequest:v6 shouldSpeak:1];
      [(VSSpeechServerTask *)v29 setDelegate:self];
      v25 = v29;
      v26 = VSGetLogDefault();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(VSSpeechServerTask *)v25 instrumentMetrics];
        v31 = [v30 requestCreatedTimestamp];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v31;
        _os_log_impl(&dword_2727E4000, v26, OS_LOG_TYPE_DEFAULT, "Created server speak task %llu", &buf, 0xCu);
      }
    }

    else
    {
      v32 = [[VSSpeechSpeakTask alloc] initWithRequest:v6];
      [(VSSpeechSpeakTask *)v32 setDelegate:self];
      v25 = v32;
      v26 = VSGetLogDefault();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [(VSSpeechServerTask *)v25 instrumentMetrics];
        v34 = [v33 requestCreatedTimestamp];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v34;
        _os_log_impl(&dword_2727E4000, v26, OS_LOG_TYPE_DEFAULT, "Created speak task %llu", &buf, 0xCu);
      }
    }
  }

  else
  {
    v22 = [VSSiriInlineTTSStreamTask alloc];
    v23 = [v21 identifier];
    v24 = [(VSSiriInlineTTSStreamTask *)v22 initWithRequest:v6 withStreamID:v23];

    [(VSSiriInlineTTSStreamTask *)v24 setDelegate:self];
    v25 = v24;
    v26 = VSGetLogDefault();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(VSSpeechServerTask *)v25 instrumentMetrics];
      v28 = [v27 requestCreatedTimestamp];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v28;
      _os_log_impl(&dword_2727E4000, v26, OS_LOG_TYPE_DEFAULT, "Created stream speak task %llu", &buf, 0xCu);
    }
  }

  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(VSSpeechServerTask *)v25 setSiriInstrumentation:v8];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy_;
  v50 = __Block_byref_object_dispose_;
  v51 = os_transaction_create();
  v41 = MEMORY[0x277D85DD0];
  v42 = 3221225472;
  v43 = __47__VSSpeechXPCHandler_startSpeechRequest_reply___block_invoke;
  v44 = &unk_279E4B520;
  p_buf = &buf;
  v35 = v7;
  v45 = v35;
  [(VSSpeechServerTask *)v25 setCompletionBlock:&v41];
  v36 = [v6 accessoryID];

  if (v36)
  {
    v37 = [v6 accessoryID];
    v38 = [v37 UUIDString];
    v39 = [VSSpeechTaskQueue parallelQueueWithIdentifier:v38];
    [v39 addTask:v25];
  }

  else
  {
    v37 = +[VSSpeechTaskQueue mainDeviceQueue];
    [v37 addTask:v25];
  }

  _Block_object_dispose(&buf, 8);
  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __47__VSSpeechXPCHandler_startSpeechRequest_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)estimateDurationWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(VSSpeechXPCHandler *)self preprocessRequestBeforeSynthesis:v6];
    v8 = [[VSDurationEstimationTask alloc] initWithRequest:v6];
    objc_initWeak(&location, v8);
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy_;
    v21[4] = __Block_byref_object_dispose_;
    v22 = os_transaction_create();
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __56__VSSpeechXPCHandler_estimateDurationWithRequest_reply___block_invoke;
    v17 = &unk_279E4B570;
    objc_copyWeak(&v20, &location);
    v18 = v7;
    v19 = v21;
    [(VSDurationEstimationTask *)v8 setCompletionBlock:&v14];
    v9 = [VSSpeechTaskQueue mainDeviceQueue:v14];
    v10 = [v6 accessoryID];

    if (v10)
    {
      v11 = [v6 accessoryID];
      v12 = [v11 UUIDString];
      v13 = [VSSpeechTaskQueue parallelQueueWithIdentifier:v12];

      v9 = v13;
    }

    [v9 addTask:v8];

    objc_destroyWeak(&v20);
    _Block_object_dispose(v21, 8);

    objc_destroyWeak(&location);
  }
}

void __56__VSSpeechXPCHandler_estimateDurationWithRequest_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  [WeakRetained estimatedDuration];
  v4 = v3;
  v5 = [WeakRetained error];
  (*(v2 + 16))(v2, v5, v4);

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (void)queryPhaticCapabilityWithRequest:(id)a3 reply:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v17 = v6;
    v7 = a3;
    [(VSSpeechXPCHandler *)self performLanguageFallBackIfNeededWithRequest:v7];
    v8 = [MEMORY[0x277D79950] sharedManager];
    v9 = [v7 languageCode];
    v10 = [v7 voiceName];
    v11 = [v7 voiceType];
    v12 = [v7 gender];
    v13 = [v7 footprint];

    v14 = [v8 selectVoiceForLang:v9 name:v10 type:v11 gender:v12 footprint:v13];

    if (v14)
    {
      v15 = MEMORY[0x277D79990];
      v16 = [v14 voicePath];
      v17[2](v17, [v15 hasPhaticResponses:v16]);
    }

    else
    {
      (v17[2])();
    }

    v6 = v17;
  }
}

- (void)prewarmIfNeededWithRequest:(id)a3 reply:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[VSSpeechTaskQueue mainDeviceQueue];
  v9 = [v8 currentTask];

  if (v9)
  {
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "Find on-going task: %@, ignoring prewarm request: %@", &v14, 0x16u);
    }

    if (v7)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VoiceServicesErrorDomain" code:407 userInfo:0];
      v7[2](v7, v11);
    }
  }

  else
  {
    [(VSSpeechXPCHandler *)self performLanguageFallBackIfNeededWithRequest:v6];
    v12 = +[VSPrewarmService sharedService];
    [v12 prewarmWithRequest:v6];

    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateWithConnectionIdentifier:(id)a3 keepActive:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = VSGetLogDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v17 = 138543618;
    v18 = v7;
    v19 = 1024;
    v20 = v4;
    _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_INFO, "Update with connection identifier: %{public}@, keepActive:%{BOOL}d", &v17, 0x12u);
  }

  objc_storeStrong(&self->_connectionIdentifier, a3);
  synthesizerTransaction = self->_synthesizerTransaction;
  if (v4)
  {
    if (!synthesizerTransaction)
    {
      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v7;
        _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Keep active session for '%@'", &v17, 0xCu);
      }

      [v7 UTF8String];
      v11 = os_transaction_create();
      v12 = 1;
LABEL_12:
      v14 = self->_synthesizerTransaction;
      self->_synthesizerTransaction = v11;

      v15 = +[VSPrewarmService sharedService];
      [v15 setActiveSessionCount:{objc_msgSend(v15, "activeSessionCount") + v12}];
    }
  }

  else if (synthesizerTransaction)
  {
    v13 = VSGetLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&dword_2727E4000, v13, OS_LOG_TYPE_INFO, "Remove active session for '%@'", &v17, 0xCu);
    }

    v11 = 0;
    v12 = -1;
    goto LABEL_12;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)preprocessRequestBeforeSynthesis:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(VSSpeechXPCHandler *)self performLanguageFallBackIfNeededWithRequest:v4];
  v5 = [v4 text];

  if (!v5)
  {
    [v4 setText:&stru_2881CBD18];
  }

  v6 = [v4 text];
  v7 = [v4 contextInfo];
  v8 = [v6 vs_insertContextInfo:v7];

  v9 = [v8 vs_substituteAudioWithLocalPath];

  v10 = [v4 languageCode];
  v11 = [v9 vs_textifyEmojiWithLanguage:v10];
  v12 = [v11 precomposedStringWithCanonicalMapping];

  v13 = [MEMORY[0x277D79998] standardInstance];
  if ([v13 whisper])
  {
  }

  else
  {
    v14 = [v4 shouldWhisper];

    if ((v14 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v15 = [@"\x1B\\mrk=emo=whisper\\"" stringByAppendingString:v12];

  v12 = v15;
LABEL_7:
  v16 = [MEMORY[0x277D79998] standardInstance];
  v17 = [v16 useSSMLInput];

  if (v17)
  {
    v18 = [v12 vs_convertToSSML];

    v19 = VSGetLogDefault();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v4 logUtterance];
      v53 = 138412290;
      v54 = *&v20;
      _os_log_impl(&dword_2727E4000, v19, OS_LOG_TYPE_DEFAULT, "Use SSML input: %@", &v53, 0xCu);
    }

    v12 = v18;
  }

  [v4 setUtterance:v12];
  v21 = VSGetLogDefault();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v4 requestCreatedTimestamp];
    v23 = [v4 logUtterance];
    v53 = 134218242;
    v54 = *&v22;
    v55 = 2112;
    v56 = v23;
    _os_log_impl(&dword_2727E4000, v21, OS_LOG_TYPE_INFO, "Utterance to synthesize for request %llu: '%@'", &v53, 0x16u);
  }

  v24 = [MEMORY[0x277D79998] standardInstance];
  [v24 defaultVolume];
  v26 = v25;

  if (v26 != 0.0)
  {
    v27 = VSGetLogDefault();
    v28 = v26;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 134217984;
      v54 = v28;
      _os_log_impl(&dword_2727E4000, v27, OS_LOG_TYPE_DEFAULT, "Overwriting volume with internal default: %.3f", &v53, 0xCu);
    }

    [v4 setVolume:v28];
  }

  v29 = [MEMORY[0x277D79998] standardInstance];
  [v29 defaultRate];
  v31 = v30;

  if (v31 != 0.0)
  {
    v32 = VSGetLogDefault();
    v33 = v31;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 134217984;
      v54 = v33;
      _os_log_impl(&dword_2727E4000, v32, OS_LOG_TYPE_DEFAULT, "Overwriting rate with internal default: %.3f", &v53, 0xCu);
    }

    [v4 setRate:v33];
  }

  v34 = [MEMORY[0x277D79998] standardInstance];
  [v34 defaultPitch];
  v36 = v35;

  if (v36 != 0.0)
  {
    v37 = VSGetLogDefault();
    v38 = v36;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 134217984;
      v54 = v38;
      _os_log_impl(&dword_2727E4000, v37, OS_LOG_TYPE_DEFAULT, "Overwriting pitch with internal default: %.3f", &v53, 0xCu);
    }

    [v4 setPitch:v38];
  }

  v39 = [v4 outputPath];

  if (v39)
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v41 = [WeakRetained valueForEntitlement:@"com.apple.voiced.can-dump-audio"];

    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v41 BOOLValue] & 1) == 0)
    {
      v42 = VSGetLogDefault();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        LOWORD(v53) = 0;
        _os_log_impl(&dword_2727E4000, v42, OS_LOG_TYPE_INFO, "Process is not entitled for dumping audio. Ignore outputPath", &v53, 2u);
      }

      [v4 setOutputPath:0];
    }
  }

  v43 = [v4 siriRequestId];
  if (v43)
  {
    v44 = v43;
    v45 = [v4 clientBundleIdentifier];
    v46 = [VSSpeechXPCHandler isSiriClientBundleIdentifier:v45];

    if (!v46)
    {
      v47 = VSGetLogDefault();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        v52 = [v4 clientBundleIdentifier];
        v53 = 138543362;
        v54 = *&v52;
        _os_log_fault_impl(&dword_2727E4000, v47, OS_LOG_TYPE_FAULT, "Unexpected client '%{public}@' sets Siri request ID.", &v53, 0xCu);
      }

      [v4 setSiriRequestId:0];
    }
  }

  v48 = [MEMORY[0x277D79998] standardInstance];
  v49 = [v48 disableDeviceRacing];

  if (v49)
  {
    v50 = VSGetLogDefault();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v53) = 0;
      _os_log_impl(&dword_2727E4000, v50, OS_LOG_TYPE_DEFAULT, "Overriding disableDeviceRacing with internal default", &v53, 2u);
    }

    [v4 setDisableDeviceRacing:1];
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)performLanguageFallBackIfNeededWithRequest:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D799B0] availableLanguages];
  v5 = [v3 languageCode];
  v6 = [v4 containsObject:v5];

  if ((v6 & 1) == 0)
  {
    v7 = MEMORY[0x277D799B0];
    v8 = [v3 languageCode];
    v9 = [v7 fallbackLanguageForLanguage:v8];

    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v3 languageCode];
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ is not TTS language, fallback to %{public}@", &v13, 0x16u);
    }

    [v3 setLanguageCode:v9];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate VSSpeechXPCHandler, cancelling all related tasks", v4, 2u);
  }

  [VSSpeechTaskQueue cancelTasksWithDelegate:self];
}

- (BOOL)isSpeaking
{
  v3 = +[VSSpeechTaskQueue mainDeviceQueue];
  v4 = [v3 currentTask];
  v5 = [v4 delegate];
  LOBYTE(self) = v5 == self;

  return self;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained invalidate];

  if (self->_synthesizerTransaction)
  {
    v4 = +[VSPrewarmService sharedService];
    [v4 setActiveSessionCount:{objc_msgSend(v4, "activeSessionCount") - 1}];
  }

  v5.receiver = self;
  v5.super_class = VSSpeechXPCHandler;
  [(VSSpeechXPCHandler *)&v5 dealloc];
}

- (VSSpeechXPCHandler)initWithConnection:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VSSpeechXPCHandler;
  v5 = [(VSSpeechXPCHandler *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, v4);
    v7 = +[VSHHManagementClient sharedInstance];
    hubManagementClient = v6->_hubManagementClient;
    v6->_hubManagementClient = v7;

    v9 = +[VSHMHomeManager sharedInstance];
    homeManager = v6->_homeManager;
    v6->_homeManager = v9;
  }

  return v6;
}

+ (BOOL)isSiriClientBundleIdentifier:(id)a3
{
  v3 = isSiriClientBundleIdentifier__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isSiriClientBundleIdentifier__onceToken, &__block_literal_global_707);
  }

  v5 = [isSiriClientBundleIdentifier__siriClientBundleIdentifiers containsObject:v4];

  return v5;
}

uint64_t __51__VSSpeechXPCHandler_isSiriClientBundleIdentifier___block_invoke()
{
  isSiriClientBundleIdentifier__siriClientBundleIdentifiers = [MEMORY[0x277CBEB98] setWithArray:&unk_2881D5380];

  return MEMORY[0x2821F96F8]();
}

@end