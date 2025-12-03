@interface VSSpeechXPCHandler
+ (BOOL)isSiriClientBundleIdentifier:(id)identifier;
- (AFAudioPowerUpdater)audioPowerUpdater;
- (BOOL)isSpeaking;
- (OS_dispatch_queue)audioPowerUpdateQueue;
- (VSSpeechXPCHandler)initWithConnection:(id)connection;
- (id)_delegate;
- (void)audioRequest:(id)request didReportInstrumentMetrics:(id)metrics error:(id)error;
- (void)audioRequestDidStart:(id)start;
- (void)beginAudioPowerUpdateWithReply:(id)reply;
- (void)cachePresynthesizedAudioRequest:(id)request;
- (void)cleanUnusedAssets:(id)assets;
- (void)continueSpeechRequest:(id)request;
- (void)dealloc;
- (void)endAudioPowerUpdate;
- (void)estimateDurationWithRequest:(id)request reply:(id)reply;
- (void)forwardStreamObject:(id)object;
- (void)getAllVoiceSubscriptionsWithReply:(id)reply;
- (void)getFootprintsForVoiceName:(id)name languageCode:(id)code reply:(id)reply;
- (void)getLocalVoiceResourcesReply:(id)reply;
- (void)getLocalVoicesForLanguage:(id)language reply:(id)reply;
- (void)getSpeechIsActiveForConnectionReply:(id)reply;
- (void)getSpeechIsActiveReply:(id)reply;
- (void)getSubscribedVoiceAssetsWithClientID:(id)d forAccessoryID:(id)iD reply:(id)reply;
- (void)getVoiceInfoForLanguageCode:(id)code name:(id)name footprint:(int64_t)footprint gender:(int64_t)gender type:(int64_t)type reply:(id)reply;
- (void)getVoiceNamesForLanguage:(id)language reply:(id)reply;
- (void)getVoiceResourceForLanguage:(id)language reply:(id)reply;
- (void)invalidate;
- (void)invokeDaemon:(id)daemon;
- (void)killDaemon;
- (void)pauseSpeechRequest:(id)request atMark:(int64_t)mark;
- (void)performLanguageFallBackIfNeededWithRequest:(id)request;
- (void)preprocessRequestBeforeSynthesis:(id)synthesis;
- (void)prewarmIfNeededWithRequest:(id)request reply:(id)reply;
- (void)queryPhaticCapabilityWithRequest:(id)request reply:(id)reply;
- (void)setSubscribedVoiceAssets:(id)assets withClientID:(id)d forAccessoryID:(id)iD;
- (void)speechRequest:(id)request didReceiveTimingInfo:(id)info;
- (void)speechRequest:(id)request didReportInstrumentMetrics:(id)metrics;
- (void)speechRequest:(id)request didStartWithMark:(int64_t)mark forRange:(_NSRange)range;
- (void)speechRequestDidContinue:(id)continue;
- (void)speechRequestDidPause:(id)pause;
- (void)speechRequestDidStart:(id)start;
- (void)startPhonemesRequest:(id)request phonemeSystem:(int64_t)system reply:(id)reply;
- (void)startPresynthesizedAudioRequest:(id)request;
- (void)startSpeechRequest:(id)request reply:(id)reply;
- (void)startSynthesisRequest:(id)request;
- (void)stopPresynthesizedAudioRequest:(id)request;
- (void)stopSpeechRequest:(id)request atMark:(int64_t)mark;
- (void)synthesisRequest:(id)request didFinishWithInstrumentMetrics:(id)metrics error:(id)error;
- (void)synthesisRequest:(id)request didGenerateAudioChunk:(id)chunk;
- (void)synthesisRequest:(id)request didReceiveTimingInfo:(id)info;
- (void)triggerCellularDownloadedVoiceAssets:(id)assets withClientID:(id)d;
- (void)updateWithConnectionIdentifier:(id)identifier keepActive:(BOOL)active;
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

- (void)invokeDaemon:(id)daemon
{
  daemonCopy = daemon;
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2727E4000, v4, OS_LOG_TYPE_DEFAULT, "Received invokeDaemon, I'm listening", v6, 2u);
  }

  if (daemonCopy)
  {
    v5 = getpid();
    daemonCopy[2](daemonCopy, v5);
  }
}

