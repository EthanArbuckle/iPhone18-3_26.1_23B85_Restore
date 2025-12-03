@interface VSSpeechSynthesizer
+ (BOOL)playVoicePreviewForLanguageCode:(id)code voiceName:(id)name previewType:(int64_t)type completion:(id)completion;
+ (VSSpeechSynthesizer)sharedInstance;
+ (id)characterClassCountForUtterance:(id)utterance language:(id)language;
+ (id)errorWithReason:(id)reason;
+ (id)validateAudioCachingRequest:(id)request;
+ (id)validateAudioRequest:(id)request;
+ (id)validatePrewarmRequest:(id)request;
+ (id)validateRequest:(id)request;
+ (void)stopPlayingVoicePreview;
- (BOOL)STS_isSpeaking;
- (BOOL)continueSpeakingWithError:(id *)error;
- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower;
- (BOOL)isSpeaking;
- (BOOL)isSystemSpeaking;
- (BOOL)keepActive;
- (BOOL)pauseSpeakingAtNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously error:(id *)error;
- (BOOL)queryPhaticCapability:(id)capability;
- (BOOL)stopSpeakingAtNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously error:(id *)error;
- (BOOL)stopSpeakingPresynthesizedAudioSynchronously:(BOOL)synchronously error:(id *)error;
- (VSSpeechSynthesizer)initWithAccessoryID:(id)d;
- (VSSpeechSynthesizerDelegate)delegate;
- (double)STS_estimateDurationOfRequest:(id)request;
- (double)estimateDurationOfRequest:(id)request;
- (id)STS_prewarmRequest:(id)request;
- (id)STS_signalInlineStreaming:(id)streaming;
- (id)STS_startSpeakingAudioRequest:(id)request;
- (id)STS_startSpeakingRequest:(id)request;
- (id)STS_startSynthesizingRequest:(id)request;
- (id)_continueSpeakingRequest;
- (id)_pauseSpeakingRequestAtNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously;
- (id)_stopSpeakingPresynthesizedAudioRequest:(id)request synchronously:(BOOL)synchronously;
- (id)_stopSpeakingRequest:(id)request atNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously;
- (id)availableLanguageCodes;
- (id)availableVoicesForLanguageCode:(id)code;
- (id)cachePresynthesizedAudioRequest:(id)request;
- (id)errorFromSTSError:(id)error;
- (id)initForInputFeedback;
- (id)prewarmIfNeededWithRequest:(id)request;
- (id)speechString;
- (id)startSpeakingPresynthesizedAudioRequest:(id)request;
- (id)startSpeakingRequest:(id)request;
- (id)startSynthesizingRequest:(id)request;
- (void)STS_cancelAudioRequest:(id)request;
- (void)STS_cancelRequest:(id)request;
- (void)STS_downloadedVoicesMatching:(id)matching reply:(id)reply;
- (void)STS_estimateDurationOfRequest:(id)request completion:(id)completion;
- (void)STS_getSynthesisVoiceMatching:(id)matching reply:(id)reply;
- (void)STS_queryPhaticCapabilityWithRequest:(id)request reply:(id)reply;
- (void)STS_subscribeVoices:(id)voices;
- (void)STS_subscribedVoices:(id)voices;
- (void)STS_subscribedVoicesWithClientID:(id)d reply:(id)reply;
- (void)STS_textToPhonemesWithRequest:(id)request phonemeSystem:(int64_t)system completion:(id)completion;
- (void)_setDelegate:(id)delegate;
- (void)beginAudioPowerUpdateWithReply:(id)reply;
- (void)cancelAudioRequest:(id)request;
- (void)cancelRequest:(id)request;
- (void)cleanUnusedAssets:(id)assets;
- (void)connection:(id)connection invalidatedWithError:(id)error;
- (void)connection:(id)connection presynthesizedAudioRequest:(id)request didStopAtEnd:(BOOL)end error:(id)error;
- (void)connection:(id)connection presynthesizedAudioRequest:(id)request successWithInstrumentMetrics:(id)metrics error:(id)error;
- (void)connection:(id)connection presynthesizedAudioRequestDidStart:(id)start;
- (void)connection:(id)connection speechRequest:(id)request didGenerateAudioChunk:(id)chunk;
- (void)connection:(id)connection speechRequest:(id)request didReceiveTimingInfo:(id)info;
- (void)connection:(id)connection speechRequest:(id)request didStopAtEnd:(BOOL)end phonemesSpoken:(id)spoken error:(id)error;
- (void)connection:(id)connection speechRequest:(id)request successWithInstrumentMetrics:(id)metrics;
- (void)connection:(id)connection speechRequest:(id)request willSpeakMark:(int64_t)mark inRange:(_NSRange)range;
- (void)connection:(id)connection speechRequestDidContinue:(id)continue;
- (void)connection:(id)connection speechRequestDidPause:(id)pause;
- (void)connection:(id)connection speechRequestDidStart:(id)start;
- (void)connection:(id)connection synthesisRequest:(id)request didFinishWithInstrumentMetrics:(id)metrics error:(id)error;
- (void)endAudioPowerUpdate;
- (void)estimateDurationOfRequest:(id)request completion:(id)completion;
- (void)forwardStreamObject:(id)object;
- (void)getAllAutoDownloadedVoiceAssets:(id)assets;
- (void)getAutoDownloadedVoiceAssets:(id)assets;
- (void)getLocalVoiceAssets:(id)assets;
- (void)getLocalVoiceAssetsForLanguage:(id)language reply:(id)reply;
- (void)getVoiceInfoForLanguageCode:(id)code name:(id)name footprint:(int64_t)footprint gender:(int64_t)gender type:(int64_t)type reply:(id)reply;
- (void)getVoiceInfoForLanguageCode:(id)code name:(id)name type:(int64_t)type footprint:(int64_t)footprint reply:(id)reply;
- (void)playVoicePreviewForLanguageCode:(id)code voiceName:(id)name previewType:(int64_t)type completion:(id)completion;
- (void)setAutoDownloadedVoiceAssets:(id)assets;
- (void)setDelegate:(id)delegate;
- (void)stopPlayingVoicePreview;
- (void)textToPhonemesWithRequest:(id)request phonemeSystem:(int64_t)system completion:(id)completion;
- (void)triggerCellularDownloadedVoiceAssets:(id)assets;
@end

@implementation VSSpeechSynthesizer

- (VSSpeechSynthesizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)availableLanguageCodes
{
  if (+[VSFeatureFlags useSiriTTSServiceV2])
  {
    availableLanguages = [MEMORY[0x277D61428] availableLanguages];
  }

  else
  {
    availableLanguages = VSPreferencesCopyAvailableOutputLanguageIdentifiers();
  }

  v3 = availableLanguages;
  allObjects = [availableLanguages allObjects];

  return allObjects;
}

- (id)availableVoicesForLanguageCode:(id)code
{
  codeCopy = code;
  if (+[VSFeatureFlags useSiriTTSServiceV2])
  {
    v5 = dispatch_semaphore_create(0);
    v6 = [objc_alloc(MEMORY[0x277D61470]) initWithLanguage:codeCopy name:0];
    array = [MEMORY[0x277CBEB18] array];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__VSSpeechSynthesizer_availableVoicesForLanguageCode___block_invoke;
    v13[3] = &unk_279E4F708;
    v8 = array;
    v14 = v8;
    v15 = v5;
    v9 = v5;
    [(VSSpeechSynthesizer *)self STS_downloadedVoicesMatching:v6 reply:v13];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v10 = v15;
    v11 = v8;
  }

  else
  {
    v11 = [(VSSpeechConnection *)self->_xpcConnection availableVoicesForLanguageCode:codeCopy];
  }

  return v11;
}

void __54__VSSpeechSynthesizer_availableVoicesForLanguageCode___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = [*(*(&v11 + 1) + 8 * v7) name];
        [v8 addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v10 = *MEMORY[0x277D85DE8];
}

- (void)getVoiceInfoForLanguageCode:(id)code name:(id)name type:(int64_t)type footprint:(int64_t)footprint reply:(id)reply
{
  codeCopy = code;
  nameCopy = name;
  replyCopy = reply;
  if (+[VSFeatureFlags useSiriTTSServiceV2])
  {
    v15 = [objc_alloc(MEMORY[0x277D61470]) initWithLanguage:codeCopy name:nameCopy];
    [v15 setFootprint:footprint];
    [v15 setType:type];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__VSSpeechSynthesizer_getVoiceInfoForLanguageCode_name_type_footprint_reply___block_invoke;
    v16[3] = &unk_279E4F6E0;
    v17 = replyCopy;
    [(VSSpeechSynthesizer *)self STS_getSynthesisVoiceMatching:v15 reply:v16];
  }

  else
  {
    [(VSSpeechConnection *)self->_xpcConnection getVoiceInfoForLanguageCode:codeCopy name:nameCopy footprint:footprint gender:0 type:type reply:replyCopy];
  }
}

- (void)getVoiceInfoForLanguageCode:(id)code name:(id)name footprint:(int64_t)footprint gender:(int64_t)gender type:(int64_t)type reply:(id)reply
{
  codeCopy = code;
  nameCopy = name;
  replyCopy = reply;
  if (+[VSFeatureFlags useSiriTTSServiceV2])
  {
    v17 = [objc_alloc(MEMORY[0x277D61470]) initWithLanguage:codeCopy name:nameCopy];
    [v17 setFootprint:footprint];
    [v17 setType:type];
    [(VSSpeechSynthesizer *)self STS_getSynthesisVoiceMatching:v17 reply:replyCopy];
  }

  else
  {
    xpcConnection = self->_xpcConnection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__VSSpeechSynthesizer_getVoiceInfoForLanguageCode_name_footprint_gender_type_reply___block_invoke;
    v19[3] = &unk_279E4F6B8;
    v20 = replyCopy;
    [(VSSpeechConnection *)xpcConnection getVoiceInfoForLanguageCode:codeCopy name:nameCopy footprint:footprint gender:gender type:type reply:v19];
  }
}

- (void)getAllAutoDownloadedVoiceAssets:(id)assets
{
  assetsCopy = assets;
  if (+[VSFeatureFlags useSiriTTSServiceV2])
  {
    [(VSSpeechSynthesizer *)self STS_subscribedVoicesWithClientID:0 reply:assetsCopy];
  }

  else
  {
    [(VSSpeechConnection *)self->_xpcConnection getAllVoiceSubscriptionsWithReply:assetsCopy];
  }
}

- (void)getAutoDownloadedVoiceAssets:(id)assets
{
  assetsCopy = assets;
  if (+[VSFeatureFlags useSiriTTSServiceV2])
  {
    [(VSSpeechSynthesizer *)self STS_subscribedVoices:assetsCopy];
  }

  else
  {
    clientBundleIdentifier = self->_clientBundleIdentifier;
    if (clientBundleIdentifier)
    {
      [(VSSpeechConnection *)self->_xpcConnection getSubscribedVoiceAssetsWithClientID:clientBundleIdentifier forAccessoryID:self->_accessoryID reply:assetsCopy];
    }

    else
    {
      v6 = VSGetLogDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&dword_272850000, v6, OS_LOG_TYPE_ERROR, "Ignore get voice subscription due to null clientId.", v7, 2u);
      }

      assetsCopy[2](assetsCopy, 0);
    }
  }
}