- (void)forwardStreamObject:(id)object
{
  v14 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  streamId = [objectCopy streamId];

  v5 = VSGetLogDefault();
  v6 = v5;
  if (streamId)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      streamId2 = [objectCopy streamId];
      v10 = 138412546;
      v11 = objectCopy;
      v12 = 2112;
      v13 = streamId2;
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_INFO, "Enqueue stream object %@, streamId: %@", &v10, 0x16u);
    }

    v6 = +[VSInlineStreamService sharedService];
    streamId3 = [objectCopy streamId];
    [v6 enqueueStreamId:streamId3 withObject:objectCopy];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = objectCopy;
    _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Ignore stream object with nil stream ID: %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceInfoForLanguageCode:(id)code name:(id)name footprint:(int64_t)footprint gender:(int64_t)gender type:(int64_t)type reply:(id)reply
{
  v51 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  nameCopy = name;
  replyCopy = reply;
  v16 = VSGetLogDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithLong:gender];
    *buf = 138543874;
    v46 = codeCopy;
    v47 = 2112;
    v48 = nameCopy;
    v49 = 2112;
    v50 = v17;
    _os_log_impl(&dword_2727E4000, v16, OS_LOG_TYPE_INFO, "Begin getVoiceInfoForLanguageCode: %{public}@, %@, %@", buf, 0x20u);
  }

  if (replyCopy)
  {
    if (!codeCopy)
    {
      v21 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v44 = @"Missing languageCode";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      voiceData4 = [v21 errorWithDomain:@"VoiceServicesErrorDomain" code:100 userInfo:v19];
      replyCopy[2](replyCopy, 0, voiceData4);
LABEL_18:

      goto LABEL_19;
    }

    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    v19 = [mEMORY[0x277D79950] selectVoiceForLang:codeCopy name:nameCopy type:type gender:gender footprint:footprint];

    voiceData = [v19 voiceData];
    if ([voiceData footprint]== 1)
    {
    }

    else
    {
      if (!nameCopy)
      {
LABEL_14:

        goto LABEL_15;
      }

      voiceData2 = [v19 voiceData];
      name = [voiceData2 name];
      v25 = [nameCopy isEqual:name];

      if (v25)
      {
LABEL_15:
        v39 = VSGetLogDefault();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          voiceData3 = [v19 voiceData];
          *buf = 138412290;
          v46 = voiceData3;
          _os_log_impl(&dword_2727E4000, v39, OS_LOG_TYPE_INFO, "End getVoiceInfoForLanguageCode: %@", buf, 0xCu);
        }

        voiceData4 = [v19 voiceData];
        (replyCopy)[2](replyCopy, voiceData4, 0);
        goto LABEL_18;
      }
    }

    voiceData5 = [v19 voiceData];
    [voiceData5 setGender:gender];

    voiceData6 = [v19 voiceData];
    [voiceData6 setName:nameCopy];

    voiceData7 = [v19 voiceData];
    [voiceData7 setFootprint:1];

    voiceData8 = [v19 voiceData];
    [voiceData8 setType:1];

    voiceData9 = [v19 voiceData];
    [voiceData9 setContentVersion:&unk_2881D53B0];

    voiceData10 = [v19 voiceData];
    languages = [voiceData10 languages];
    firstObject = [languages firstObject];
    v34 = [firstObject isEqualToString:codeCopy];

    if ((v34 & 1) == 0)
    {
      v35 = [MEMORY[0x277D799B0] fallbackLanguageForLanguage:codeCopy];
      v42 = v35;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
      voiceData11 = [v19 voiceData];
      [voiceData11 setLanguages:v36];
    }

    voiceData = VSGetLogDefault();
    if (os_log_type_enabled(voiceData, OS_LOG_TYPE_INFO))
    {
      voiceData12 = [v19 voiceData];
      *buf = 136315394;
      v46 = "[VSSpeechXPCHandler getVoiceInfoForLanguageCode:name:footprint:gender:type:reply:]";
      v47 = 2112;
      v48 = voiceData12;
      _os_log_impl(&dword_2727E4000, voiceData, OS_LOG_TYPE_INFO, "%s override voice info for server TTS platform, %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

LABEL_19:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceResourceForLanguage:(id)language reply:(id)reply
{
  languageCopy = language;
  replyCopy = reply;
  if (replyCopy)
  {
    if (languageCopy)
    {
      mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
      v7 = [mEMORY[0x277D79950] selectVoiceResourceAssetForLanguage:languageCopy];
    }

    else
    {
      v7 = 0;
    }

    replyCopy[2](replyCopy, v7);
  }
}

- (void)triggerCellularDownloadedVoiceAssets:(id)assets withClientID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = assetsCopy;
    _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEFAULT, "Preparing cellular download for %@", buf, 0xCu);
  }

  mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
  [mEMORY[0x277D79950] cancelDownloads:triggerCellularDownloadedVoiceAssets_withClientID__previousDownloads completion:0];

  mEMORY[0x277D79950]2 = [MEMORY[0x277D79950] sharedManager];
  [mEMORY[0x277D79950]2 cancelDownloads:assetsCopy completion:0];

  objc_storeStrong(&triggerCellularDownloadedVoiceAssets_withClientID__previousDownloads, assets);
  v9 = [MEMORY[0x277D79950] downloadOptionsWithBattery:1];
  [v9 setAllowsCellularAccess:1];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = assetsCopy;
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

        mEMORY[0x277D79950]3 = [MEMORY[0x277D79950] sharedManager];
        [mEMORY[0x277D79950]3 downloadVoiceAsset:v15 options:v9 progressUpdateHandler:0];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)getAllVoiceSubscriptionsWithReply:(id)reply
{
  v44 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  defaultInstance = [MEMORY[0x277D79978] defaultInstance];
  v4 = [defaultInstance subscribedVoicesForClientID:0 accessoryID:0];

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
        mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
        v9 = [mEMORY[0x277D79950] voiceAssetsForSubscription:v7];

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

              voiceData = [*(*(&v34 + 1) + 8 * v14) voiceData];
              voice = [v7 voice];
              name = [voice name];
              v18 = [name length];

              if (v18)
              {
                voice2 = [v7 voice];
                name2 = [voice2 name];
                [voiceData setName:name2];
              }

              voice3 = [v7 voice];
              type = [voice3 type];

              if (type)
              {
                voice4 = [v7 voice];
                [voiceData setType:{objc_msgSend(voice4, "type")}];
              }

              v24 = objc_alloc(MEMORY[0x277D799E0]);
              clientID = [v7 clientID];
              accessoryID = [v7 accessoryID];
              v27 = [v24 initWithClient:clientID accessory:accessoryID voice:voiceData];

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

  replyCopy[2](replyCopy, v5);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)getSubscribedVoiceAssetsWithClientID:(id)d forAccessoryID:(id)iD reply:(id)reply
{
  if (reply)
  {
    v7 = MEMORY[0x277D79978];
    replyCopy = reply;
    iDCopy = iD;
    dCopy = d;
    defaultInstance = [v7 defaultInstance];
    uUIDString = [iDCopy UUIDString];

    if (uUIDString)
    {
      v13 = uUIDString;
    }

    else
    {
      v13 = &stru_2881CBD18;
    }

    v15 = [defaultInstance subscribedVoicesForClientID:dCopy accessoryID:v13];

    v14 = [v15 valueForKey:@"voice"];
    replyCopy[2](replyCopy, v14);
  }
}