- (void)triggerCellularDownloadedVoiceAssets:(id)assets
{
  v40 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = assets;
  v3 = [obj countByEnumeratingWithState:&v23 objects:v39 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v24;
    *&v4 = 138544642;
    v19 = v4;
    do
    {
      v7 = 0;
      v21 = v5;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        v9 = VSGetLogDefault();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v6;
          clientBundleIdentifier = self->_clientBundleIdentifier;
          languages = [v8 languages];
          firstObject = [languages firstObject];
          gender = [v8 gender];
          type = [v8 type];
          footprint = [v8 footprint];
          name = [v8 name];
          *buf = v19;
          v28 = clientBundleIdentifier;
          v6 = v10;
          v5 = v21;
          v29 = 2114;
          v30 = firstObject;
          v31 = 2048;
          v32 = gender;
          v33 = 2048;
          v34 = type;
          v35 = 2048;
          v36 = footprint;
          v37 = 2114;
          v38 = name;
          _os_log_impl(&dword_272850000, v9, OS_LOG_TYPE_DEFAULT, "Request to download with cellular, client: %{public}@, language: %{public}@, gender: %ld, type: %ld, footprint: %ld, name: %{public}@", buf, 0x3Eu);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v23 objects:v39 count:16];
    }

    while (v5);
  }

  [(VSSpeechConnection *)self->_xpcConnection triggerCellularDownloadedVoiceAssets:obj withClientID:self->_clientBundleIdentifier, v19];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setAutoDownloadedVoiceAssets:(id)assets
{
  v68 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  if (+[VSFeatureFlags useSiriTTSServiceV2])
  {
    [(VSSpeechSynthesizer *)self STS_subscribeVoices:assetsCopy];
    goto LABEL_42;
  }

  v5 = VSGetLogEvent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientBundleIdentifier = self->_clientBundleIdentifier;
    accessoryID = self->_accessoryID;
    v8 = __52__VSSpeechSynthesizer_setAutoDownloadedVoiceAssets___block_invoke(assetsCopy);
    *buf = 138543874;
    v63 = clientBundleIdentifier;
    v64 = 2112;
    v65 = accessoryID;
    v66 = 2112;
    v67 = v8;
    _os_log_impl(&dword_272850000, v5, OS_LOG_TYPE_DEFAULT, "#VoiceSubscription, client: %{public}@, accessory: %@, requested voices: %@", buf, 0x20u);
  }

  if (self->_clientBundleIdentifier)
  {
    selfCopy = self;
    array = [MEMORY[0x277CBEB18] array];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v42 = assetsCopy;
    v10 = assetsCopy;
    v46 = [v10 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (!v46)
    {
      goto LABEL_36;
    }

    v44 = array;
    v45 = *v57;
    v43 = v10;
    while (1)
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v57 != v45)
        {
          objc_enumerationMutation(v10);
        }

        v12 = *(*(&v56 + 1) + 8 * i);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v13 = v10;
        v14 = [v13 countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (!v14)
        {

LABEL_33:
          [array addObject:v12];
          continue;
        }

        v15 = v14;
        v47 = i;
        v48 = 0;
        v16 = *v53;
        do
        {
          v17 = 0;
          v49 = v15;
          do
          {
            if (*v53 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v52 + 1) + 8 * v17);
            if (v18 != v12)
            {
              languages = [v12 languages];
              firstObject = [languages firstObject];
              v51 = v18;
              if (firstObject)
              {
                v21 = firstObject;
                languages2 = [v18 languages];
                firstObject2 = [languages2 firstObject];
                [v12 languages];
                v24 = v16;
                v25 = v12;
                v27 = v26 = v13;
                firstObject3 = [v27 firstObject];
                v50 = [firstObject2 isEqualToString:firstObject3];

                v13 = v26;
                v12 = v25;
                v16 = v24;
                v15 = v49;

                if (!v50)
                {
                  goto LABEL_28;
                }
              }

              else
              {
              }

              name = [v12 name];
              if (!name)
              {
                goto LABEL_45;
              }

              v30 = name;
              name2 = [v51 name];
              name3 = [v12 name];
              v33 = [name2 isEqualToString:name3];

              if (v33)
              {
LABEL_45:
                if (![v12 type] || (v34 = objc_msgSend(v51, "type"), v34 == objc_msgSend(v12, "type")))
                {
                  if (![v12 footprint] || (v35 = objc_msgSend(v51, "footprint"), v35 == objc_msgSend(v12, "footprint")))
                  {
                    v48 = 1;
                  }
                }
              }
            }

LABEL_28:
            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v15);

        v10 = v43;
        array = v44;
        i = v47;
        if ((v48 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v46 = [v13 countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (!v46)
      {
LABEL_36:

        v36 = VSGetLogEvent();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = selfCopy->_clientBundleIdentifier;
          v38 = selfCopy->_accessoryID;
          v39 = __52__VSSpeechSynthesizer_setAutoDownloadedVoiceAssets___block_invoke(array);
          *buf = 138543874;
          v63 = v37;
          v64 = 2112;
          v65 = v38;
          v66 = 2112;
          v67 = v39;
          _os_log_impl(&dword_272850000, v36, OS_LOG_TYPE_DEFAULT, "#VoiceSubscription, client: %{public}@, accessory: %@, deduped voices: %@", buf, 0x20u);
        }

        [(VSSpeechConnection *)selfCopy->_xpcConnection setSubscribedVoiceAssets:array withClientID:selfCopy->_clientBundleIdentifier forAccessoryID:selfCopy->_accessoryID];
        assetsCopy = v42;
        goto LABEL_41;
      }
    }
  }

  array = VSGetLogDefault();
  if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_272850000, array, OS_LOG_TYPE_ERROR, "Ignore voice subscription due to null clientId.", buf, 2u);
  }

LABEL_41:

LABEL_42:
  v40 = *MEMORY[0x277D85DE8];
}

id __52__VSSpeechSynthesizer_setAutoDownloadedVoiceAssets___block_invoke(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v1;
  v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v16 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v18 + 1) + 8 * i);
        v6 = MEMORY[0x277CCACA8];
        v7 = [v5 languages];
        v8 = [v7 firstObject];
        v9 = [v5 name];
        v10 = +[VSVoiceAsset typeStringFromType:](VSVoiceAsset, "typeStringFromType:", [v5 type]);
        v11 = +[VSVoiceAsset footprintStringFromFootprint:](VSVoiceAsset, "footprintStringFromFootprint:", [v5 footprint]);
        v12 = [v6 stringWithFormat:@"%@:%@:%@:%@", v8, v9, v10, v11];
        [v17 addObject:v12];
      }

      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)getLocalVoiceAssetsForLanguage:(id)language reply:(id)reply
{
  languageCopy = language;
  replyCopy = reply;
  if (+[VSFeatureFlags useSiriTTSServiceV2])
  {
    v7 = [objc_alloc(MEMORY[0x277D61470]) initWithLanguage:languageCopy name:0];
    [(VSSpeechSynthesizer *)self STS_downloadedVoicesMatching:v7 reply:replyCopy];
  }

  else
  {
    [(VSSpeechConnection *)self->_xpcConnection getLocalVoiceAssetsForLanguage:languageCopy reply:replyCopy];
  }
}

- (void)getLocalVoiceAssets:(id)assets
{
  assetsCopy = assets;
  if (+[VSFeatureFlags useSiriTTSServiceV2])
  {
    [(VSSpeechSynthesizer *)self STS_downloadedVoicesMatching:0 reply:assetsCopy];
  }

  else
  {
    [(VSSpeechConnection *)self->_xpcConnection getLocalVoiceAssetsForLanguage:0 reply:assetsCopy];
  }
}

- (void)cleanUnusedAssets:(id)assets
{
  assetsCopy = assets;
  if (!+[VSFeatureFlags useSiriTTSServiceV2])
  {
    [(VSSpeechConnection *)self->_xpcConnection cleanUnusedAssets:assetsCopy];
  }
}

- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower
{
  isPlayingPreview = [(VSSpeechSynthesizer *)self isPlayingPreview];

  if (isPlayingPreview)
  {
    return 0;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = -1024458752;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -1024458752;
  v9 = dispatch_semaphore_create(0);
  proxySession = self->_proxySession;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__VSSpeechSynthesizer_getAveragePower_andPeakPower___block_invoke;
  v15[3] = &unk_279E4F690;
  v17 = &v23;
  v18 = &v19;
  v11 = v9;
  v16 = v11;
  [(SiriTTSDaemonSession *)proxySession getAudioPower:v15];
  v12 = dispatch_time(0, 500000000);
  v13 = dispatch_semaphore_wait(v11, v12);
  *power = v24[6];
  *peakPower = v20[6];
  v8 = v13 == 0;

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v8;
}

intptr_t __52__VSSpeechSynthesizer_getAveragePower_andPeakPower___block_invoke(uint64_t a1, float a2, float a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)endAudioPowerUpdate
{
  [(AFAudioPowerUpdater *)self->_audioPowerUpdater endUpdate];
  audioPowerUpdaterQueue = self->_audioPowerUpdaterQueue;
  self->_audioPowerUpdaterQueue = 0;

  audioPowerUpdater = self->_audioPowerUpdater;
  self->_audioPowerUpdater = 0;
}

- (void)beginAudioPowerUpdateWithReply:(id)reply
{
  replyCopy = reply;
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v6 = dispatch_queue_create("VSAudioPowerUpdateQueue", v5);
  audioPowerUpdaterQueue = self->_audioPowerUpdaterQueue;
  self->_audioPowerUpdaterQueue = v6;

  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v8 = getAFAudioPowerUpdaterClass_softClass;
  v20 = getAFAudioPowerUpdaterClass_softClass;
  if (!getAFAudioPowerUpdaterClass_softClass)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __getAFAudioPowerUpdaterClass_block_invoke;
    v16[3] = &unk_279E4F748;
    v16[4] = &v17;
    __getAFAudioPowerUpdaterClass_block_invoke(v16);
    v8 = v18[3];
  }

  v9 = v8;
  _Block_object_dispose(&v17, 8);
  v10 = [[v8 alloc] initWithProvider:self queue:self->_audioPowerUpdaterQueue frequency:1 delegate:0];
  audioPowerUpdater = self->_audioPowerUpdater;
  self->_audioPowerUpdater = v10;

  [(AFAudioPowerUpdater *)self->_audioPowerUpdater beginUpdate];
  v12 = self->_audioPowerUpdater;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__VSSpeechSynthesizer_beginAudioPowerUpdateWithReply___block_invoke;
  v14[3] = &unk_279E4F668;
  v15 = replyCopy;
  v13 = replyCopy;
  [(AFAudioPowerUpdater *)v12 createNewXPCWrapperWithCompletion:v14];
}

- (void)forwardStreamObject:(id)object
{
  objectCopy = object;
  if (+[VSFeatureFlags useSiriTTSService])
  {
    [(VSSpeechSynthesizer *)self STS_forwardStreamObject:objectCopy];
  }

  else
  {
    [(VSSpeechConnection *)self->_xpcConnection forwardStreamObject:objectCopy];
  }
}

- (void)connection:(id)connection invalidatedWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      identifier = self->_identifier;
      v12 = 138412290;
      v13 = identifier;
      _os_log_impl(&dword_272850000, v8, OS_LOG_TYPE_INFO, "Notify daemon crash from: %@", &v12, 0xCu);
    }

    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 speechSynthesizer:self daemonDidCrashWithError:errorCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)connection presynthesizedAudioRequest:(id)request successWithInstrumentMetrics:(id)metrics error:(id)error
{
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    callbackQueue = self->_callbackQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __96__VSSpeechSynthesizer_connection_presynthesizedAudioRequest_successWithInstrumentMetrics_error___block_invoke;
    v15[3] = &unk_279E4F5A0;
    v15[4] = self;
    v16 = requestCopy;
    v17 = metricsCopy;
    v18 = errorCopy;
    dispatch_async(callbackQueue, v15);
  }
}

void __96__VSSpeechSynthesizer_connection_presynthesizedAudioRequest_successWithInstrumentMetrics_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 64));
  [WeakRetained speechSynthesizer:a1[4] didFinishPresynthesizedAudioRequest:a1[5] withInstrumentMetrics:a1[6] error:a1[7]];
}

- (void)connection:(id)connection presynthesizedAudioRequest:(id)request didStopAtEnd:(BOOL)end error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  stopHandler = [requestCopy stopHandler];
  v12 = stopHandler;
  if (stopHandler)
  {
    (*(stopHandler + 16))(stopHandler);
    [requestCopy setStopHandler:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    callbackQueue = self->_callbackQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __80__VSSpeechSynthesizer_connection_presynthesizedAudioRequest_didStopAtEnd_error___block_invoke;
    v16[3] = &unk_279E4F640;
    v16[4] = self;
    v17 = requestCopy;
    endCopy = end;
    v18 = errorCopy;
    dispatch_async(callbackQueue, v16);
  }
}

void __80__VSSpeechSynthesizer_connection_presynthesizedAudioRequest_didStopAtEnd_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained speechSynthesizer:*(a1 + 32) didStopPresynthesizedAudioRequest:*(a1 + 40) atEnd:*(a1 + 56) error:*(a1 + 48)];
}

- (void)connection:(id)connection presynthesizedAudioRequestDidStart:(id)start
{
  startCopy = start;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    callbackQueue = self->_callbackQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__VSSpeechSynthesizer_connection_presynthesizedAudioRequestDidStart___block_invoke;
    v9[3] = &unk_279E4F808;
    v9[4] = self;
    v10 = startCopy;
    dispatch_async(callbackQueue, v9);
  }
}

void __69__VSSpeechSynthesizer_connection_presynthesizedAudioRequestDidStart___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained speechSynthesizer:*(a1 + 32) didStartPresynthesizedAudioRequest:*(a1 + 40)];
}

- (void)connection:(id)connection synthesisRequest:(id)request didFinishWithInstrumentMetrics:(id)metrics error:(id)error
{
  connectionCopy = connection;
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  v14 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:requestCopy];
  durationRequests = [(VSSpeechSynthesizer *)self durationRequests];
  v16 = [durationRequests objectForKey:v14];

  if (v16)
  {
    completion = [v16 completion];
    (completion)[2](completion, requestCopy, metricsCopy, errorCopy);

    durationRequests2 = [(VSSpeechSynthesizer *)self durationRequests];
    [durationRequests2 removeObjectForKey:v14];
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__VSSpeechSynthesizer_connection_synthesisRequest_didFinishWithInstrumentMetrics_error___block_invoke;
    block[3] = &unk_279E4F618;
    v21 = connectionCopy;
    selfCopy = self;
    v23 = requestCopy;
    v24 = metricsCopy;
    v25 = errorCopy;
    dispatch_async(queue, block);
  }
}

void __88__VSSpeechSynthesizer_connection_synthesisRequest_didFinishWithInstrumentMetrics_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v21 = "[VSSpeechSynthesizer connection:synthesisRequest:didFinishWithInstrumentMetrics:error:]_block_invoke";
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_272850000, v2, OS_LOG_TYPE_INFO, "%s, callback received in framework. %@", buf, 0x16u);
  }

  v4 = *(a1 + 40);
  if (*(a1 + 32) == *(v4 + 32))
  {
    WeakRetained = objc_loadWeakRetained((v4 + 64));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v16 = *(a1 + 40);
      v8 = *(v16 + 24);
      block[2] = __88__VSSpeechSynthesizer_connection_synthesisRequest_didFinishWithInstrumentMetrics_error___block_invoke_395;
      block[3] = &unk_279E4F5A0;
      v9 = *(&v16 + 1);
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      *&v12 = v10;
      *(&v12 + 1) = v11;
      v18 = v16;
      v19 = v12;
      dispatch_async(v8, block);
    }
  }

  else
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(*(a1 + 40) + 32);
      *buf = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v14;
      _os_log_error_impl(&dword_272850000, v5, OS_LOG_TYPE_ERROR, "Current xpc connection %@ does not match %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __88__VSSpeechSynthesizer_connection_synthesisRequest_didFinishWithInstrumentMetrics_error___block_invoke_395(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 64));
  [WeakRetained speechSynthesizer:a1[4] didFinishSynthesisRequest:a1[5] withInstrumentMetrics:a1[6] error:a1[7]];
}

- (void)connection:(id)connection speechRequest:(id)request didGenerateAudioChunk:(id)chunk
{
  connectionCopy = connection;
  requestCopy = request;
  chunkCopy = chunk;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__VSSpeechSynthesizer_connection_speechRequest_didGenerateAudioChunk___block_invoke;
  v15[3] = &unk_279E4F5A0;
  v16 = connectionCopy;
  selfCopy = self;
  v18 = requestCopy;
  v19 = chunkCopy;
  v12 = chunkCopy;
  v13 = requestCopy;
  v14 = connectionCopy;
  dispatch_async(queue, v15);
}

void __70__VSSpeechSynthesizer_connection_speechRequest_didGenerateAudioChunk___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (*(a1 + 32) == *(v3 + 32) && (*(v3 + 48) & 0x40) != 0)
  {
    v9 = v1;
    v10 = v2;
    v5 = *(v3 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__VSSpeechSynthesizer_connection_speechRequest_didGenerateAudioChunk___block_invoke_2;
    block[3] = &unk_279E4F528;
    block[4] = v3;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    dispatch_async(v5, block);
  }
}

void __70__VSSpeechSynthesizer_connection_speechRequest_didGenerateAudioChunk___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 64));
  [WeakRetained speechSynthesizer:a1[4] withSynthesisRequest:a1[5] didGenerateAudioChunk:a1[6]];
}

- (void)connection:(id)connection speechRequest:(id)request willSpeakMark:(int64_t)mark inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  connectionCopy = connection;
  requestCopy = request;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__VSSpeechSynthesizer_connection_speechRequest_willSpeakMark_inRange___block_invoke;
  block[3] = &unk_279E4F5F0;
  v16 = connectionCopy;
  selfCopy = self;
  v19 = location;
  v20 = length;
  v18 = requestCopy;
  v13 = requestCopy;
  v14 = connectionCopy;
  dispatch_async(queue, block);
}

void __70__VSSpeechSynthesizer_connection_speechRequest_willSpeakMark_inRange___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (*(a1 + 32) == *(v3 + 32) && (*(v3 + 48) & 0x20) != 0)
  {
    v8 = v1;
    v9 = v2;
    v4 = *(v3 + 24);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __70__VSSpeechSynthesizer_connection_speechRequest_willSpeakMark_inRange___block_invoke_2;
    v5[3] = &unk_279E4F5C8;
    v5[4] = v3;
    v7 = *(a1 + 56);
    v6 = *(a1 + 48);
    dispatch_async(v4, v5);
  }
}

void __70__VSSpeechSynthesizer_connection_speechRequest_willSpeakMark_inRange___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 64));
  [WeakRetained speechSynthesizer:a1[4] willSpeakRangeOfSpeechString:a1[6] forRequest:{a1[7], a1[5]}];
}

- (void)connection:(id)connection speechRequest:(id)request didReceiveTimingInfo:(id)info
{
  connectionCopy = connection;
  requestCopy = request;
  infoCopy = info;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__VSSpeechSynthesizer_connection_speechRequest_didReceiveTimingInfo___block_invoke;
  v15[3] = &unk_279E4F5A0;
  v16 = connectionCopy;
  selfCopy = self;
  v18 = requestCopy;
  v19 = infoCopy;
  v12 = infoCopy;
  v13 = requestCopy;
  v14 = connectionCopy;
  dispatch_async(queue, v15);
}

void __69__VSSpeechSynthesizer_connection_speechRequest_didReceiveTimingInfo___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32) == *(v1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((v1 + 64));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = *(v6 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__VSSpeechSynthesizer_connection_speechRequest_didReceiveTimingInfo___block_invoke_2;
      block[3] = &unk_279E4F528;
      block[4] = v6;
      v9 = v5;
      v10 = *(a1 + 56);
      dispatch_async(v7, block);
    }
  }
}

void __69__VSSpeechSynthesizer_connection_speechRequest_didReceiveTimingInfo___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 64));
  [WeakRetained speechSynthesizer:a1[4] withRequest:a1[5] didReceiveTimingInfo:a1[6]];
}

- (void)connection:(id)connection speechRequest:(id)request successWithInstrumentMetrics:(id)metrics
{
  connectionCopy = connection;
  requestCopy = request;
  metricsCopy = metrics;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__VSSpeechSynthesizer_connection_speechRequest_successWithInstrumentMetrics___block_invoke;
  v15[3] = &unk_279E4F5A0;
  v16 = connectionCopy;
  selfCopy = self;
  v18 = requestCopy;
  v19 = metricsCopy;
  v12 = metricsCopy;
  v13 = requestCopy;
  v14 = connectionCopy;
  dispatch_async(queue, v15);
}

void __77__VSSpeechSynthesizer_connection_speechRequest_successWithInstrumentMetrics___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (*(a1 + 32) == *(v3 + 32) && (*(v3 + 48) & 4) != 0)
  {
    v9 = v1;
    v10 = v2;
    v5 = *(v3 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__VSSpeechSynthesizer_connection_speechRequest_successWithInstrumentMetrics___block_invoke_2;
    block[3] = &unk_279E4F528;
    block[4] = v3;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    dispatch_async(v5, block);
  }
}

void __77__VSSpeechSynthesizer_connection_speechRequest_successWithInstrumentMetrics___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 64));
  [WeakRetained speechSynthesizer:a1[4] didFinishSpeakingRequest:a1[5] withInstrumentMetrics:a1[6]];
}

- (void)connection:(id)connection speechRequest:(id)request didStopAtEnd:(BOOL)end phonemesSpoken:(id)spoken error:(id)error
{
  connectionCopy = connection;
  requestCopy = request;
  spokenCopy = spoken;
  errorCopy = error;
  stopHandler = [requestCopy stopHandler];
  v17 = stopHandler;
  if (stopHandler)
  {
    (*(stopHandler + 16))(stopHandler);
    [requestCopy setStopHandler:0];
  }

  queue = self->_queue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __82__VSSpeechSynthesizer_connection_speechRequest_didStopAtEnd_phonemesSpoken_error___block_invoke;
  v23[3] = &unk_279E4F578;
  v24 = connectionCopy;
  selfCopy = self;
  endCopy = end;
  v26 = requestCopy;
  v27 = spokenCopy;
  v28 = errorCopy;
  v19 = errorCopy;
  v20 = spokenCopy;
  v21 = requestCopy;
  v22 = connectionCopy;
  dispatch_async(queue, v23);
}

void __82__VSSpeechSynthesizer_connection_speechRequest_didStopAtEnd_phonemesSpoken_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v16 = "[VSSpeechSynthesizer connection:speechRequest:didStopAtEnd:phonemesSpoken:error:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_272850000, v2, OS_LOG_TYPE_INFO, "%s, callback received in framework. %@", buf, 0x16u);
  }

  v4 = *(a1 + 40);
  if (*(a1 + 32) == *(v4 + 32))
  {
    if ((*(v4 + 48) & 2) != 0)
    {
      v6 = *(v4 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__VSSpeechSynthesizer_connection_speechRequest_didStopAtEnd_phonemesSpoken_error___block_invoke_393;
      block[3] = &unk_279E4F550;
      block[4] = v4;
      v11 = *(a1 + 48);
      v14 = *(a1 + 72);
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      dispatch_async(v6, block);
    }
  }

  else
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(*(a1 + 40) + 32);
      *buf = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v8;
      _os_log_error_impl(&dword_272850000, v5, OS_LOG_TYPE_ERROR, "Current xpc connection %@ does not match %@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __82__VSSpeechSynthesizer_connection_speechRequest_didStopAtEnd_phonemesSpoken_error___block_invoke_393(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained speechSynthesizer:*(a1 + 32) didFinishSpeakingRequest:*(a1 + 40) successfully:*(a1 + 64) phonemesSpoken:*(a1 + 48) withError:*(a1 + 56)];
}

- (void)connection:(id)connection speechRequestDidContinue:(id)continue
{
  connectionCopy = connection;
  continueCopy = continue;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__VSSpeechSynthesizer_connection_speechRequestDidContinue___block_invoke;
  block[3] = &unk_279E4F528;
  v12 = connectionCopy;
  selfCopy = self;
  v14 = continueCopy;
  v9 = continueCopy;
  v10 = connectionCopy;
  dispatch_async(queue, block);
}

void __59__VSSpeechSynthesizer_connection_speechRequestDidContinue___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (*(a1 + 32) == *(v3 + 32) && (*(v3 + 48) & 0x10) != 0)
  {
    v7 = v1;
    v8 = v2;
    v4 = *(v3 + 24);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__VSSpeechSynthesizer_connection_speechRequestDidContinue___block_invoke_2;
    v5[3] = &unk_279E4F808;
    v5[4] = v3;
    v6 = *(a1 + 48);
    dispatch_async(v4, v5);
  }
}

void __59__VSSpeechSynthesizer_connection_speechRequestDidContinue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained speechSynthesizer:*(a1 + 32) didContinueSpeakingRequest:*(a1 + 40)];
}

- (void)connection:(id)connection speechRequestDidPause:(id)pause
{
  connectionCopy = connection;
  pauseCopy = pause;
  pauseHandler = [pauseCopy pauseHandler];
  v9 = pauseHandler;
  if (pauseHandler)
  {
    (*(pauseHandler + 16))(pauseHandler);
    [pauseCopy setPauseHandler:0];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__VSSpeechSynthesizer_connection_speechRequestDidPause___block_invoke;
  block[3] = &unk_279E4F528;
  v14 = connectionCopy;
  selfCopy = self;
  v16 = pauseCopy;
  v11 = pauseCopy;
  v12 = connectionCopy;
  dispatch_async(queue, block);
}

void __56__VSSpeechSynthesizer_connection_speechRequestDidPause___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (*(a1 + 32) == *(v3 + 32) && (*(v3 + 48) & 8) != 0)
  {
    v7 = v1;
    v8 = v2;
    v4 = *(v3 + 24);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__VSSpeechSynthesizer_connection_speechRequestDidPause___block_invoke_2;
    v5[3] = &unk_279E4F808;
    v5[4] = v3;
    v6 = *(a1 + 48);
    dispatch_async(v4, v5);
  }
}

void __56__VSSpeechSynthesizer_connection_speechRequestDidPause___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained speechSynthesizer:*(a1 + 32) didPauseSpeakingRequest:*(a1 + 40)];
}

- (void)connection:(id)connection speechRequestDidStart:(id)start
{
  connectionCopy = connection;
  startCopy = start;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__VSSpeechSynthesizer_connection_speechRequestDidStart___block_invoke;
  block[3] = &unk_279E4F528;
  v12 = connectionCopy;
  selfCopy = self;
  v14 = startCopy;
  v9 = startCopy;
  v10 = connectionCopy;
  dispatch_async(queue, block);
}

void __56__VSSpeechSynthesizer_connection_speechRequestDidStart___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (*(a1 + 32) == *(v3 + 32) && (*(v3 + 48) & 1) != 0)
  {
    v7 = v1;
    v8 = v2;
    v4 = *(v3 + 24);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__VSSpeechSynthesizer_connection_speechRequestDidStart___block_invoke_2;
    v5[3] = &unk_279E4F808;
    v5[4] = v3;
    v6 = *(a1 + 48);
    dispatch_async(v4, v5);
  }
}

void __56__VSSpeechSynthesizer_connection_speechRequestDidStart___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained speechSynthesizer:*(a1 + 32) didStartSpeakingRequest:*(a1 + 40)];
}

- (void)textToPhonemesWithRequest:(id)request phonemeSystem:(int64_t)system completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  if (+[VSFeatureFlags useSiriTTSService])
  {
    [(VSSpeechSynthesizer *)self STS_textToPhonemesWithRequest:requestCopy phonemeSystem:system completion:completionCopy];
  }

  else
  {
    v10 = [VSSpeechSynthesizer validateRequest:requestCopy];
    if (v10)
    {
      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        clientBundleIdentifier = self->_clientBundleIdentifier;
        *buf = 138543874;
        v21 = clientBundleIdentifier;
        v22 = 2112;
        v23 = requestCopy;
        v24 = 2112;
        v25 = v10;
        _os_log_error_impl(&dword_272850000, v11, OS_LOG_TYPE_ERROR, "Invalid #TTPRequest from client %{public}@: %@, error: %@", buf, 0x20u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, &stru_2881D71A8, v10);
      }
    }

    else
    {
      queue = self->_queue;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __74__VSSpeechSynthesizer_textToPhonemesWithRequest_phonemeSystem_completion___block_invoke;
      v15[3] = &unk_279E4F500;
      v16 = requestCopy;
      selfCopy = self;
      systemCopy = system;
      v18 = completionCopy;
      dispatch_async(queue, v15);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __74__VSSpeechSynthesizer_textToPhonemesWithRequest_phonemeSystem_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setRequestCreatedTimestamp:mach_absolute_time()];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) requestCreatedTimestamp];
    v4 = *(*(a1 + 40) + 8);
    *buf = 134218242;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_272850000, v2, OS_LOG_TYPE_DEFAULT, "Start #TTPRequest %llu from client %{public}@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 32);
  v7 = *(a1 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__VSSpeechSynthesizer_textToPhonemesWithRequest_phonemeSystem_completion___block_invoke_392;
  v9[3] = &unk_279E4F4D8;
  v10 = v5;
  v11 = *(a1 + 48);
  [v6 startPhonemesRequest:v10 phonemeSystem:v7 reply:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __74__VSSpeechSynthesizer_textToPhonemesWithRequest_phonemeSystem_completion___block_invoke_392(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = VSGetLogDefault();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_error_impl(&dword_272850000, v8, OS_LOG_TYPE_ERROR, "Error #TTPRequest %@", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) requestCreatedTimestamp];
    v10 = [*(a1 + 32) logText];
    v13 = 134218498;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_272850000, v8, OS_LOG_TYPE_DEFAULT, "#TTPRequest %llu Received phonemes: %@, for text: %{public}@", &v13, 0x20u);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)estimateDurationOfRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (+[VSFeatureFlags useSiriTTSServiceV2])
  {
    [(VSSpeechSynthesizer *)self STS_estimateDurationOfRequest:requestCopy completion:completionCopy];
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__VSSpeechSynthesizer_estimateDurationOfRequest_completion___block_invoke;
    block[3] = &unk_279E4FA90;
    v10 = requestCopy;
    selfCopy = self;
    v12 = completionCopy;
    dispatch_sync(queue, block);
  }
}