- (void)setSubscribedVoiceAssets:(id)assets withClientID:(id)d forAccessoryID:(id)iD
{
  v75 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  dCopy = d;
  iDCopy = iD;
  if (iDCopy && ![(VSHHManagementClient *)self->_hubManagementClient isExistingAccessoryId:iDCopy])
  {
    v41 = VSGetLogDefault();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v67 = dCopy;
      v68 = 2112;
      v69 = iDCopy;
      _os_log_error_impl(&dword_2727E4000, v41, OS_LOG_TYPE_ERROR, "ignored client '%{public}@' setting auto-download for a non-existing accessoryId '%@'", buf, 0x16u);
    }
  }

  else
  {
    v44 = iDCopy;
    uUIDString = [iDCopy UUIDString];
    v11 = uUIDString;
    v12 = &stru_2881CBD18;
    if (uUIDString)
    {
      v12 = uUIDString;
    }

    v13 = v12;

    defaultInstance = [MEMORY[0x277D79978] defaultInstance];
    v45 = v13;
    v46 = dCopy;
    v15 = [defaultInstance subscribedVoicesForClientID:dCopy accessoryID:v13];

    array = [MEMORY[0x277CBEB18] array];
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

          voice = [*(*(&v62 + 1) + 8 * i) voice];
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v20 = assetsCopy;
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

                dictionaryRepresentation = [*(*(&v58 + 1) + 8 * j) dictionaryRepresentation];
                dictionaryRepresentation2 = [voice dictionaryRepresentation];
                v27 = [dictionaryRepresentation isEqualToDictionary:dictionaryRepresentation2];

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

          [array addObject:voice];
LABEL_20:
        }

        v17 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
      }

      while (v17);
    }

    defaultInstance2 = [MEMORY[0x277D79978] defaultInstance];
    [defaultInstance2 setSubscribedVoices:assetsCopy forClientID:v46 accessoryID:v45];

    array2 = [MEMORY[0x277CBEB18] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v48 = assetsCopy;
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
          languages = [v32 languages];
          firstObject = [languages firstObject];
          name = [v32 name];
          v37 = [MEMORY[0x277D799C8] typeStringFromType:{objc_msgSend(v32, "type")}];
          v38 = [MEMORY[0x277D799C8] footprintStringFromFootprint:{objc_msgSend(v32, "footprint")}];
          v39 = [v33 stringWithFormat:@"%@:%@:%@:%@", firstObject, name, v37, v38];
          [array2 addObject:v39];
        }

        v30 = [v48 countByEnumeratingWithState:&v54 objects:v72 count:16];
      }

      while (v30);
    }

    v40 = VSGetLogDefault();
    v41 = v45;
    dCopy = v46;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v67 = v46;
      v68 = 2112;
      v69 = v45;
      v70 = 2114;
      v71 = array2;
      _os_log_impl(&dword_2727E4000, v40, OS_LOG_TYPE_DEFAULT, "client '%{public}@' and accessory '%@' set auto download voice assets:%{public}@", buf, 0x20u);
    }

    v42 = [[VSDownloadService alloc] initWithType:2];
    [(VSDownloadService *)v42 cancelDownloadForAssets:array];
    [(VSDownloadService *)v42 updateVoicesAndVoiceResources];

    iDCopy = v44;
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)getLocalVoiceResourcesReply:(id)reply
{
  if (reply)
  {
    v3 = MEMORY[0x277D79950];
    replyCopy = reply;
    sharedManager = [v3 sharedManager];
    installedVoiceResources = [sharedManager installedVoiceResources];

    replyCopy[2](replyCopy, installedVoiceResources, 0);
  }
}

- (void)getLocalVoicesForLanguage:(id)language reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  replyCopy = reply;
  if (replyCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    v9 = [mEMORY[0x277D79950] installedAssetsForType:0 voicename:0 language:languageCopy gender:0 footprint:0];

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

          voiceData = [*(*(&v17 + 1) + 8 * v14) voiceData];
          [array addObject:voiceData];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    replyCopy[2](replyCopy, array, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)cleanUnusedAssets:(id)assets
{
  assetsCopy = assets;
  [(VSHHManagementClient *)self->_hubManagementClient cleanUnknownAccessoriesPreferences];
  if ([MEMORY[0x277D79930] useSiriTTSServiceV2])
  {
    cleanUnusedAssets = 0;
  }

  else
  {
    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    cleanUnusedAssets = [mEMORY[0x277D79950] cleanUnusedAssets];
  }

  if (assetsCopy)
  {
    assetsCopy[2](assetsCopy, cleanUnusedAssets);
  }
}

- (void)audioRequest:(id)request didReportInstrumentMetrics:(id)metrics error:(id)error
{
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  v10 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate audioRequest:requestCopy didReportInstrumentMetrics:metricsCopy error:errorCopy];

  objc_autoreleasePoolPop(v10);
}

- (void)audioRequestDidStart:(id)start
{
  startCopy = start;
  v4 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate audioRequestDidStart:startCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)synthesisRequest:(id)request didFinishWithInstrumentMetrics:(id)metrics error:(id)error
{
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  v10 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate synthesisRequest:requestCopy didFinishWithInstrumentMetrics:metricsCopy error:errorCopy];

  objc_autoreleasePoolPop(v10);
}