void __60__VSSpeechSynthesizer_estimateDurationOfRequest_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) logText];
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_272850000, v2, OS_LOG_TYPE_DEFAULT, "#EstimateDuration Request text: %@", buf, 0xCu);
  }

  [*(a1 + 32) setFootprint:1];
  [*(a1 + 32) setVoiceType:1];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__VSSpeechSynthesizer_estimateDurationOfRequest_completion___block_invoke_387;
  v7[3] = &unk_279E4F4B0;
  v8 = v4;
  v9 = *(a1 + 48);
  [v5 estimateDurationWithRequest:v8 reply:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __60__VSSpeechSynthesizer_estimateDurationOfRequest_completion___block_invoke_387(uint64_t a1, void *a2, double a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[VSSpeechSynthesizer estimateDurationOfRequest:completion:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&dword_272850000, v6, OS_LOG_TYPE_ERROR, "Error %s, %@", &v11, 0x16u);
    }
  }

  v7 = VSGetLogDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) logText];
    v11 = 134218242;
    v12 = *&a3;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_272850000, v7, OS_LOG_TYPE_DEFAULT, "#EstimateDuration Received duration: %.2f, for text: %@", &v11, 0x16u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (double)estimateDurationOfRequest:(id)request
{
  v33 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (+[VSFeatureFlags useSiriTTSServiceV2])
  {
    [(VSSpeechSynthesizer *)self STS_estimateDurationOfRequest:requestCopy];
    v6 = v5;
  }

  else
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      logText = [requestCopy logText];
      v27 = 138412290;
      v28 = *&logText;
      _os_log_impl(&dword_272850000, v7, OS_LOG_TYPE_DEFAULT, "#RoughEstimateDuration Request utterance: %@", &v27, 0xCu);
    }

    languageCode = [requestCopy languageCode];
    v10 = [&unk_2881E1288 objectForKeyedSubscript:languageCode];
    if (v10)
    {
      goto LABEL_9;
    }

    if ([(__CFString *)languageCode length]>= 3)
    {
      v11 = [(__CFString *)languageCode substringWithRange:0, 2];

      languageCode = v11;
    }

    v10 = [&unk_2881E1288 objectForKeyedSubscript:languageCode];
    if (v10)
    {
LABEL_9:
      v12 = v10;
    }

    else
    {

      languageCode = @"generic";
      v12 = &unk_2881E0DD0;
    }

    text = [requestCopy text];
    languageCode2 = [requestCopy languageCode];
    v15 = [VSSpeechSynthesizer characterClassCountForUtterance:text language:languageCode2];

    firstObject = [v15 firstObject];
    [firstObject doubleValue];
    v6 = v17 / 1000.0;
    if ([v15 count] >= 2)
    {
      v18 = 1;
      do
      {
        v19 = [v15 objectAtIndexedSubscript:v18];
        unsignedIntegerValue = [v19 unsignedIntegerValue];
        v21 = [v12 objectAtIndexedSubscript:v18 - 1];
        [v21 doubleValue];
        v6 = v6 + unsignedIntegerValue * v22;

        ++v18;
      }

      while (v18 < [v15 count]);
    }

    v23 = VSGetLogDefault();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      logText2 = [requestCopy logText];
      v27 = 134218498;
      v28 = v6;
      v29 = 2112;
      v30 = languageCode;
      v31 = 2112;
      v32 = logText2;
      _os_log_impl(&dword_272850000, v23, OS_LOG_TYPE_DEFAULT, "#RoughEstimateDuration calculated duration: %.2f, using %@ locale, for text: %@", &v27, 0x20u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_continueSpeakingRequest
{
  v15 = *MEMORY[0x277D85DE8];
  currentRequest = [(VSSpeechConnection *)self->_xpcConnection currentRequest];
  v4 = VSGetLogDefault();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (currentRequest)
  {
    if (v5)
    {
      requestCreatedTimestamp = [currentRequest requestCreatedTimestamp];
      clientBundleIdentifier = self->_clientBundleIdentifier;
      v11 = 134218242;
      v12 = requestCreatedTimestamp;
      v13 = 2114;
      v14 = clientBundleIdentifier;
      _os_log_impl(&dword_272850000, v4, OS_LOG_TYPE_DEFAULT, "Resume #SpeechRequest %llu from client %{public}@", &v11, 0x16u);
    }

    [(VSSpeechConnection *)self->_xpcConnection continueSpeechRequest:currentRequest];
  }

  else
  {
    if (v5)
    {
      v8 = self->_clientBundleIdentifier;
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_272850000, v4, OS_LOG_TYPE_DEFAULT, "Resume #SpeechRequest from client %{public}@ was ignored, no request to resume", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)speechString
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2748;
  v10 = __Block_byref_object_dispose__2749;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__VSSpeechSynthesizer_speechString__block_invoke;
  v5[3] = &unk_279E4F488;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__VSSpeechSynthesizer_speechString__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 32) currentRequest];
  v3 = [v5 text];
  v4 = v3;
  if (!v3)
  {
    v1 = [v5 attributedText];
    v4 = [v1 string];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (!v3)
  {
  }
}

- (BOOL)isSystemSpeaking
{
  if (+[VSFeatureFlags useSiriTTSService])
  {

    return [(VSSpeechSynthesizer *)self STS_isSpeaking];
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__VSSpeechSynthesizer_isSystemSpeaking__block_invoke;
    v6[3] = &unk_279E4F488;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(queue, v6);
    v5 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
    return v5;
  }
}

uint64_t __39__VSSpeechSynthesizer_isSystemSpeaking__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) isSystemSpeaking];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isSpeaking
{
  if (+[VSFeatureFlags useSiriTTSService])
  {

    return [(VSSpeechSynthesizer *)self STS_isSpeaking];
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__VSSpeechSynthesizer_isSpeaking__block_invoke;
    v6[3] = &unk_279E4F488;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(queue, v6);
    v5 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
    return v5;
  }
}

uint64_t __33__VSSpeechSynthesizer_isSpeaking__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) isSystemSpeakingOnBehalfOfCurrentConnection];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)continueSpeakingWithError:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2748;
  v12 = __Block_byref_object_dispose__2749;
  v13 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__VSSpeechSynthesizer_continueSpeakingWithError___block_invoke;
  v7[3] = &unk_279E4F488;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  if (error)
  {
    *error = v9[5];
  }

  v5 = v9[5] == 0;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __49__VSSpeechSynthesizer_continueSpeakingWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _continueSpeakingRequest];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)pauseSpeakingAtNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously error:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2748;
  v15 = __Block_byref_object_dispose__2749;
  v16 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__VSSpeechSynthesizer_pauseSpeakingAtNextBoundary_synchronously_error___block_invoke;
  v9[3] = &unk_279E4F438;
  v9[4] = self;
  v9[5] = &v11;
  v9[6] = boundary;
  synchronouslyCopy = synchronously;
  dispatch_sync(queue, v9);
  if (error)
  {
    *error = v12[5];
  }

  v7 = v12[5] == 0;
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __71__VSSpeechSynthesizer_pauseSpeakingAtNextBoundary_synchronously_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _pauseSpeakingRequestAtNextBoundary:*(a1 + 48) synchronously:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)stopSpeakingPresynthesizedAudioSynchronously:(BOOL)synchronously error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  if (+[VSFeatureFlags useSiriTTSService])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    allValues = [(NSMutableDictionary *)self->_stsRequestMapping allValues];
    v8 = [allValues countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          [(SiriTTSDaemonSession *)self->_proxySession cancelWithRequest:*(*(&v24 + 1) + 8 * i)];
        }

        v9 = [allValues countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    v12 = 1;
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__2748;
    v22 = __Block_byref_object_dispose__2749;
    v23 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__VSSpeechSynthesizer_stopSpeakingPresynthesizedAudioSynchronously_error___block_invoke;
    block[3] = &unk_279E4F460;
    block[4] = self;
    block[5] = &v18;
    synchronouslyCopy = synchronously;
    dispatch_sync(queue, block);
    if (error)
    {
      *error = v19[5];
    }

    v12 = v19[5] == 0;
    _Block_object_dispose(&v18, 8);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void __74__VSSpeechSynthesizer_stopSpeakingPresynthesizedAudioSynchronously_error___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2[4] currentAudioRequest];
  v4 = [v2 _stopSpeakingPresynthesizedAudioRequest:v3 synchronously:*(a1 + 48)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v10 = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_272850000, v7, OS_LOG_TYPE_ERROR, "Error Stop #PresynthesizedAudioRequest %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)stopSpeakingAtNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  if (+[VSFeatureFlags useSiriTTSService])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    allValues = [(NSMutableDictionary *)self->_stsRequestMapping allValues];
    v10 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(allValues);
          }

          [(SiriTTSDaemonSession *)self->_proxySession cancelWithRequest:*(*(&v26 + 1) + 8 * i)];
        }

        v11 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    v14 = 1;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__2748;
    v24 = __Block_byref_object_dispose__2749;
    v25 = 0;
    queue = self->_queue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70__VSSpeechSynthesizer_stopSpeakingAtNextBoundary_synchronously_error___block_invoke;
    v18[3] = &unk_279E4F438;
    v18[4] = self;
    v18[5] = &v20;
    v18[6] = boundary;
    synchronouslyCopy = synchronously;
    dispatch_sync(queue, v18);
    if (error)
    {
      *error = v21[5];
    }

    v14 = v21[5] == 0;
    _Block_object_dispose(&v20, 8);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

void __70__VSSpeechSynthesizer_stopSpeakingAtNextBoundary_synchronously_error___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2[4] currentRequest];
  v4 = [v2 _stopSpeakingRequest:v3 atNextBoundary:*(a1 + 48) synchronously:*(a1 + 56)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v10 = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_272850000, v7, OS_LOG_TYPE_ERROR, "Error Stop #SpeechRequest %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelAudioRequest:(id)request
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (+[VSFeatureFlags useSiriTTSService])
  {
    [(VSSpeechSynthesizer *)self STS_cancelAudioRequest:requestCopy];
  }

  else if (requestCopy)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__VSSpeechSynthesizer_cancelAudioRequest___block_invoke;
    v9[3] = &unk_279E4F808;
    v10 = requestCopy;
    selfCopy = self;
    dispatch_sync(queue, v9);
  }

  else
  {
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      clientBundleIdentifier = self->_clientBundleIdentifier;
      *buf = 138543362;
      v13 = clientBundleIdentifier;
      _os_log_impl(&dword_272850000, v6, OS_LOG_TYPE_DEFAULT, "Cancel #PresynthesizedAudioRequest from client %{public}@ was ignored, no request to stop", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __42__VSSpeechSynthesizer_cancelAudioRequest___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) requestCreatedTimestamp];
    v4 = *(*(a1 + 40) + 8);
    v7 = 134218242;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_272850000, v2, OS_LOG_TYPE_DEFAULT, "Cancel #PresynthesizedAudioRequest %llu from client %{public}@", &v7, 0x16u);
  }

  result = [*(*(a1 + 40) + 32) stopPresynthesizedAudioRequest:*(a1 + 32)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cancelRequest:(id)request
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (+[VSFeatureFlags useSiriTTSService])
  {
    [(VSSpeechSynthesizer *)self STS_cancelRequest:requestCopy];
  }

  else if (requestCopy)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__VSSpeechSynthesizer_cancelRequest___block_invoke;
    v9[3] = &unk_279E4F808;
    v10 = requestCopy;
    selfCopy = self;
    dispatch_sync(queue, v9);
  }

  else
  {
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      clientBundleIdentifier = self->_clientBundleIdentifier;
      *buf = 138543362;
      v13 = clientBundleIdentifier;
      _os_log_impl(&dword_272850000, v6, OS_LOG_TYPE_DEFAULT, "Cancel #SpeechRequest from client %{public}@ was ignored, no request to stop", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __37__VSSpeechSynthesizer_cancelRequest___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) requestCreatedTimestamp];
    v4 = *(*(a1 + 40) + 8);
    v7 = 134218242;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_272850000, v2, OS_LOG_TYPE_DEFAULT, "Cancel #SpeechRequest %llu from client %{public}@", &v7, 0x16u);
  }

  result = [*(*(a1 + 40) + 32) stopSpeechRequest:*(a1 + 32) atMark:0];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)cachePresynthesizedAudioRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (+[VSFeatureFlags useSiriTTSService])
  {
    v5 = [(VSSpeechSynthesizer *)self STS_signalInlineStreaming:requestCopy];
  }

  else
  {
    v5 = [VSSpeechSynthesizer validateAudioCachingRequest:requestCopy];
    if (v5)
    {
      v6 = VSGetLogDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = requestCopy;
        v16 = 2112;
        v17 = v5;
        _os_log_error_impl(&dword_272850000, v6, OS_LOG_TYPE_ERROR, "Invalid #AudioCachingRequest: %@, error: %@", buf, 0x16u);
      }

      v7 = v5;
    }

    else
    {
      queue = self->_queue;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __55__VSSpeechSynthesizer_cachePresynthesizedAudioRequest___block_invoke;
      v11[3] = &unk_279E4F808;
      v12 = requestCopy;
      selfCopy = self;
      dispatch_sync(queue, v11);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __55__VSSpeechSynthesizer_cachePresynthesizedAudioRequest___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setRequestCreatedTimestamp:mach_absolute_time()];
  [*(a1 + 32) setClientBundleIdentifier:*(*(a1 + 40) + 8)];
  [*(a1 + 32) setAccessoryID:*(*(a1 + 40) + 88)];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) requestCreatedTimestamp];
    v4 = *(a1 + 32);
    v7 = 134218242;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_272850000, v2, OS_LOG_TYPE_DEFAULT, "Cache #PresynthesizedAudioRequest %llu: %@", &v7, 0x16u);
  }

  result = [*(*(a1 + 40) + 32) cachePresynthesizedAudioRequest:*(a1 + 32)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)startSpeakingPresynthesizedAudioRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (+[VSFeatureFlags useSiriTTSService])
  {
    v5 = [(VSSpeechSynthesizer *)self STS_startSpeakingAudioRequest:requestCopy];
  }

  else
  {
    v5 = [VSSpeechSynthesizer validateAudioRequest:requestCopy];
    if (v5)
    {
      v6 = VSGetLogDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = requestCopy;
        v16 = 2112;
        v17 = v5;
        _os_log_error_impl(&dword_272850000, v6, OS_LOG_TYPE_ERROR, "Invalid #PresynthesizedAudioRequest: %@, error: %@", buf, 0x16u);
      }

      v7 = v5;
    }

    else
    {
      queue = self->_queue;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __63__VSSpeechSynthesizer_startSpeakingPresynthesizedAudioRequest___block_invoke;
      v11[3] = &unk_279E4F808;
      v12 = requestCopy;
      selfCopy = self;
      dispatch_sync(queue, v11);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __63__VSSpeechSynthesizer_startSpeakingPresynthesizedAudioRequest___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setRequestCreatedTimestamp:mach_absolute_time()];
  [*(a1 + 32) setClientBundleIdentifier:*(*(a1 + 40) + 8)];
  v2 = [*(a1 + 32) audioSessionID];
  if (v2)
  {
    [*(a1 + 32) setAudioSessionID:v2];
  }

  else
  {
    v3 = [MEMORY[0x277CB83F8] sharedInstance];
    [*(a1 + 32) setAudioSessionID:{objc_msgSend(v3, "opaqueSessionID")}];
  }

  [*(a1 + 32) setAccessoryID:*(*(a1 + 40) + 88)];
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) requestCreatedTimestamp];
    v6 = *(a1 + 32);
    v9 = 134218242;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_272850000, v4, OS_LOG_TYPE_DEFAULT, "Start #PresynthesizedAudioRequest %llu: %@", &v9, 0x16u);
  }

  result = [*(*(a1 + 40) + 32) startPresynthesizedAudioRequest:*(a1 + 32)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)startSpeakingRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (+[VSFeatureFlags useSiriTTSService])
  {
    v5 = [(VSSpeechSynthesizer *)self STS_startSpeakingRequest:requestCopy];
  }

  else
  {
    v5 = [VSSpeechSynthesizer validateRequest:requestCopy];
    if (v5)
    {
      v6 = VSGetLogDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = requestCopy;
        v16 = 2112;
        v17 = v5;
        _os_log_error_impl(&dword_272850000, v6, OS_LOG_TYPE_ERROR, "Invalid #SpeechRequest: %@, error: %@", buf, 0x16u);
      }

      v7 = v5;
    }

    else
    {
      queue = self->_queue;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __44__VSSpeechSynthesizer_startSpeakingRequest___block_invoke;
      v11[3] = &unk_279E4F808;
      v12 = requestCopy;
      selfCopy = self;
      dispatch_sync(queue, v11);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __44__VSSpeechSynthesizer_startSpeakingRequest___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  [*(a1 + 32) setRequestCreatedTimestamp:mach_absolute_time()];
  [*(a1 + 32) setClientBundleIdentifier:*(*(a1 + 40) + 8)];
  [*(a1 + 32) setAccessoryID:*(*(a1 + 40) + 88)];
  v2 = [*(a1 + 32) audioSessionID];
  if (v2)
  {
    [*(a1 + 32) setAudioSessionID:v2];
  }

  else
  {
    v3 = [MEMORY[0x277CB83F8] sharedInstance];
    [*(a1 + 32) setAudioSessionID:{objc_msgSend(v3, "opaqueSessionID")}];
  }

  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) requestCreatedTimestamp];
    v6 = [*(a1 + 32) clientBundleIdentifier];
    v7 = *(a1 + 32);
    v10 = 134218498;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_272850000, v4, OS_LOG_TYPE_DEFAULT, "Start #SpeechRequest %llu from client %{public}@, %{public}@", &v10, 0x20u);
  }

  result = [*(*(a1 + 40) + 32) startSpeechRequest:*(a1 + 32)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)startSynthesizingRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (+[VSFeatureFlags useSiriTTSService])
  {
    v5 = [(VSSpeechSynthesizer *)self STS_startSynthesizingRequest:requestCopy];
  }

  else
  {
    v5 = [VSSpeechSynthesizer validateRequest:requestCopy];
    if (v5)
    {
      v6 = VSGetLogDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = requestCopy;
        v16 = 2112;
        v17 = v5;
        _os_log_error_impl(&dword_272850000, v6, OS_LOG_TYPE_ERROR, "Invalid #SynthesisRequest: %@, error: %@", buf, 0x16u);
      }

      v7 = v5;
    }

    else
    {
      queue = self->_queue;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __48__VSSpeechSynthesizer_startSynthesizingRequest___block_invoke;
      v11[3] = &unk_279E4F808;
      v12 = requestCopy;
      selfCopy = self;
      dispatch_sync(queue, v11);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __48__VSSpeechSynthesizer_startSynthesizingRequest___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  [*(a1 + 32) setRequestCreatedTimestamp:mach_absolute_time()];
  [*(a1 + 32) setClientBundleIdentifier:*(*(a1 + 40) + 8)];
  [*(a1 + 32) setAccessoryID:*(*(a1 + 40) + 88)];
  [*(a1 + 32) setShouldStreamAudioData:(*(*(a1 + 40) + 48) >> 6) & 1];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) requestCreatedTimestamp];
    v4 = [*(a1 + 32) clientBundleIdentifier];
    v5 = *(a1 + 32);
    v8 = 134218498;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_272850000, v2, OS_LOG_TYPE_DEFAULT, "Start #SynthesisRequest %llu from client %{public}@, %@", &v8, 0x20u);
  }

  result = [*(*(a1 + 40) + 32) startSynthesisRequest:*(a1 + 32)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)keepActive
{
  v3 = +[VSFeatureFlags useSiriTTSService];
  v4 = 32;
  if (v3)
  {
    v4 = 104;
  }

  v5 = *(&self->super.isa + v4);

  return [v5 keepActive];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__VSSpeechSynthesizer_setDelegate___block_invoke;
  v7[3] = &unk_279E4F808;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

- (id)_pauseSpeakingRequestAtNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  userInfoValues[1] = *MEMORY[0x277D85DE8];
  currentRequest = [(VSSpeechConnection *)self->_xpcConnection currentRequest];
  v8 = VSGetLogDefault();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (currentRequest)
  {
    if (v9)
    {
      requestCreatedTimestamp = [currentRequest requestCreatedTimestamp];
      clientBundleIdentifier = self->_clientBundleIdentifier;
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:boundary];
      *buf = 134218754;
      *&buf[4] = requestCreatedTimestamp;
      v22 = 2114;
      v23 = clientBundleIdentifier;
      v24 = 2112;
      v25 = v12;
      v26 = 1024;
      v27 = synchronouslyCopy;
      _os_log_impl(&dword_272850000, v8, OS_LOG_TYPE_DEFAULT, "Pause #SpeechRequest %llu from client %{public}@, boundary: %@, synchronously: %{BOOL}d", buf, 0x26u);
    }

    if (synchronouslyCopy)
    {
      v13 = dispatch_semaphore_create(0);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __73__VSSpeechSynthesizer__pauseSpeakingRequestAtNextBoundary_synchronously___block_invoke;
      v19[3] = &unk_279E4F7E0;
      v8 = v13;
      v20 = v8;
      [currentRequest setPauseHandler:v19];
    }

    else
    {
      v8 = 0;
    }

    [(VSSpeechConnection *)self->_xpcConnection pauseSpeechRequest:currentRequest atMark:boundary == 1];
    if (v8)
    {
      v15 = dispatch_time(0, 1000000000);
      if (dispatch_semaphore_wait(v8, v15))
      {
        *buf = *MEMORY[0x277CBEE30];
        userInfoValues[0] = @"pause request timeout";
        v16 = CFErrorCreateWithUserInfoKeysAndValues(0, @"VSErrorDomain", -4004, buf, userInfoValues, 1);
        goto LABEL_13;
      }
    }
  }

  else if (v9)
  {
    v14 = self->_clientBundleIdentifier;
    *buf = 138543362;
    *&buf[4] = v14;
    _os_log_impl(&dword_272850000, v8, OS_LOG_TYPE_DEFAULT, "Pause #SpeechRequest from client %{public}@ was ignored, no request to pause", buf, 0xCu);
  }

  v16 = 0;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_stopSpeakingRequest:(id)request atNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  userInfoValues[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v9 = VSGetLogDefault();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (requestCopy)
  {
    if (v10)
    {
      requestCreatedTimestamp = [requestCopy requestCreatedTimestamp];
      clientBundleIdentifier = self->_clientBundleIdentifier;
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:boundary];
      *buf = 134218754;
      *&buf[4] = requestCreatedTimestamp;
      v23 = 2114;
      v24 = clientBundleIdentifier;
      v25 = 2112;
      v26 = v13;
      v27 = 1024;
      v28 = synchronouslyCopy;
      _os_log_impl(&dword_272850000, v9, OS_LOG_TYPE_DEFAULT, "Stop #SpeechRequest %llu from client %{public}@, boundary: %@, synchronously: %{BOOL}d", buf, 0x26u);
    }

    if (synchronouslyCopy)
    {
      v14 = dispatch_semaphore_create(0);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __73__VSSpeechSynthesizer__stopSpeakingRequest_atNextBoundary_synchronously___block_invoke;
      v20[3] = &unk_279E4F7E0;
      v9 = v14;
      v21 = v9;
      [requestCopy setStopHandler:v20];
    }

    else
    {
      v9 = 0;
    }

    [(VSSpeechConnection *)self->_xpcConnection stopSpeechRequest:requestCopy atMark:boundary == 1];
    if (v9)
    {
      v16 = dispatch_time(0, 1000000000);
      if (dispatch_semaphore_wait(v9, v16))
      {
        *buf = *MEMORY[0x277CBEE30];
        userInfoValues[0] = @"stop request timeout";
        v17 = CFErrorCreateWithUserInfoKeysAndValues(0, @"VSErrorDomain", -4004, buf, userInfoValues, 1);
        goto LABEL_13;
      }
    }
  }

  else if (v10)
  {
    v15 = self->_clientBundleIdentifier;
    *buf = 138543362;
    *&buf[4] = v15;
    _os_log_impl(&dword_272850000, v9, OS_LOG_TYPE_DEFAULT, "Stop #SpeechRequest from client %{public}@ was ignored, no request to stop", buf, 0xCu);
  }

  v17 = 0;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_stopSpeakingPresynthesizedAudioRequest:(id)request synchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  userInfoValues[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = VSGetLogDefault();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (requestCopy)
  {
    if (v8)
    {
      requestCreatedTimestamp = [requestCopy requestCreatedTimestamp];
      clientBundleIdentifier = self->_clientBundleIdentifier;
      *buf = 134218498;
      *&buf[4] = requestCreatedTimestamp;
      v20 = 2114;
      v21 = clientBundleIdentifier;
      v22 = 1024;
      v23 = synchronouslyCopy;
      _os_log_impl(&dword_272850000, v7, OS_LOG_TYPE_DEFAULT, "Stop #SpeechPresynthesizedAudioRequest %llu from client %{public}@, synchronously: %{BOOL}d", buf, 0x1Cu);
    }

    if (synchronouslyCopy)
    {
      v11 = dispatch_semaphore_create(0);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __77__VSSpeechSynthesizer__stopSpeakingPresynthesizedAudioRequest_synchronously___block_invoke;
      v17[3] = &unk_279E4F7E0;
      v7 = v11;
      v18 = v7;
      [requestCopy setStopHandler:v17];

      [(VSSpeechConnection *)self->_xpcConnection stopPresynthesizedAudioRequest:requestCopy];
      if (v7)
      {
        v12 = dispatch_time(0, 1000000000);
        if (dispatch_semaphore_wait(v7, v12))
        {
          *buf = *MEMORY[0x277CBEE30];
          userInfoValues[0] = @"stop presynthesized request timeout";
          v13 = CFErrorCreateWithUserInfoKeysAndValues(0, @"VSErrorDomain", -4004, buf, userInfoValues, 1);
          goto LABEL_12;
        }
      }
    }

    else
    {
      [(VSSpeechConnection *)self->_xpcConnection stopPresynthesizedAudioRequest:requestCopy];
      v7 = 0;
    }
  }

  else if (v8)
  {
    v14 = self->_clientBundleIdentifier;
    *buf = 138543362;
    *&buf[4] = v14;
    _os_log_impl(&dword_272850000, v7, OS_LOG_TYPE_DEFAULT, "Stop #SpeechPresynthesizedAudioRequest from client %{public}@ was ignored, no request to stop", buf, 0xCu);
  }

  v13 = 0;
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xFFFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xFFF7 | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 16;
    }

    else
    {
      v7 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xFFEF | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 32;
    }

    else
    {
      v8 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xFFDF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xFFFB | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xFFBF | v10;
  }
}

- (BOOL)queryPhaticCapability:(id)capability
{
  capabilityCopy = capability;
  if (+[VSFeatureFlags useSiriTTSServiceV2])
  {
    v5 = dispatch_semaphore_create(0);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__VSSpeechSynthesizer_queryPhaticCapability___block_invoke;
    v9[3] = &unk_279E4F408;
    v11 = &v12;
    v6 = v5;
    v10 = v6;
    [(VSSpeechSynthesizer *)self STS_queryPhaticCapabilityWithRequest:capabilityCopy reply:v9];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = [(VSSpeechConnection *)self->_xpcConnection queryPhaticCapabilityWithRequest:capabilityCopy];
  }

  return v7 & 1;
}