- (void)synthesisRequest:(id)request didGenerateAudioChunk:(id)chunk
{
  requestCopy = request;
  chunkCopy = chunk;
  v7 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate synthesisRequest:requestCopy didGenerateAudioChunk:chunkCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)synthesisRequest:(id)request didReceiveTimingInfo:(id)info
{
  requestCopy = request;
  infoCopy = info;
  v7 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate synthesisRequest:requestCopy didReceiveTimingInfo:infoCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)speechRequest:(id)request didReportInstrumentMetrics:(id)metrics
{
  requestCopy = request;
  metricsCopy = metrics;
  v7 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate speechRequest:requestCopy didReportInstrumentMetrics:metricsCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)speechRequest:(id)request didReceiveTimingInfo:(id)info
{
  infoCopy = info;
  requestCopy = request;
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate speechRequest:requestCopy didReceiveTimingInfo:infoCopy];
}

- (void)speechRequest:(id)request didStartWithMark:(int64_t)mark forRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  requestCopy = request;
  v9 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate speechRequest:requestCopy didStartWithMark:mark forRange:{location, length}];

  objc_autoreleasePoolPop(v9);
}

- (void)speechRequestDidContinue:(id)continue
{
  continueCopy = continue;
  v4 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate speechRequestDidContinue:continueCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)speechRequestDidPause:(id)pause
{
  pauseCopy = pause;
  v4 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate speechRequestDidPause:pauseCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)speechRequestDidStart:(id)start
{
  startCopy = start;
  v4 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate speechRequestDidStart:startCopy];

  objc_autoreleasePoolPop(v4);
}