- (id)prewarmIfNeededWithRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (+[VSFeatureFlags useSiriTTSService])
  {
    v5 = [(VSSpeechSynthesizer *)self STS_prewarmRequest:requestCopy];
  }

  else
  {
    if (+[VSFeatureFlags lowInactiveMemory]&& ![(VSSpeechSynthesizer *)self keepActive])
    {
      v6 = VSGetLogDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_272850000, v6, OS_LOG_TYPE_FAULT, "VSSpeechSynthesizer keepActive must be true before prewarming.", buf, 2u);
      }
    }

    v5 = [VSSpeechSynthesizer validatePrewarmRequest:requestCopy];
    if (v5)
    {
      v7 = VSGetLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = requestCopy;
        v17 = 2112;
        v18 = v5;
        _os_log_error_impl(&dword_272850000, v7, OS_LOG_TYPE_ERROR, "Invalid #PrewarmRequest: %@, error: %@", buf, 0x16u);
      }

      v8 = v5;
    }

    else
    {
      queue = self->_queue;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __50__VSSpeechSynthesizer_prewarmIfNeededWithRequest___block_invoke;
      v12[3] = &unk_279E4F808;
      v13 = requestCopy;
      selfCopy = self;
      dispatch_sync(queue, v12);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

void __50__VSSpeechSynthesizer_prewarmIfNeededWithRequest___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setRequestCreatedTimestamp:mach_absolute_time()];
  [*(a1 + 32) setClientBundleIdentifier:*(*(a1 + 40) + 8)];
  [*(a1 + 32) setAccessoryID:*(*(a1 + 40) + 88)];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) requestCreatedTimestamp];
    v4 = [*(a1 + 32) clientBundleIdentifier];
    v5 = *(a1 + 32);
    *buf = 134218498;
    v15 = v3;
    v16 = 2114;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_272850000, v2, OS_LOG_TYPE_DEFAULT, "#PrewarmRequest %llu from client %{public}@, request: %@", buf, 0x20u);
  }

  v6 = [*(a1 + 32) audioSessionID];
  if (v6)
  {
    [*(a1 + 32) setAudioSessionID:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CB83F8] sharedInstance];
    [*(a1 + 32) setAudioSessionID:{objc_msgSend(v7, "opaqueSessionID")}];
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v8 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__VSSpeechSynthesizer_prewarmIfNeededWithRequest___block_invoke_135;
  v12[3] = &unk_279E4F278;
  v12[4] = v8;
  v13 = v9;
  [v10 prewarmIfNeededWithRequest:v13 reply:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __50__VSSpeechSynthesizer_prewarmIfNeededWithRequest___block_invoke_135(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v5 speechSynthesizer:*(a1 + 32) didFinishPrewarmRequest:*(a1 + 40) withError:v6];
  }
}

- (id)initForInputFeedback
{
  result = [(VSSpeechSynthesizer *)self init];
  if (result)
  {
    *(result + 24) |= 0x80u;
  }

  return result;
}

- (void)STS_getSynthesisVoiceMatching:(id)matching reply:(id)reply
{
  replyCopy = reply;
  proxySession = self->_proxySession;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__VSSpeechSynthesizer_STS_getSynthesisVoiceMatching_reply___block_invoke;
  v9[3] = &unk_279E4F3E0;
  v10 = replyCopy;
  v8 = replyCopy;
  [(SiriTTSDaemonSession *)proxySession getSynthesisVoiceMatching:matching reply:v9];
}

void __59__VSSpeechSynthesizer_STS_getSynthesisVoiceMatching_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_error_impl(&dword_272850000, v7, OS_LOG_TYPE_ERROR, "Unable to get synthesis voice, error %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(VSVoiceAsset);
    v9 = [v5 language];
    v13 = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [(VSVoiceAsset *)v8 setLanguages:v10];

    v11 = [v5 name];
    [(VSVoiceAsset *)v8 setName:v11];

    -[VSVoiceAsset setFootprint:](v8, "setFootprint:", [v5 footprint]);
    -[VSVoiceAsset setType:](v8, "setType:", [v5 type]);
    -[VSVoiceAsset setGender:](v8, "setGender:", [v5 gender]);
    (*(*(a1 + 32) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)STS_downloadedVoicesMatching:(id)matching reply:(id)reply
{
  replyCopy = reply;
  proxySession = self->_proxySession;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__VSSpeechSynthesizer_STS_downloadedVoicesMatching_reply___block_invoke;
  v9[3] = &unk_279E4F3B8;
  v10 = replyCopy;
  v8 = replyCopy;
  [(SiriTTSDaemonSession *)proxySession downloadedVoicesMatching:matching reply:v9];
}

void __58__VSSpeechSynthesizer_STS_downloadedVoicesMatching_reply___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = objc_alloc_init(VSVoiceAsset);
        v10 = [v8 language];
        v20 = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
        [(VSVoiceAsset *)v9 setLanguages:v11];

        v12 = [v8 name];
        [(VSVoiceAsset *)v9 setName:v12];

        -[VSVoiceAsset setType:](v9, "setType:", [v8 type]);
        -[VSVoiceAsset setFootprint:](v9, "setFootprint:", [v8 footprint]);
        -[VSVoiceAsset setGender:](v9, "setGender:", [v8 gender]);
        [(VSAssetBase *)v9 setStorage:3];
        [v3 addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 32) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

- (void)STS_subscribedVoicesWithClientID:(id)d reply:(id)reply
{
  replyCopy = reply;
  proxySession = self->_proxySession;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__VSSpeechSynthesizer_STS_subscribedVoicesWithClientID_reply___block_invoke;
  v9[3] = &unk_279E4F3B8;
  v10 = replyCopy;
  v8 = replyCopy;
  [(SiriTTSDaemonSession *)proxySession subscribedVoicesWithClientId:d reply:v9];
}

void __62__VSSpeechSynthesizer_STS_subscribedVoicesWithClientID_reply___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = objc_alloc_init(VSVoiceAsset);
        v10 = [v8 voice];
        v11 = [v10 language];
        v29 = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
        [(VSVoiceAsset *)v9 setLanguages:v12];

        v13 = [v8 voice];
        v14 = [v13 name];
        [(VSVoiceAsset *)v9 setName:v14];

        v15 = [v8 voice];
        -[VSVoiceAsset setType:](v9, "setType:", [v15 type]);

        v16 = [v8 voice];
        -[VSVoiceAsset setFootprint:](v9, "setFootprint:", [v16 footprint]);

        v17 = [v8 voice];
        -[VSVoiceAsset setGender:](v9, "setGender:", [v17 gender]);

        v18 = [VSVoiceSubscription alloc];
        v19 = [v8 clientId];
        v20 = [v8 accessoryId];
        v21 = [(VSVoiceSubscription *)v18 initWithClient:v19 accessory:v20 voice:v9];

        [v3 addObject:v21];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 32) + 16))();
  v22 = *MEMORY[0x277D85DE8];
}

- (void)STS_subscribedVoices:(id)voices
{
  voicesCopy = voices;
  proxySession = self->_proxySession;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__VSSpeechSynthesizer_STS_subscribedVoices___block_invoke;
  v7[3] = &unk_279E4F3B8;
  v8 = voicesCopy;
  v6 = voicesCopy;
  [(SiriTTSDaemonSession *)proxySession subscribedVoicesWithReply:v7];
}

void __44__VSSpeechSynthesizer_STS_subscribedVoices___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
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
        v9 = objc_alloc_init(VSVoiceAsset);
        v10 = [v8 voice];
        v11 = [v10 language];
        v24 = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
        [(VSVoiceAsset *)v9 setLanguages:v12];

        v13 = [v8 voice];
        v14 = [v13 name];
        [(VSVoiceAsset *)v9 setName:v14];

        v15 = [v8 voice];
        -[VSVoiceAsset setType:](v9, "setType:", [v15 type]);

        v16 = [v8 voice];
        -[VSVoiceAsset setFootprint:](v9, "setFootprint:", [v16 footprint]);

        [v3 addObject:v9];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 32) + 16))();
  v17 = *MEMORY[0x277D85DE8];
}

- (void)STS_subscribeVoices:(id)voices
{
  v23 = *MEMORY[0x277D85DE8];
  voicesCopy = voices;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(voicesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = voicesCopy;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = objc_alloc(MEMORY[0x277D61470]);
        languages = [v9 languages];
        firstObject = [languages firstObject];
        name = [v9 name];
        v14 = [v10 initWithLanguage:firstObject name:name];

        [v14 setType:{objc_msgSend(v9, "type")}];
        [v14 setFootprint:{objc_msgSend(v9, "footprint")}];
        [v4 addObject:v14];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [(SiriTTSDaemonSession *)self->_proxySession subscribeWithVoices:v4 reply:&__block_literal_global_129];
  v15 = *MEMORY[0x277D85DE8];
}

void __43__VSSpeechSynthesizer_STS_subscribeVoices___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_272850000, v3, OS_LOG_TYPE_ERROR, "Unable to subscribe voice, error %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)STS_queryPhaticCapabilityWithRequest:(id)request reply:(id)reply
{
  replyCopy = reply;
  v7 = MEMORY[0x277D61470];
  requestCopy = request;
  v9 = [v7 alloc];
  languageCode = [requestCopy languageCode];
  voiceName = [requestCopy voiceName];
  v12 = [v9 initWithLanguage:languageCode name:voiceName];

  [v12 setType:{objc_msgSend(requestCopy, "voiceType")}];
  footprint = [requestCopy footprint];

  [v12 setFootprint:footprint];
  proxySession = self->_proxySession;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__VSSpeechSynthesizer_STS_queryPhaticCapabilityWithRequest_reply___block_invoke;
  v16[3] = &unk_279E4F390;
  v17 = replyCopy;
  v15 = replyCopy;
  [(SiriTTSDaemonSession *)proxySession queryPhaticCapabilityWithVoice:v12 reply:v16];
}

- (BOOL)STS_isSpeaking
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__VSSpeechSynthesizer_STS_isSpeaking__block_invoke;
  v5[3] = &unk_279E4F488;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__VSSpeechSynthesizer_STS_isSpeaking__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__VSSpeechSynthesizer_STS_isSpeaking__block_invoke_2;
  v3[3] = &unk_279E4F8F0;
  v3[4] = *(a1 + 40);
  return [v1 isSpeaking:v3];
}

- (void)STS_cancelAudioRequest:(id)request
{
  v12 = *MEMORY[0x277D85DE8];
  stsRequestMapping = self->_stsRequestMapping;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(request, "requestCreatedTimestamp")}];
  v6 = [(NSMutableDictionary *)stsRequestMapping objectForKeyedSubscript:v5];

  if (v6)
  {
    [(SiriTTSDaemonSession *)self->_proxySession cancelWithRequest:v6];
  }

  else
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      clientBundleIdentifier = self->_clientBundleIdentifier;
      v10 = 138543362;
      v11 = clientBundleIdentifier;
      _os_log_impl(&dword_272850000, v7, OS_LOG_TYPE_DEFAULT, "Cancel #PresynthesizedAudioRequest from client %{public}@ was ignored, no request to stop", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)STS_cancelRequest:(id)request
{
  stsRequestMapping = self->_stsRequestMapping;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(request, "requestCreatedTimestamp")}];
  v7 = [(NSMutableDictionary *)stsRequestMapping objectForKeyedSubscript:v5];

  v6 = v7;
  if (v7)
  {
    [(SiriTTSDaemonSession *)self->_proxySession cancelWithRequest:v7];
    v6 = v7;
  }
}

- (id)STS_signalInlineStreaming:(id)streaming
{
  v4 = MEMORY[0x277D61418];
  streamingCopy = streaming;
  v6 = [v4 alloc];
  text = [streamingCopy text];
  identifier = [streamingCopy identifier];

  v9 = [v6 initWithText:text identifier:identifier];
  [(SiriTTSDaemonSession *)self->_proxySession signalWithInlineStreaming:v9];

  return 0;
}

- (void)STS_textToPhonemesWithRequest:(id)request phonemeSystem:(int64_t)system completion:(id)completion
{
  completionCopy = completion;
  v9 = MEMORY[0x277D61470];
  requestCopy = request;
  v11 = [v9 alloc];
  languageCode = [requestCopy languageCode];
  voiceName = [requestCopy voiceName];
  v14 = [v11 initWithLanguage:languageCode name:voiceName];

  [v14 setType:{objc_msgSend(requestCopy, "voiceType")}];
  [v14 setFootprint:{objc_msgSend(requestCopy, "footprint")}];
  [v14 setGender:{objc_msgSend(requestCopy, "gender")}];
  v15 = objc_alloc(MEMORY[0x277D61430]);
  text = [requestCopy text];

  v17 = [v15 initWithText:text voice:v14 phonemeSystem:system];
  proxySession = self->_proxySession;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__VSSpeechSynthesizer_STS_textToPhonemesWithRequest_phonemeSystem_completion___block_invoke;
  v20[3] = &unk_279E4F368;
  v21 = completionCopy;
  v19 = completionCopy;
  [(SiriTTSDaemonSession *)proxySession textToPhonemeWithRequest:v17 didFinish:v20];
}

uint64_t __78__VSSpeechSynthesizer_STS_textToPhonemesWithRequest_phonemeSystem_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)STS_estimateDurationOfRequest:(id)request completion:(id)completion
{
  v6 = MEMORY[0x277D61470];
  completionCopy = completion;
  requestCopy = request;
  v9 = [v6 alloc];
  languageCode = [requestCopy languageCode];
  voiceName = [requestCopy voiceName];
  v15 = [v9 initWithLanguage:languageCode name:voiceName];

  v12 = objc_alloc(MEMORY[0x277D61460]);
  text = [requestCopy text];

  v14 = [v12 initWithText:text voice:v15];
  [(SiriTTSDaemonSession *)self->_proxySession estimateDurationWithRequest:v14 didFinish:completionCopy];
}

- (double)STS_estimateDurationOfRequest:(id)request
{
  v3 = MEMORY[0x277D61470];
  requestCopy = request;
  v5 = [v3 alloc];
  languageCode = [requestCopy languageCode];
  voiceName = [requestCopy voiceName];
  v8 = [v5 initWithLanguage:languageCode name:voiceName];

  v9 = objc_alloc(MEMORY[0x277D61460]);
  text = [requestCopy text];

  v11 = [v9 initWithText:text voice:v8];
  [MEMORY[0x277D61408] roughEstimationWithRequest:v11];
  v13 = v12;

  return v13;
}

- (id)STS_startSpeakingAudioRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(MEMORY[0x277D613D8]);
  audioData = [requestCopy audioData];
  [v5 setAudioData:audioData];

  if (requestCopy)
  {
    [requestCopy decoderStreamDescription];
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
  }

  v26[0] = v28;
  v26[1] = v29;
  v27 = v30;
  [v5 setAsbd:v26];
  v7 = [objc_alloc(MEMORY[0x277D613F0]) initWithAudio:v5];
  [v7 setAudioSessionId:{objc_msgSend(requestCopy, "audioSessionID")}];
  [v7 setImmediate:{objc_msgSend(requestCopy, "enqueue") ^ 1}];
  siriRequestId = [requestCopy siriRequestId];
  [v7 setSiriRequestId:siriRequestId];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __53__VSSpeechSynthesizer_STS_startSpeakingAudioRequest___block_invoke;
  v24[3] = &unk_279E4F808;
  v24[4] = self;
  v9 = requestCopy;
  v25 = v9;
  [v7 setDidStartSpeaking:v24];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__VSSpeechSynthesizer_STS_startSpeakingAudioRequest___block_invoke_3;
  v22[3] = &unk_279E4F340;
  v22[4] = self;
  v10 = v9;
  v23 = v10;
  [v7 setDidReportInstrument:v22];
  proxySession = self->_proxySession;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __53__VSSpeechSynthesizer_STS_startSpeakingAudioRequest___block_invoke_4;
  v19 = &unk_279E4F278;
  selfCopy = self;
  v21 = v10;
  v12 = v10;
  [(SiriTTSDaemonSession *)proxySession speakWithAudioRequest:v7 didFinish:&v16];
  [v12 setRequestCreatedTimestamp:{mach_absolute_time(), v16, v17, v18, v19, selfCopy}];
  stsRequestMapping = self->_stsRequestMapping;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "requestCreatedTimestamp")}];
  [(NSMutableDictionary *)stsRequestMapping setObject:v7 forKeyedSubscript:v14];

  return 0;
}

void __53__VSSpeechSynthesizer_STS_startSpeakingAudioRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(v5 + 24);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__VSSpeechSynthesizer_STS_startSpeakingAudioRequest___block_invoke_2;
    v7[3] = &unk_279E4F808;
    v7[4] = v5;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

void __53__VSSpeechSynthesizer_STS_startSpeakingAudioRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [VSInstrumentMetrics vs_metricsFromSTSMetrics:v7];
    v6 = [*(a1 + 32) delegate];
    [v6 speechSynthesizer:*(a1 + 32) didFinishPresynthesizedAudioRequest:*(a1 + 40) withInstrumentMetrics:v5 error:0];
  }
}

void __53__VSSpeechSynthesizer_STS_startSpeakingAudioRequest___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = [v6 errorFromSTSError:?];
    [v5 speechSynthesizer:v6 didStopPresynthesizedAudioRequest:v7 atEnd:v11 == 0 error:v8];
  }

  v9 = [*(a1 + 32) stsRequestMapping];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 40), "requestCreatedTimestamp")}];
  [v9 setObject:0 forKeyedSubscript:v10];
}

void __53__VSSpeechSynthesizer_STS_startSpeakingAudioRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 speechSynthesizer:*(a1 + 32) didStartPresynthesizedAudioRequest:*(a1 + 40)];
}

- (id)STS_startSpeakingRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc(MEMORY[0x277D61470]);
  languageCode = [requestCopy languageCode];
  voiceName = [requestCopy voiceName];
  v8 = [v5 initWithLanguage:languageCode name:voiceName];

  [v8 setType:{objc_msgSend(requestCopy, "voiceType")}];
  [v8 setFootprint:{objc_msgSend(requestCopy, "footprint")}];
  [v8 setGender:{objc_msgSend(requestCopy, "gender")}];
  v9 = objc_alloc(MEMORY[0x277D61450]);
  text = [requestCopy text];
  v11 = [v9 initWithText:text voice:v8];

  [v11 setPrivacySensitive:{objc_msgSend(requestCopy, "canUseServerTTS") ^ 1}];
  siriRequestId = [requestCopy siriRequestId];
  [v11 setSiriRequestId:siriRequestId];

  [v11 setImmediate:{objc_msgSend(requestCopy, "shouldWaitCurrentSpeaking") ^ 1}];
  [v11 setAudioSessionId:{objc_msgSend(requestCopy, "audioSessionID")}];
  contextInfo = [requestCopy contextInfo];
  [v11 setContextInfo:contextInfo];

  [requestCopy rate];
  *&v14 = v14;
  [v11 setRate:v14];
  [requestCopy volume];
  *&v15 = v15;
  [v11 setVolume:v15];
  [requestCopy pitch];
  *&v16 = v16;
  [v11 setPitch:v16];
  [v11 setDisableCompactVoice:{objc_msgSend(requestCopy, "disableCompactVoiceFallback")}];
  [v11 setSynthesisProfile:{objc_msgSend(requestCopy, "powerProfile")}];
  outputPath = [requestCopy outputPath];
  [v11 setOutputPath:outputPath];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __48__VSSpeechSynthesizer_STS_startSpeakingRequest___block_invoke;
  v36[3] = &unk_279E4F808;
  v36[4] = self;
  v18 = requestCopy;
  v37 = v18;
  [v11 setDidStartSpeaking:v36];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __48__VSSpeechSynthesizer_STS_startSpeakingRequest___block_invoke_2;
  v34[3] = &unk_279E4F340;
  v34[4] = self;
  v19 = v18;
  v35 = v19;
  [v11 setDidReportInstrument:v34];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __48__VSSpeechSynthesizer_STS_startSpeakingRequest___block_invoke_3;
  v32[3] = &unk_279E4F2F0;
  v32[4] = self;
  v20 = v19;
  v33 = v20;
  [v11 setDidGenerateWordTimings:v32];
  proxySession = self->_proxySession;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __48__VSSpeechSynthesizer_STS_startSpeakingRequest___block_invoke_4;
  v29 = &unk_279E4F278;
  selfCopy = self;
  v31 = v20;
  v22 = v20;
  [(SiriTTSDaemonSession *)proxySession speakWithSpeechRequest:v11 didFinish:&v26];
  [v22 setRequestCreatedTimestamp:{mach_absolute_time(), v26, v27, v28, v29, selfCopy}];
  stsRequestMapping = self->_stsRequestMapping;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v22, "requestCreatedTimestamp")}];
  [(NSMutableDictionary *)stsRequestMapping setObject:v11 forKeyedSubscript:v24];

  return 0;
}

void __48__VSSpeechSynthesizer_STS_startSpeakingRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 speechSynthesizer:*(a1 + 32) didStartSpeakingRequest:*(a1 + 40)];
  }
}

void __48__VSSpeechSynthesizer_STS_startSpeakingRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [VSInstrumentMetrics vs_metricsFromSTSMetrics:v7];
    [v5 setIsSpeechRequest:1];
    v6 = [*(a1 + 32) delegate];
    [v6 speechSynthesizer:*(a1 + 32) didFinishSpeakingRequest:*(a1 + 40) withInstrumentMetrics:v5];
  }
}

void __48__VSSpeechSynthesizer_STS_startSpeakingRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          v13 = objc_alloc_init(VSSpeechWordTimingInfo);
          [v12 startTime];
          [(VSSpeechWordTimingInfo *)v13 setStartTime:?];
          v14 = [v12 textRange];
          [(VSSpeechWordTimingInfo *)v13 setTextRange:v14, v15];
          [v6 addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v16 = [*(a1 + 32) delegate];
    [v16 speechSynthesizer:*(a1 + 32) withRequest:*(a1 + 40) didReceiveTimingInfo:v6];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __48__VSSpeechSynthesizer_STS_startSpeakingRequest___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = [v6 errorFromSTSError:?];
    [v5 speechSynthesizer:v6 didFinishSpeakingRequest:v7 successfully:v11 == 0 phonemesSpoken:0 withError:v8];
  }

  v9 = [*(a1 + 32) stsRequestMapping];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 40), "requestCreatedTimestamp")}];
  [v9 setObject:0 forKeyedSubscript:v10];
}

- (id)STS_startSynthesizingRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc(MEMORY[0x277D61470]);
  languageCode = [requestCopy languageCode];
  voiceName = [requestCopy voiceName];
  v8 = [v5 initWithLanguage:languageCode name:voiceName];

  [v8 setType:{objc_msgSend(requestCopy, "voiceType")}];
  [v8 setFootprint:{objc_msgSend(requestCopy, "footprint")}];
  [v8 setGender:{objc_msgSend(requestCopy, "gender")}];
  v9 = objc_alloc(MEMORY[0x277D61460]);
  text = [requestCopy text];
  v11 = [v9 initWithText:text voice:v8];

  [v11 setPrivacySensitive:{objc_msgSend(requestCopy, "canUseServerTTS") ^ 1}];
  contextInfo = [requestCopy contextInfo];
  [v11 setContextInfo:contextInfo];

  [requestCopy rate];
  *&v13 = v13;
  [v11 setRate:v13];
  [requestCopy volume];
  *&v14 = v14;
  [v11 setVolume:v14];
  [requestCopy pitch];
  *&v15 = v15;
  [v11 setPitch:v15];
  [v11 setDisableCompactVoice:{objc_msgSend(requestCopy, "disableCompactVoiceFallback")}];
  [v11 setSynthesisProfile:{objc_msgSend(requestCopy, "powerProfile")}];
  outputPath = [requestCopy outputPath];
  [v11 setOutputPath:outputPath];

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__2748;
  v36[4] = __Block_byref_object_dispose__2749;
  v37 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __52__VSSpeechSynthesizer_STS_startSynthesizingRequest___block_invoke;
  v35[3] = &unk_279E4F2A0;
  v35[4] = v36;
  [v11 setDidReportInstrument:v35];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __52__VSSpeechSynthesizer_STS_startSynthesizingRequest___block_invoke_2;
  v33[3] = &unk_279E4F2C8;
  v33[4] = self;
  v17 = requestCopy;
  v34 = v17;
  [v11 setDidGenerateAudio:v33];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __52__VSSpeechSynthesizer_STS_startSynthesizingRequest___block_invoke_3;
  v31[3] = &unk_279E4F2F0;
  v31[4] = self;
  v18 = v17;
  v32 = v18;
  [v11 setDidGenerateWordTimings:v31];
  proxySession = self->_proxySession;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __52__VSSpeechSynthesizer_STS_startSynthesizingRequest___block_invoke_4;
  v27 = &unk_279E4F318;
  selfCopy = self;
  v20 = v18;
  v29 = v20;
  v30 = v36;
  [(SiriTTSDaemonSession *)proxySession synthesizeWithRequest:v11 didFinish:&v24];
  [v20 setRequestCreatedTimestamp:{mach_absolute_time(), v24, v25, v26, v27, selfCopy}];
  stsRequestMapping = self->_stsRequestMapping;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v20, "requestCreatedTimestamp")}];
  [(NSMutableDictionary *)stsRequestMapping setObject:v11 forKeyedSubscript:v22];

  _Block_object_dispose(v36, 8);
  return 0;
}

void __52__VSSpeechSynthesizer_STS_startSynthesizingRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [VSInstrumentMetrics vs_metricsFromSTSMetrics:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __52__VSSpeechSynthesizer_STS_startSynthesizingRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_alloc_init(VSAudioData);
    if (v3)
    {
      [v3 asbd];
    }

    else
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
    }

    v10[0] = v12;
    v10[1] = v13;
    v11 = v14;
    [(VSAudioData *)v6 setAsbd:v10];
    v7 = [v3 audioData];
    [(VSAudioData *)v6 setAudioData:v7];

    -[VSAudioData setPacketCount:](v6, "setPacketCount:", [v3 packetCount]);
    v8 = [v3 packetDescriptions];
    [(VSAudioData *)v6 setPacketDescriptions:v8];

    v9 = [*(a1 + 32) delegate];
    [v9 speechSynthesizer:*(a1 + 32) withSynthesisRequest:*(a1 + 40) didGenerateAudioChunk:v6];
  }
}

void __52__VSSpeechSynthesizer_STS_startSynthesizingRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          v13 = objc_alloc_init(VSSpeechWordTimingInfo);
          [v12 startTime];
          [(VSSpeechWordTimingInfo *)v13 setStartTime:?];
          v14 = [v12 textRange];
          [(VSSpeechWordTimingInfo *)v13 setTextRange:v14, v15];
          [v6 addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v16 = [*(a1 + 32) delegate];
    [v16 speechSynthesizer:*(a1 + 32) withRequest:*(a1 + 40) didReceiveTimingInfo:v6];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __52__VSSpeechSynthesizer_STS_startSynthesizingRequest___block_invoke_4(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v9 = [v6 errorFromSTSError:v12];
    [v5 speechSynthesizer:v6 didFinishSynthesisRequest:v7 withInstrumentMetrics:v8 error:v9];
  }

  v10 = [*(a1 + 32) stsRequestMapping];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 40), "requestCreatedTimestamp")}];
  [v10 setObject:0 forKeyedSubscript:v11];
}