- (id)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  remoteObjectProxy = [WeakRetained remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)getFootprintsForVoiceName:(id)name languageCode:(id)code reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  codeCopy = code;
  replyCopy = reply;
  if (replyCopy)
  {
    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    v22 = nameCopy;
    v11 = [mEMORY[0x277D79950] installedAssetsForType:0 voicename:nameCopy language:codeCopy gender:0 footprint:0];

    array = [MEMORY[0x277CBEB18] array];
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
          voiceData = [*(*(&v23 + 1) + 8 * v17) voiceData];
          v20 = [v18 numberWithLong:{objc_msgSend(voiceData, "footprint")}];
          [array addObject:v20];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    replyCopy[2](replyCopy, array);
    nameCopy = v22;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceNamesForLanguage:(id)language reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  replyCopy = reply;
  if (replyCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    v9 = [mEMORY[0x277D79950] installedAssetsForType:0 voicename:0 language:languageCopy gender:0 footprint:0];

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

          voiceData = [*(*(&v18 + 1) + 8 * v14) voiceData];
          name = [voiceData name];
          [array addObject:name];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    replyCopy[2](replyCopy, array);
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

  audioPowerUpdater = [(VSSpeechXPCHandler *)self audioPowerUpdater];
  [audioPowerUpdater endUpdate];

  [(VSSpeechXPCHandler *)self setAudioPowerUpdater:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)beginAudioPowerUpdateWithReply:(id)reply
{
  v13 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[VSSpeechXPCHandler beginAudioPowerUpdateWithReply:]";
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (replyCopy)
  {
    audioPowerUpdater = [(VSSpeechXPCHandler *)self audioPowerUpdater];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__VSSpeechXPCHandler_beginAudioPowerUpdateWithReply___block_invoke;
    v9[3] = &unk_279E4B598;
    v10 = replyCopy;
    [audioPowerUpdater createNewXPCWrapperWithCompletion:v9];

    audioPowerUpdater2 = [(VSSpeechXPCHandler *)self audioPowerUpdater];
    [audioPowerUpdater2 beginUpdate];
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
    audioPowerUpdateQueue = [(VSSpeechXPCHandler *)self audioPowerUpdateQueue];
    v7 = [v5 initWithProvider:v4 queue:audioPowerUpdateQueue frequency:1 delegate:0];
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

- (void)startPhonemesRequest:(id)request phonemeSystem:(int64_t)system reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  replyCopy = reply;
  [(VSSpeechXPCHandler *)self preprocessRequestBeforeSynthesis:requestCopy];
  v10 = [(VSSpeechSpeakTask *)[VSTextToPhonemesTask alloc] initWithRequest:requestCopy];
  [(VSSpeechSpeakTask *)v10 setDelegate:self];
  [(VSTextToPhonemesTask *)v10 setReply:replyCopy];
  v11 = VSGetLogDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [requestCopy requestCreatedTimestamp];
    _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_DEFAULT, "Created phonemes task %llu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = os_transaction_create();
  objc_initWeak(&location, v10);
  [(VSTextToPhonemesTask *)v10 setPhonemeSystem:system];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __63__VSSpeechXPCHandler_startPhonemesRequest_phonemeSystem_reply___block_invoke;
  v18 = &unk_279E4B570;
  p_buf = &buf;
  objc_copyWeak(&v21, &location);
  v12 = replyCopy;
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

- (void)getSpeechIsActiveForConnectionReply:(id)reply
{
  replyCopy = reply;
  v4 = +[VSSpeechTaskQueue mainDeviceQueue];
  currentTask = [v4 currentTask];

  if ([currentTask conformsToProtocol:&unk_2881D6B48])
  {
    v6 = currentTask;
    if ([v6 isSpeaking])
    {
      delegate = [v6 delegate];
      v8 = delegate == self;
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

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v8);
  }
}

- (void)getSpeechIsActiveReply:(id)reply
{
  replyCopy = reply;
  v3 = +[VSSpeechTaskQueue mainDeviceQueue];
  currentTask = [v3 currentTask];

  if ([currentTask conformsToProtocol:&unk_2881D6B48])
  {
    isSpeaking = [currentTask isSpeaking];
  }

  else
  {
    isSpeaking = 0;
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, isSpeaking);
  }
}

- (void)stopSpeechRequest:(id)request atMark:(int64_t)mark
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = +[VSSpeechTaskQueue mainDeviceQueue];
  accessoryID = [requestCopy accessoryID];

  if (accessoryID)
  {
    accessoryID2 = [requestCopy accessoryID];
    uUIDString = [accessoryID2 UUIDString];
    v9 = [VSSpeechTaskQueue parallelQueueWithIdentifier:uUIDString];

    v5 = v9;
  }

  v10 = [v5 taskWithCreatedTimeStamp:{objc_msgSend(requestCopy, "requestCreatedTimestamp")}];
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
      requestCreatedTimestamp = [requestCopy requestCreatedTimestamp];
      _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_DEFAULT, "Ignore stopSpeechRequest. Cannot find task with associated request %llu.", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)continueSpeechRequest:(id)request
{
  requestCopy = request;
  v4 = +[VSSpeechTaskQueue mainDeviceQueue];
  accessoryID = [requestCopy accessoryID];

  if (accessoryID)
  {
    accessoryID2 = [requestCopy accessoryID];
    uUIDString = [accessoryID2 UUIDString];
    v8 = [VSSpeechTaskQueue parallelQueueWithIdentifier:uUIDString];

    v4 = v8;
  }

  currentTask = [v4 currentTask];
  v10 = [v4 createdTimestampWithTask:currentTask];

  if (requestCopy && [requestCopy requestCreatedTimestamp] != v10)
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

- (void)pauseSpeechRequest:(id)request atMark:(int64_t)mark
{
  requestCopy = request;
  v5 = +[VSSpeechTaskQueue mainDeviceQueue];
  accessoryID = [requestCopy accessoryID];

  if (accessoryID)
  {
    accessoryID2 = [requestCopy accessoryID];
    uUIDString = [accessoryID2 UUIDString];
    v9 = [VSSpeechTaskQueue parallelQueueWithIdentifier:uUIDString];

    v5 = v9;
  }

  currentTask = [v5 currentTask];
  v11 = [v5 createdTimestampWithTask:currentTask];

  if (requestCopy && [requestCopy requestCreatedTimestamp] != v11)
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

- (void)startSynthesisRequest:(id)request
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  [(VSSpeechXPCHandler *)self preprocessRequestBeforeSynthesis:requestCopy];
  if ([VSServerTTSClient shouldUseServerTTSForRequest:requestCopy])
  {
    v5 = [[VSSpeechServerTask alloc] initWithRequest:requestCopy shouldSpeak:0];
    [(VSSpeechServerTask *)v5 setDelegate:self];
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics = [(VSSpeechServerTask *)v5 instrumentMetrics];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [instrumentMetrics requestCreatedTimestamp];
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEFAULT, "Created server synthesis task %llu", &buf, 0xCu);
    }
  }

  else
  {
    v5 = [[VSSpeechSynthesisTask alloc] initWithRequest:requestCopy];
    [(VSSpeechServerTask *)v5 setDelegate:self];
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics2 = [(VSSpeechServerTask *)v5 instrumentMetrics];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [instrumentMetrics2 requestCreatedTimestamp];
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
  v10 = [v9 hasInlineStreamRequestForSpeakRequest:requestCopy];

  if (v10)
  {
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics3 = [(VSSpeechServerTask *)v5 instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics3 requestCreatedTimestamp];
      *v20 = 134217984;
      v21 = requestCreatedTimestamp;
      _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_DEFAULT, "Found matched inline streaming request, cancel synthesis task %llu", v20, 0xCu);
    }

    [(VSSpeechServerTask *)v5 cancel];
  }

  else
  {
    accessoryID = [requestCopy accessoryID];

    if (accessoryID)
    {
      accessoryID2 = [requestCopy accessoryID];
      uUIDString = [accessoryID2 UUIDString];
      v17 = [VSSpeechTaskQueue parallelQueueWithIdentifier:uUIDString];
      [v17 addTask:v5];
    }

    else
    {
      accessoryID2 = +[VSSpeechTaskQueue mainDeviceQueue];
      [accessoryID2 addTask:v5];
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

- (void)stopPresynthesizedAudioRequest:(id)request
{
  v13 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  accessoryID = [requestCopy accessoryID];

  if (accessoryID)
  {
    accessoryID2 = [requestCopy accessoryID];
    uUIDString = [accessoryID2 UUIDString];
    v7 = [VSSpeechTaskQueue parallelQueueWithIdentifier:uUIDString];
  }

  else
  {
    v7 = +[VSSpeechTaskQueue mainDeviceQueue];
  }

  v8 = [v7 taskWithCreatedTimeStamp:{objc_msgSend(requestCopy, "requestCreatedTimestamp")}];
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
      requestCreatedTimestamp = [requestCopy requestCreatedTimestamp];
      _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_DEFAULT, "Ignore stopPresynthesizedAudioRequest. Cannot find task with associated request %llu.", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cachePresynthesizedAudioRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifier = [requestCopy identifier];
  v5 = [identifier length];

  if (v5)
  {
    v6 = +[VSInlineStreamService sharedService];
    [v6 addInlineStreamRequest:requestCopy];
  }

  else
  {
    v6 = [MEMORY[0x277D79920] audioDataFromPresynthesisRequest:requestCopy];
    [v6 duration];
    if (v7 == 0.0)
    {
      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        requestCreatedTimestamp = [requestCopy requestCreatedTimestamp];
        _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "Cache #PresynthesizedRequest %llu skipped: no audio", &v14, 0xCu);
      }
    }

    else
    {
      v8 = +[VSCachingService standardService];
      text = [requestCopy text];
      [v8 enqueueShortTermCacheWithHash:text audio:v6 timingInfo:0 voiceKey:@"unknown:unknown:PresynthesizedAudio" voiceResourceKey:@"unknown:PresynthesizedAudio:unknown" completion:0];

      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        requestCreatedTimestamp2 = [requestCopy requestCreatedTimestamp];
        logText = [requestCopy logText];
        v14 = 134218242;
        requestCreatedTimestamp = requestCreatedTimestamp2;
        v16 = 2112;
        v17 = logText;
        _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "Cache #PresynthesizedRequest %llu with text: %@", &v14, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)startPresynthesizedAudioRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  siriRequestId = [requestCopy siriRequestId];
  if (siriRequestId)
  {
    clientBundleIdentifier = [requestCopy clientBundleIdentifier];
    v7 = [VSSpeechXPCHandler isSiriClientBundleIdentifier:clientBundleIdentifier];

    if (!v7)
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        clientBundleIdentifier2 = [requestCopy clientBundleIdentifier];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = clientBundleIdentifier2;
        _os_log_fault_impl(&dword_2727E4000, v8, OS_LOG_TYPE_FAULT, "Unexpected client '%{public}@' sets Siri request ID.", &buf, 0xCu);
      }

      [requestCopy setSiriRequestId:0];
    }
  }

  siriRequestId2 = [requestCopy siriRequestId];

  if (siriRequestId2)
  {
    v10 = [VSSiriInstrumentation alloc];
    siriRequestId3 = [requestCopy siriRequestId];
    siriRequestId2 = [(VSSiriInstrumentation *)v10 initWithSiriRequestId:siriRequestId3];

    text = [requestCopy text];
    [(VSSiriInstrumentation *)siriRequestId2 instrumentRequestReceivedWithText:text requestedVoiceType:0 requestedVoiceFootprint:0 isPrivate:0];
  }

  v13 = [[VSSpeechPresynthesizedTask alloc] initWithRequest:requestCopy];
  [(VSSpeechPresynthesizedTask *)v13 setDelegate:self];
  v14 = VSGetLogDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    instrumentMetrics = [(VSSpeechPresynthesizedTask *)v13 instrumentMetrics];
    requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = requestCreatedTimestamp;
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
  if (siriRequestId2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(VSSpeechPresynthesizedTask *)v13 setSiriInstrumentation:siriRequestId2];
  }

  accessoryID = [requestCopy accessoryID];

  if (accessoryID)
  {
    accessoryID2 = [requestCopy accessoryID];
    uUIDString = [accessoryID2 UUIDString];
    v20 = [VSSpeechTaskQueue parallelQueueWithIdentifier:uUIDString];
    [v20 addTask:v13];
  }

  else
  {
    accessoryID2 = +[VSSpeechTaskQueue mainDeviceQueue];
    [accessoryID2 addTask:v13];
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

- (void)startSpeechRequest:(id)request reply:(id)reply
{
  v52 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  replyCopy = reply;
  [(VSSpeechXPCHandler *)self preprocessRequestBeforeSynthesis:requestCopy];
  siriRequestId = [requestCopy siriRequestId];

  if (siriRequestId)
  {
    v9 = [VSSiriInstrumentation alloc];
    siriRequestId2 = [requestCopy siriRequestId];
    siriRequestId = [(VSSiriInstrumentation *)v9 initWithSiriRequestId:siriRequestId2];

    text = [requestCopy text];
    -[VSSiriInstrumentation instrumentRequestReceivedWithText:requestedVoiceType:requestedVoiceFootprint:isPrivate:](siriRequestId, "instrumentRequestReceivedWithText:requestedVoiceType:requestedVoiceFootprint:isPrivate:", text, [requestCopy voiceType], objc_msgSend(requestCopy, "footprint"), objc_msgSend(requestCopy, "canUseServerTTS") ^ 1);
  }

  defaultInstance = [MEMORY[0x277D79978] defaultInstance];
  date = [MEMORY[0x277CBEAA8] date];
  [defaultInstance setLastTTSRequestDate:date];

  standardInstance = [MEMORY[0x277D79998] standardInstance];
  disableInlineStreamTTS = [standardInstance disableInlineStreamTTS];

  if (disableInlineStreamTTS)
  {
    v16 = VSGetLogDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2727E4000, v16, OS_LOG_TYPE_DEFAULT, "Server Inline Streaming TTS is disabled in internal settings", &buf, 2u);
    }
  }

  standardInstance2 = [MEMORY[0x277D79998] standardInstance];
  disableServerTTS = [standardInstance2 disableServerTTS];

  if (disableServerTTS)
  {
    v19 = VSGetLogDefault();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2727E4000, v19, OS_LOG_TYPE_DEFAULT, "Server TTS is disabled in internal settings", &buf, 2u);
    }
  }

  v20 = +[VSInlineStreamService sharedService];
  v21 = [v20 popInlineStreamRequestForSpeakRequest:requestCopy];

  if (((disableInlineStreamTTS | disableServerTTS) & 1) != 0 || !v21)
  {
    if ([VSServerTTSClient shouldUseServerTTSForRequest:requestCopy])
    {
      v29 = [[VSSpeechServerTask alloc] initWithRequest:requestCopy shouldSpeak:1];
      [(VSSpeechServerTask *)v29 setDelegate:self];
      v25 = v29;
      v26 = VSGetLogDefault();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        instrumentMetrics = [(VSSpeechServerTask *)v25 instrumentMetrics];
        requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = requestCreatedTimestamp;
        _os_log_impl(&dword_2727E4000, v26, OS_LOG_TYPE_DEFAULT, "Created server speak task %llu", &buf, 0xCu);
      }
    }

    else
    {
      v32 = [[VSSpeechSpeakTask alloc] initWithRequest:requestCopy];
      [(VSSpeechSpeakTask *)v32 setDelegate:self];
      v25 = v32;
      v26 = VSGetLogDefault();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        instrumentMetrics2 = [(VSSpeechServerTask *)v25 instrumentMetrics];
        requestCreatedTimestamp2 = [instrumentMetrics2 requestCreatedTimestamp];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = requestCreatedTimestamp2;
        _os_log_impl(&dword_2727E4000, v26, OS_LOG_TYPE_DEFAULT, "Created speak task %llu", &buf, 0xCu);
      }
    }
  }

  else
  {
    v22 = [VSSiriInlineTTSStreamTask alloc];
    identifier = [v21 identifier];
    v24 = [(VSSiriInlineTTSStreamTask *)v22 initWithRequest:requestCopy withStreamID:identifier];

    [(VSSiriInlineTTSStreamTask *)v24 setDelegate:self];
    v25 = v24;
    v26 = VSGetLogDefault();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics3 = [(VSSpeechServerTask *)v25 instrumentMetrics];
      requestCreatedTimestamp3 = [instrumentMetrics3 requestCreatedTimestamp];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = requestCreatedTimestamp3;
      _os_log_impl(&dword_2727E4000, v26, OS_LOG_TYPE_DEFAULT, "Created stream speak task %llu", &buf, 0xCu);
    }
  }

  if (siriRequestId && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(VSSpeechServerTask *)v25 setSiriInstrumentation:siriRequestId];
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
  v35 = replyCopy;
  v45 = v35;
  [(VSSpeechServerTask *)v25 setCompletionBlock:&v41];
  accessoryID = [requestCopy accessoryID];

  if (accessoryID)
  {
    accessoryID2 = [requestCopy accessoryID];
    uUIDString = [accessoryID2 UUIDString];
    v39 = [VSSpeechTaskQueue parallelQueueWithIdentifier:uUIDString];
    [v39 addTask:v25];
  }

  else
  {
    accessoryID2 = +[VSSpeechTaskQueue mainDeviceQueue];
    [accessoryID2 addTask:v25];
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

- (void)estimateDurationWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  if (replyCopy)
  {
    [(VSSpeechXPCHandler *)self preprocessRequestBeforeSynthesis:requestCopy];
    v8 = [[VSDurationEstimationTask alloc] initWithRequest:requestCopy];
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
    v18 = replyCopy;
    v19 = v21;
    [(VSDurationEstimationTask *)v8 setCompletionBlock:&v14];
    v9 = [VSSpeechTaskQueue mainDeviceQueue:v14];
    accessoryID = [requestCopy accessoryID];

    if (accessoryID)
    {
      accessoryID2 = [requestCopy accessoryID];
      uUIDString = [accessoryID2 UUIDString];
      v13 = [VSSpeechTaskQueue parallelQueueWithIdentifier:uUIDString];

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

- (void)queryPhaticCapabilityWithRequest:(id)request reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v17 = replyCopy;
    requestCopy = request;
    [(VSSpeechXPCHandler *)self performLanguageFallBackIfNeededWithRequest:requestCopy];
    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    languageCode = [requestCopy languageCode];
    voiceName = [requestCopy voiceName];
    voiceType = [requestCopy voiceType];
    gender = [requestCopy gender];
    footprint = [requestCopy footprint];

    v14 = [mEMORY[0x277D79950] selectVoiceForLang:languageCode name:voiceName type:voiceType gender:gender footprint:footprint];

    if (v14)
    {
      v15 = MEMORY[0x277D79990];
      voicePath = [v14 voicePath];
      v17[2](v17, [v15 hasPhaticResponses:voicePath]);
    }

    else
    {
      (v17[2])();
    }

    replyCopy = v17;
  }
}

- (void)prewarmIfNeededWithRequest:(id)request reply:(id)reply
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  replyCopy = reply;
  v8 = +[VSSpeechTaskQueue mainDeviceQueue];
  currentTask = [v8 currentTask];

  if (currentTask)
  {
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = currentTask;
      v16 = 2112;
      v17 = requestCopy;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "Find on-going task: %@, ignoring prewarm request: %@", &v14, 0x16u);
    }

    if (replyCopy)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VoiceServicesErrorDomain" code:407 userInfo:0];
      replyCopy[2](replyCopy, v11);
    }
  }

  else
  {
    [(VSSpeechXPCHandler *)self performLanguageFallBackIfNeededWithRequest:requestCopy];
    v12 = +[VSPrewarmService sharedService];
    [v12 prewarmWithRequest:requestCopy];

    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateWithConnectionIdentifier:(id)identifier keepActive:(BOOL)active
{
  activeCopy = active;
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v8 = VSGetLogDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v17 = 138543618;
    v18 = identifierCopy;
    v19 = 1024;
    v20 = activeCopy;
    _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_INFO, "Update with connection identifier: %{public}@, keepActive:%{BOOL}d", &v17, 0x12u);
  }

  objc_storeStrong(&self->_connectionIdentifier, identifier);
  synthesizerTransaction = self->_synthesizerTransaction;
  if (activeCopy)
  {
    if (!synthesizerTransaction)
    {
      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = identifierCopy;
        _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Keep active session for '%@'", &v17, 0xCu);
      }

      [identifierCopy UTF8String];
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
      v18 = identifierCopy;
      _os_log_impl(&dword_2727E4000, v13, OS_LOG_TYPE_INFO, "Remove active session for '%@'", &v17, 0xCu);
    }

    v11 = 0;
    v12 = -1;
    goto LABEL_12;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)preprocessRequestBeforeSynthesis:(id)synthesis
{
  v57 = *MEMORY[0x277D85DE8];
  synthesisCopy = synthesis;
  [(VSSpeechXPCHandler *)self performLanguageFallBackIfNeededWithRequest:synthesisCopy];
  text = [synthesisCopy text];

  if (!text)
  {
    [synthesisCopy setText:&stru_2881CBD18];
  }

  text2 = [synthesisCopy text];
  contextInfo = [synthesisCopy contextInfo];
  v8 = [text2 vs_insertContextInfo:contextInfo];

  vs_substituteAudioWithLocalPath = [v8 vs_substituteAudioWithLocalPath];

  languageCode = [synthesisCopy languageCode];
  v11 = [vs_substituteAudioWithLocalPath vs_textifyEmojiWithLanguage:languageCode];
  precomposedStringWithCanonicalMapping = [v11 precomposedStringWithCanonicalMapping];

  standardInstance = [MEMORY[0x277D79998] standardInstance];
  if ([standardInstance whisper])
  {
  }

  else
  {
    shouldWhisper = [synthesisCopy shouldWhisper];

    if ((shouldWhisper & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v15 = [@"\x1B\\mrk=emo=whisper\\"" stringByAppendingString:precomposedStringWithCanonicalMapping];

  precomposedStringWithCanonicalMapping = v15;
LABEL_7:
  standardInstance2 = [MEMORY[0x277D79998] standardInstance];
  useSSMLInput = [standardInstance2 useSSMLInput];

  if (useSSMLInput)
  {
    vs_convertToSSML = [precomposedStringWithCanonicalMapping vs_convertToSSML];

    v19 = VSGetLogDefault();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      logUtterance = [synthesisCopy logUtterance];
      v53 = 138412290;
      v54 = *&logUtterance;
      _os_log_impl(&dword_2727E4000, v19, OS_LOG_TYPE_DEFAULT, "Use SSML input: %@", &v53, 0xCu);
    }

    precomposedStringWithCanonicalMapping = vs_convertToSSML;
  }

  [synthesisCopy setUtterance:precomposedStringWithCanonicalMapping];
  v21 = VSGetLogDefault();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    requestCreatedTimestamp = [synthesisCopy requestCreatedTimestamp];
    logUtterance2 = [synthesisCopy logUtterance];
    v53 = 134218242;
    v54 = *&requestCreatedTimestamp;
    v55 = 2112;
    v56 = logUtterance2;
    _os_log_impl(&dword_2727E4000, v21, OS_LOG_TYPE_INFO, "Utterance to synthesize for request %llu: '%@'", &v53, 0x16u);
  }

  standardInstance3 = [MEMORY[0x277D79998] standardInstance];
  [standardInstance3 defaultVolume];
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

    [synthesisCopy setVolume:v28];
  }

  standardInstance4 = [MEMORY[0x277D79998] standardInstance];
  [standardInstance4 defaultRate];
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

    [synthesisCopy setRate:v33];
  }

  standardInstance5 = [MEMORY[0x277D79998] standardInstance];
  [standardInstance5 defaultPitch];
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

    [synthesisCopy setPitch:v38];
  }

  outputPath = [synthesisCopy outputPath];

  if (outputPath)
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

      [synthesisCopy setOutputPath:0];
    }
  }

  siriRequestId = [synthesisCopy siriRequestId];
  if (siriRequestId)
  {
    v44 = siriRequestId;
    clientBundleIdentifier = [synthesisCopy clientBundleIdentifier];
    v46 = [VSSpeechXPCHandler isSiriClientBundleIdentifier:clientBundleIdentifier];

    if (!v46)
    {
      v47 = VSGetLogDefault();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        clientBundleIdentifier2 = [synthesisCopy clientBundleIdentifier];
        v53 = 138543362;
        v54 = *&clientBundleIdentifier2;
        _os_log_fault_impl(&dword_2727E4000, v47, OS_LOG_TYPE_FAULT, "Unexpected client '%{public}@' sets Siri request ID.", &v53, 0xCu);
      }

      [synthesisCopy setSiriRequestId:0];
    }
  }

  standardInstance6 = [MEMORY[0x277D79998] standardInstance];
  disableDeviceRacing = [standardInstance6 disableDeviceRacing];

  if (disableDeviceRacing)
  {
    v50 = VSGetLogDefault();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v53) = 0;
      _os_log_impl(&dword_2727E4000, v50, OS_LOG_TYPE_DEFAULT, "Overriding disableDeviceRacing with internal default", &v53, 2u);
    }

    [synthesisCopy setDisableDeviceRacing:1];
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)performLanguageFallBackIfNeededWithRequest:(id)request
{
  v17 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  availableLanguages = [MEMORY[0x277D799B0] availableLanguages];
  languageCode = [requestCopy languageCode];
  v6 = [availableLanguages containsObject:languageCode];

  if ((v6 & 1) == 0)
  {
    v7 = MEMORY[0x277D799B0];
    languageCode2 = [requestCopy languageCode];
    v9 = [v7 fallbackLanguageForLanguage:languageCode2];

    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      languageCode3 = [requestCopy languageCode];
      v13 = 138543618;
      v14 = languageCode3;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ is not TTS language, fallback to %{public}@", &v13, 0x16u);
    }

    [requestCopy setLanguageCode:v9];
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
  currentTask = [v3 currentTask];
  delegate = [currentTask delegate];
  LOBYTE(self) = delegate == self;

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

- (VSSpeechXPCHandler)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = VSSpeechXPCHandler;
  v5 = [(VSSpeechXPCHandler *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
    v7 = +[VSHHManagementClient sharedInstance];
    hubManagementClient = v6->_hubManagementClient;
    v6->_hubManagementClient = v7;

    v9 = +[VSHMHomeManager sharedInstance];
    homeManager = v6->_homeManager;
    v6->_homeManager = v9;
  }

  return v6;
}

+ (BOOL)isSiriClientBundleIdentifier:(id)identifier
{
  v3 = isSiriClientBundleIdentifier__onceToken;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    dispatch_once(&isSiriClientBundleIdentifier__onceToken, &__block_literal_global_707);
  }

  v5 = [isSiriClientBundleIdentifier__siriClientBundleIdentifiers containsObject:identifierCopy];

  return v5;
}

uint64_t __51__VSSpeechXPCHandler_isSiriClientBundleIdentifier___block_invoke()
{
  isSiriClientBundleIdentifier__siriClientBundleIdentifiers = [MEMORY[0x277CBEB98] setWithArray:&unk_2881D5380];

  return MEMORY[0x2821F96F8]();
}

@end