- (id)STS_prewarmRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc(MEMORY[0x277D61470]);
  languageCode = [requestCopy languageCode];
  voiceName = [requestCopy voiceName];
  v8 = [v5 initWithLanguage:languageCode name:voiceName];

  [v8 setType:{objc_msgSend(requestCopy, "voiceType")}];
  [v8 setFootprint:{objc_msgSend(requestCopy, "footprint")}];
  [v8 setGender:{objc_msgSend(requestCopy, "gender")}];
  v9 = objc_alloc(MEMORY[0x277D61460]);
  text = [requestCopy text];
  v11 = [v9 initWithText:text voice:v8];

  [v11 setPrivacySensitive:{objc_msgSend(requestCopy, "canUseServerTTS") ^ 1}];
  [v11 setDisableCompactVoice:{objc_msgSend(requestCopy, "disableCompactVoiceFallback")}];
  [v11 setSynthesisProfile:{objc_msgSend(requestCopy, "powerProfile")}];
  proxySession = self->_proxySession;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42__VSSpeechSynthesizer_STS_prewarmRequest___block_invoke;
  v15[3] = &unk_279E4F278;
  v15[4] = self;
  v16 = requestCopy;
  v13 = requestCopy;
  [(SiriTTSDaemonSession *)proxySession prewarmWithRequest:v11 didFinish:v15];

  return 0;
}

void __42__VSSpeechSynthesizer_STS_prewarmRequest___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 speechSynthesizer:*(a1 + 32) didFinishPrewarmRequest:*(a1 + 40) withError:v6];
  }
}

- (id)errorFromSTSError:(id)error
{
  if (!error)
  {
    v7 = 0;
    goto LABEL_31;
  }

  v3 = MEMORY[0x277CCA9B8];
  errorCopy = error;
  code = [errorCopy code];
  v6 = code;
  if (code > 299)
  {
    if (code > 399)
    {
      switch(code)
      {
        case 400:
          v6 = 700;
          goto LABEL_30;
        case 401:
          v6 = 701;
          goto LABEL_30;
        case 402:
          v6 = 702;
          goto LABEL_30;
      }
    }

    else
    {
      switch(code)
      {
        case 300:
          v6 = 601;
          goto LABEL_30;
        case 301:
          v6 = 602;
          goto LABEL_30;
        case 302:
          v6 = 603;
          goto LABEL_30;
      }
    }

    goto LABEL_29;
  }

  if (code > 100)
  {
    switch(code)
    {
      case 101:
        v6 = 402;
        goto LABEL_30;
      case 200:
        v6 = 450;
        goto LABEL_30;
      case 299:
        v6 = 452;
        goto LABEL_30;
    }

    goto LABEL_29;
  }

  if ((code + 1) >= 2)
  {
    if (code == 1)
    {
      v6 = 400;
      goto LABEL_30;
    }

    if (code == 100)
    {
      v6 = 401;
      goto LABEL_30;
    }

LABEL_29:
    v6 = -1;
  }

LABEL_30:
  userInfo = [errorCopy userInfo];

  v7 = [v3 errorWithDomain:@"VoiceServicesErrorDomain" code:v6 userInfo:userInfo];

LABEL_31:

  return v7;
}

- (VSSpeechSynthesizer)initWithAccessoryID:(id)d
{
  v49 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v44.receiver = self;
  v44.super_class = VSSpeechSynthesizer;
  v5 = [(VSSpeechSynthesizer *)&v44 init];
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = dispatch_queue_create("VSSpeechSynthesizer", 0);
  v7 = *(v5 + 2);
  *(v5 + 2) = v6;

  v8 = dispatch_queue_create("VSSpeechSynthesizerCallbackThread", 0);
  v9 = *(v5 + 3);
  *(v5 + 3) = v8;

  dispatch_set_target_queue(*(v5 + 3), MEMORY[0x277D85CD0]);
  __asm { FMOV            V0.2S, #1.0 }

  *(v5 + 52) = _D0;
  *(v5 + 15) = 1061997773;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  if (firstObject)
  {
    v18 = firstObject;
  }

  else
  {
    v18 = @"en-US";
  }

  v19 = [VSSpeechSynthesizerPreference fallbackLanguageForLanguage:v18];
  if (([(__CFString *)firstObject isEqualToString:v19]& 1) == 0)
  {
    v20 = VSGetLogDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v46 = firstObject;
      v47 = 2114;
      v48 = v19;
      _os_log_impl(&dword_272850000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ is not TTS language, VSSpeechSynthesizer fallback to %{public}@", buf, 0x16u);
    }
  }

  objc_storeStrong(v5 + 10, v19);
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle2 bundleIdentifier];
  v23 = *(v5 + 1);
  *(v5 + 1) = bundleIdentifier;

  v24 = [*(v5 + 1) isEqualToString:@"com.apple.assistantd"];
  v25 = *(v5 + 1);
  if (v24)
  {
    v26 = @"com.apple.AssistantServices";
LABEL_13:
    *(v5 + 1) = v26;

    goto LABEL_14;
  }

  if ([v25 isEqualToString:@"com.apple.accessibility.axassetsd"])
  {
    v25 = *(v5 + 1);
    v26 = @"com.apple.accessibility.AccessibilityUIServer";
    goto LABEL_13;
  }

LABEL_14:
  v27 = [dCopy copy];
  v28 = *(v5 + 11);
  *(v5 + 11) = v27;

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v30 = MEMORY[0x277CCACA8];
  processName = [processInfo processName];
  v32 = [v30 stringWithFormat:@"VSSpeechSynthesizer_%p@%@_%d", v5, processName, objc_msgSend(processInfo, "processIdentifier")];
  v33 = *(v5 + 5);
  *(v5 + 5) = v32;

  v34 = objc_alloc_init(VSSpeechConnection);
  v35 = *(v5 + 4);
  *(v5 + 4) = v34;

  [*(v5 + 4) setIdentifier:*(v5 + 5)];
  [*(v5 + 4) setDelegate:v5];
  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v37 = *(v5 + 12);
  *(v5 + 12) = v36;

  if (+[VSFeatureFlags useSiriTTSService])
  {
    if (*(v5 + 11))
    {
      v38 = [objc_alloc(MEMORY[0x277D61400]) initWithAccessoryId:dCopy];
    }

    else
    {
      v38 = objc_alloc_init(MEMORY[0x277D61400]);
    }

    v39 = *(v5 + 13);
    *(v5 + 13) = v38;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v41 = *(v5 + 14);
    *(v5 + 14) = dictionary;
  }

LABEL_20:
  v42 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)stopPlayingVoicePreview
{
  proxySession = self->_proxySession;
  isPlayingPreview = [(VSSpeechSynthesizer *)self isPlayingPreview];
  [(SiriTTSDaemonSession *)proxySession cancelWithRequest:isPlayingPreview];
}

- (void)playVoicePreviewForLanguageCode:(id)code voiceName:(id)name previewType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v11 = MEMORY[0x277D61470];
  nameCopy = name;
  codeCopy = code;
  v14 = [[v11 alloc] initWithLanguage:codeCopy name:nameCopy];

  v15 = [objc_alloc(MEMORY[0x277D61440]) initWithVoice:v14 previewType:type];
  [(VSSpeechSynthesizer *)self setIsPlayingPreview:v15];
  proxySession = self->_proxySession;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__VSSpeechSynthesizer_playVoicePreviewForLanguageCode_voiceName_previewType_completion___block_invoke;
  v18[3] = &unk_279E4F250;
  v18[4] = self;
  v19 = completionCopy;
  v17 = completionCopy;
  [(SiriTTSDaemonSession *)proxySession speakWithPreviewRequest:v15 didFinish:v18];
}

uint64_t __88__VSSpeechSynthesizer_playVoicePreviewForLanguageCode_voiceName_previewType_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsPlayingPreview:0];
  v2 = *(*(a1 + 40) + 16);
  v3.n128_u64[0] = 0;

  return v2(v3);
}

+ (id)characterClassCountForUtterance:(id)utterance language:(id)language
{
  v33[6] = *MEMORY[0x277D85DE8];
  v4 = [utterance vs_textifyEmojiWithLanguage:language];
  [v4 vs_measurePauses];
  v6 = v5;
  vs_countPhoneticSyllables = [v4 vs_countPhoneticSyllables];
  vs_removePhonetics = [v4 vs_removePhonetics];

  vs_removeSpeechTags = [vs_removePhonetics vs_removeSpeechTags];

  v9 = [vs_removeSpeechTags length];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v32 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = [vs_removeSpeechTags characterAtIndex:v11];
      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v17 = [whitespaceCharacterSet characterIsMember:v15];

      if ((v17 & 1) == 0)
      {
        punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
        v19 = [punctuationCharacterSet characterIsMember:v15];

        if (v19)
        {
          v12 = (v12 + 1);
        }

        else
        {
          decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
          v21 = [decimalDigitCharacterSet characterIsMember:v15];

          if (v21)
          {
            v14 = (v14 + 1);
          }

          else if ([MEMORY[0x277CCACA8] vs_isCJKCharacter:v15])
          {
            v13 = (v13 + 1);
          }

          else
          {
            ++v32;
          }
        }
      }

      ++v11;
    }

    while (v10 != v11);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v32 = 0;
    v12 = 0;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v6 * 1000.0)];
  v33[0] = v22;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:vs_countPhoneticSyllables];
  v33[1] = v23;
  v24 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  v33[2] = v24;
  v25 = [MEMORY[0x277CCABB0] numberWithInt:v14];
  v33[3] = v25;
  v26 = [MEMORY[0x277CCABB0] numberWithInt:v13];
  v33[4] = v26;
  v27 = [MEMORY[0x277CCABB0] numberWithInt:v32];
  v33[5] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:6];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (VSSpeechSynthesizer)sharedInstance
{
  if (sharedInstance_onceToken_2821 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2821, &__block_literal_global_2822);
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

void __37__VSSpeechSynthesizer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VSSpeechSynthesizer);
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;
}

+ (void)stopPlayingVoicePreview
{
  sharedInstance = [self sharedInstance];
  [sharedInstance stopPlayingVoicePreview];
}

+ (BOOL)playVoicePreviewForLanguageCode:(id)code voiceName:(id)name previewType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  codeCopy = code;
  sharedInstance = [self sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__VSSpeechSynthesizer_playVoicePreviewForLanguageCode_voiceName_previewType_completion___block_invoke;
  v16[3] = &unk_279E4F228;
  v17 = completionCopy;
  v14 = completionCopy;
  [sharedInstance playVoicePreviewForLanguageCode:codeCopy voiceName:nameCopy previewType:type completion:v16];

  return 1;
}

+ (id)validateAudioCachingRequest:(id)request
{
  v30[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v4 = requestCopy;
  if (!requestCopy)
  {
    v9 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"Request is nil.";
    v10 = MEMORY[0x277CBEAC0];
    v11 = v30;
    v12 = &v29;
LABEL_5:
    v6 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    v7 = v9;
    v8 = 100;
    goto LABEL_6;
  }

  if ([requestCopy requestCreatedTimestamp])
  {
    v5 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28 = @"Request has been used before. Please make a new copy of it.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v7 = v5;
    v8 = 101;
LABEL_6:
    v13 = [v7 errorWithDomain:@"VoiceServicesErrorDomain" code:v8 userInfo:v6];

    goto LABEL_7;
  }

  identifier = [v4 identifier];

  if (identifier)
  {
    text = [v4 text];
    v18 = [text length];

    if (!v18)
    {
      v9 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA450];
      v26 = @"Missing text of inline streaming request.";
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v26;
      v12 = &v25;
      goto LABEL_5;
    }
  }

  else
  {
    audioData = [v4 audioData];
    v20 = [audioData length];

    if (!v20)
    {
      v9 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA450];
      v22 = @"Audio caching request must be either inline streaming or audio request.";
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v22;
      v12 = &v21;
      goto LABEL_5;
    }

    if (([v4 hasValidAudio] & 1) == 0)
    {
      v9 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v24 = @"Invalid audio request. Audio is invalid.";
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v24;
      v12 = &v23;
      goto LABEL_5;
    }
  }

  v13 = 0;
LABEL_7:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)validateAudioRequest:(id)request
{
  v21[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v4 = requestCopy;
  if (!requestCopy)
  {
    v9 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"Request is nil.";
    v10 = MEMORY[0x277CBEAC0];
    v11 = v21;
    v12 = &v20;
LABEL_8:
    v6 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    v7 = v9;
    v8 = 100;
    goto LABEL_9;
  }

  if (![requestCopy requestCreatedTimestamp])
  {
    if ([v4 hasValidAudio])
    {
      v13 = 0;
      goto LABEL_10;
    }

    v9 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17 = @"Audio request has invalid audio data.";
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v17;
    v12 = &v16;
    goto LABEL_8;
  }

  v5 = MEMORY[0x277CCA9B8];
  v18 = *MEMORY[0x277CCA450];
  v19 = @"Request has been used before. Please make a new copy of it.";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v7 = v5;
  v8 = 101;
LABEL_9:
  v13 = [v7 errorWithDomain:@"VoiceServicesErrorDomain" code:v8 userInfo:v6];

LABEL_10:
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)validateRequest:(id)request
{
  v14[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [self validatePrewarmRequest:requestCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    text = [requestCopy text];

    if (text)
    {
      v7 = 0;
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      v14[0] = @"text is not set.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v7 = [v9 errorWithDomain:@"VoiceServicesErrorDomain" code:100 userInfo:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)validatePrewarmRequest:(id)request
{
  v22[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v4 = requestCopy;
  if (!requestCopy)
  {
    v10 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"Request is nil.";
    v11 = MEMORY[0x277CBEAC0];
    v12 = v22;
    v13 = &v21;
LABEL_7:
    v7 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
    v8 = v10;
    v9 = 100;
    goto LABEL_8;
  }

  languageCode = [requestCopy languageCode];

  if (!languageCode)
  {
    v10 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"language is not set.";
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v20;
    v13 = &v19;
    goto LABEL_7;
  }

  if ([v4 requestCreatedTimestamp])
  {
    v6 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18 = @"Request has been used before. Please make a new copy of it.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v8 = v6;
    v9 = 101;
LABEL_8:
    v14 = [v8 errorWithDomain:@"VoiceServicesErrorDomain" code:v9 userInfo:v7];

    goto LABEL_9;
  }

  v14 = 0;
LABEL_9:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)errorWithReason:(id)reason
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA470];
  v11[0] = reason;
  v4 = MEMORY[0x277CBEAC0];
  reasonCopy = reason;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"VSSpeechSynthesizer" code:0 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end