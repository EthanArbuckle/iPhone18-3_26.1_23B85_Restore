@interface SFSSServerTTSTask
+ (AudioStreamBasicDescription)audioStreamBasicDescription:(SEL)a3;
+ (id)createGrpcHeadersFromRequest:(id)a3;
+ (id)createOspreyRequestFromReqeust:(id)a3;
+ (id)flatPhonemeSequence:(id)a3;
+ (id)generateProsodyTransferConfig:(id)a3;
+ (id)generateResourceAssetFromResourceMetaInfo:(id)a3;
+ (id)generateVoiceAssetFromVoiceMetaInfo:(id)a3;
+ (int64_t)convertVoiceTypeToServerType:(int64_t)a3;
- (SFSSOspreyTTSClient)ospreyTTSClient;
- (SFSSServerTTSTask)initWithRequest:(id)a3;
- (void)cancelTask;
- (void)startTask:(id)a3;
@end

@implementation SFSSServerTTSTask

- (SFSSOspreyTTSClient)ospreyTTSClient
{
  WeakRetained = objc_loadWeakRetained(&self->_ospreyTTSClient);

  return WeakRetained;
}

- (void)cancelTask
{
  v2 = SFSSGetLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_269079000, v2, OS_LOG_TYPE_DEBUG, "Server Task cancelled.", v3, 2u);
  }
}

- (void)startTask:(id)a3
{
  v4 = a3;
  v5 = [(SFSpeechSynthesisTask *)self request];
  v6 = [SFSSServerTTSTask createOspreyRequestFromReqeust:v5];

  v7 = [(SFSpeechSynthesisTask *)self request];
  v8 = [SFSSServerTTSTask createGrpcHeadersFromRequest:v7];

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__353;
  v17[4] = __Block_byref_object_dispose__354;
  v18 = MEMORY[0x26D631550](v4);
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_ospreyTTSClient);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __31__SFSSServerTTSTask_startTask___block_invoke;
  v14[3] = &unk_279C4C1F0;
  objc_copyWeak(&v15, &location);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__SFSSServerTTSTask_startTask___block_invoke_19;
  v12[3] = &unk_279C4C218;
  objc_copyWeak(&v13, &location);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__SFSSServerTTSTask_startTask___block_invoke_23;
  v10[3] = &unk_279C4C260;
  objc_copyWeak(&v11, &location);
  v10[4] = v17;
  [WeakRetained streamTTS:v6 headers:v8 beginHandler:v14 chunkHandler:v12 endHandler:&__block_literal_global_355 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  _Block_object_dispose(v17, 8);
}

void __31__SFSSServerTTSTask_startTask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SFSSGetLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_269079000, v4, OS_LOG_TYPE_INFO, "Received streaming begin response.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v19 = 0;
  *buf = 0u;
  v18 = 0u;
  v6 = [v3 decoder_description];
  [SFSSServerTTSTask audioStreamBasicDescription:v6];

  v7 = [v3 meta_info];
  v8 = [v7 voice];
  v9 = [SFSSServerTTSTask generateVoiceAssetFromVoiceMetaInfo:v8];

  v10 = [v3 meta_info];
  v11 = [v10 resource];
  v12 = [SFSSServerTTSTask generateResourceAssetFromResourceMetaInfo:v11];

  [v3 streaming_playback_buffer_size_in_seconds];
  v14 = v13;

  v15[0] = *buf;
  v15[1] = v18;
  v16 = v19;
  [WeakRetained handleSynthesisBegin:0 asbd:v15 audioPlaybackBufferDuration:v9 voiceAsset:v12 resourceAsset:v14];
}

void __31__SFSSServerTTSTask_startTask___block_invoke_19(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SFSSGetLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v13[0] = 67109120;
    v13[1] = [v3 current_pkt_number];
    _os_log_debug_impl(&dword_269079000, v4, OS_LOG_TYPE_DEBUG, "Received streaming partial response. pkt_number=%d", v13, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v3 audio];
  [WeakRetained handleSynthesisChunks:v6];

  v7 = [WeakRetained request];
  v8 = [v7 returnFrontEndFeature];

  if (v8)
  {
    v9 = [v3 feature];
    v10 = [v9 phoneme_sequence];
    v11 = [SFSSServerTTSTask flatPhonemeSequence:v10];
    [WeakRetained handleSynthesisFrontendFeaturePhoneme:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __31__SFSSServerTTSTask_startTask___block_invoke_23(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleSynthesisEnd:v3];

  v5 = SFSSGetLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [WeakRetained error];
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_269079000, v5, OS_LOG_TYPE_INFO, "Server tts complete. error=%@", &v12, 0xCu);
  }

  v7 = *(*(*(a1 + 32) + 8) + 40);
  if (v7)
  {
    v8 = [WeakRetained error];
    (*(v7 + 16))(v7, v8);

    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __31__SFSSServerTTSTask_startTask___block_invoke_21(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = SFSSGetLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = [v2 total_pkt_number];
    _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "Received streaming end response. total_pkt=%d", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (SFSSServerTTSTask)initWithRequest:(id)a3
{
  v4 = a3;
  v5 = SFSSGetLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_269079000, v5, OS_LOG_TYPE_INFO, "Init server tts task.", buf, 2u);
  }

  v24.receiver = self;
  v24.super_class = SFSSServerTTSTask;
  v6 = [(SFSpeechSynthesisTask *)&v24 initWithRequest:v4];
  if (v6)
  {
    v7 = [v4 voice];
    v8 = [v7 voiceReleaseType];

    if (v8 == 6)
    {
      v9 = +[SFSSOspreyTTSClientFactory sharedInstance];
      v23 = [v4 voice];
      v10 = [v23 serverVoiceConfig];
      v11 = [v10 ospreyEndpointUrl];
      v12 = [v4 voice];
      v13 = [v12 serverVoiceConfig];
      v14 = [v13 useBlazar];
      v15 = [v4 voice];
      v16 = [v15 serverVoiceConfig];
      v17 = [v9 getOspreyClientByUrl:v11 useBlazar:v14 enableAuthentication:{objc_msgSend(v16, "enableAuthentication")}];
      objc_storeWeak(&v6->_ospreyTTSClient, v17);

      v18 = v23;
    }

    else
    {
      v19 = [v4 voice];
      v20 = [v19 voiceReleaseType];

      v9 = +[SFSSOspreyTTSClientFactory sharedInstance];
      v18 = +[SFSpeechSynthesisInternalSetting sharedInstance];
      v10 = [v4 voice];
      v11 = [v18 ospreyEndpointURLByType:{objc_msgSend(v10, "voiceReleaseType")}];
      if (v20 == 7)
      {
        [v9 getOspreyClientByUrl:v11 useBlazar:0 enableAuthentication:0];
      }

      else
      {
        [v9 getOspreyClientByUrl:v11];
      }
      v12 = ;
      objc_storeWeak(&v6->_ospreyTTSClient, v12);
    }

    v21 = [(SFSpeechSynthesisTask *)v6 instrumentMetrics];
    [v21 setSourceOfTTS:3];
  }

  return v6;
}

+ (id)flatPhonemeSequence:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v3;
  v22 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v22)
  {
    v21 = *v32;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v7 = [v6 word_phonemes];
        v8 = [v7 countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v28;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v28 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v27 + 1) + 8 * j);
              v23 = 0u;
              v24 = 0u;
              v25 = 0u;
              v26 = 0u;
              v13 = [v12 phonemes];
              v14 = [v13 countByEnumeratingWithState:&v23 objects:v35 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v24;
                do
                {
                  for (k = 0; k != v15; ++k)
                  {
                    if (*v24 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    [v4 addObject:*(*(&v23 + 1) + 8 * k)];
                  }

                  v15 = [v13 countByEnumeratingWithState:&v23 objects:v35 count:16];
                }

                while (v15);
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v27 objects:v36 count:16];
          }

          while (v9);
        }
      }

      v22 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v22);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (int64_t)convertVoiceTypeToServerType:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 3;
  }
}

+ (AudioStreamBasicDescription)audioStreamBasicDescription:(SEL)a3
{
  v5 = a4;
  retstr->mFormatID = [v5 format_id];
  [v5 sample_rate];
  retstr->mSampleRate = v6;
  retstr->mFormatFlags = [v5 format_flags];
  retstr->mBytesPerPacket = [v5 bytes_per_packet];
  retstr->mFramesPerPacket = [v5 frames_per_packet];
  retstr->mBytesPerFrame = [v5 bytes_per_frame];
  retstr->mChannelsPerFrame = [v5 channels_per_frame];
  retstr->mBitsPerChannel = [v5 bits_per_channel];
  v7 = [v5 reserved];

  retstr->mReserved = v7;
  return result;
}

+ (id)createGrpcHeadersFromRequest:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 devServiceType];
  if ([v4 length])
  {
    v9 = @"tts-dev-proxy-service-name";
    v5 = [v3 devServiceType];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)createOspreyRequestFromReqeust:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(QSSMutableStartTextToSpeechStreamingRequest);
  v5 = [v3 requestIdentifer];
  [(QSSMutableStartTextToSpeechStreamingRequest *)v4 setSession_id:v5];

  v6 = [v3 locale];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  [(QSSMutableStartTextToSpeechStreamingRequest *)v4 setLanguage:v7];

  v8 = [v3 gender];
  [(QSSMutableStartTextToSpeechStreamingRequest *)v4 setGender:v8];

  v9 = [v3 text];
  [(QSSMutableStartTextToSpeechStreamingRequest *)v4 setText:v9];

  [(QSSMutableStartTextToSpeechStreamingRequest *)v4 setAudio_type:1];
  [(QSSMutableStartTextToSpeechStreamingRequest *)v4 setEnable_word_timing_info:0];
  v10 = [v3 voiceName];
  [(QSSMutableStartTextToSpeechStreamingRequest *)v4 setVoice_name:v10];

  v11 = objc_alloc_init(QSSMutableTextToSpeechRequestMeta);
  v12 = [v3 clientBundleIdentifier];
  [(QSSMutableTextToSpeechRequestMeta *)v11 setApp_id:v12];

  [(QSSMutableTextToSpeechRequestMeta *)v11 setChannel_type:2];
  -[QSSMutableTextToSpeechRequestMeta setIs_synthesis:](v11, "setIs_synthesis:", [v3 type] == 1);
  [(QSSMutableStartTextToSpeechStreamingRequest *)v4 setMeta_info:v11];
  v13 = [v3 voice];
  -[QSSMutableStartTextToSpeechStreamingRequest setPreferred_voice_type:](v4, "setPreferred_voice_type:", +[SFSSServerTTSTask convertVoiceTypeToServerType:](SFSSServerTTSTask, "convertVoiceTypeToServerType:", [v13 voiceType]));

  v14 = objc_alloc_init(QSSMutableTTSRequestFeatureFlags);
  -[QSSMutableTTSRequestFeatureFlags setFe_feature:](v14, "setFe_feature:", [v3 returnFrontEndFeature]);
  -[QSSMutableTTSRequestFeatureFlags setPhoneset_type:](v14, "setPhoneset_type:", +[SFSSServerTTSTask convertPhoneSetTypeToServerPhoneSetType:](SFSSServerTTSTask, "convertPhoneSetTypeToServerPhoneSetType:", [v3 phoneSetType]));
  [(QSSMutableStartTextToSpeechStreamingRequest *)v4 setFeature_flags:v14];
  v15 = [SFSSServerTTSTask generateProsodyTransferConfig:v3];

  [(QSSMutableStartTextToSpeechStreamingRequest *)v4 setProsody_config:v15];

  return v4;
}

+ (id)generateProsodyTransferConfig:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(QSSMutableTextToSpeechRequestProsodyTransferConfig);
  v5 = objc_alloc_init(QSSMutableTextToSpeechSpeechFeatureInputWave);
  v6 = objc_alloc_init(QSSMutableTextToSpeechUserVoiceProfile);
  v7 = [v3 prosodyTransferData];
  v8 = [v7 userVoiceProfile];
  [v8 pitch_mean];
  [(QSSMutableTextToSpeechUserVoiceProfile *)v6 setPitch_mean:?];

  v9 = [v3 prosodyTransferData];
  v10 = [v9 userVoiceProfile];
  [v10 pitch_std];
  [(QSSMutableTextToSpeechUserVoiceProfile *)v6 setPitch_std:?];

  v11 = [v3 prosodyTransferData];
  v12 = [v11 userVoiceProfile];
  [v12 energy_mean];
  [(QSSMutableTextToSpeechUserVoiceProfile *)v6 setEnergy_mean:?];

  v13 = [v3 prosodyTransferData];
  v14 = [v13 userVoiceProfile];
  [v14 energy_std];
  [(QSSMutableTextToSpeechUserVoiceProfile *)v6 setEnergy_std:?];

  v15 = [v3 prosodyTransferData];
  v16 = [v15 userVoiceProfile];
  [v16 duration_mean];
  [(QSSMutableTextToSpeechUserVoiceProfile *)v6 setDuration_mean:?];

  v17 = [v3 prosodyTransferData];
  v18 = [v17 userVoiceProfile];
  [v18 duration_std];
  [(QSSMutableTextToSpeechUserVoiceProfile *)v6 setDuration_std:?];

  v19 = [v3 prosodyTransferData];
  v20 = [v19 waveData];
  [(QSSMutableTextToSpeechSpeechFeatureInputWave *)v5 setPcm_data:v20];

  v21 = [v3 prosodyTransferData];
  v22 = v21;
  if (v21)
  {
    [v21 asbd];
    v23 = *&v27;
  }

  else
  {
    v23 = 0;
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  [(QSSMutableTextToSpeechSpeechFeatureInputWave *)v5 setSample_rate:v23, v27, v28, v29];

  [(QSSMutableTextToSpeechRequestProsodyTransferConfig *)v4 setWave_data:v5];
  [(QSSMutableTextToSpeechRequestProsodyTransferConfig *)v4 setUser_voice_profile:v6];
  v24 = [v3 prosodyTransferData];
  v25 = [v24 userVoiceProfileUrl];
  [(QSSMutableTextToSpeechRequestProsodyTransferConfig *)v4 setUser_voice_profile_url:v25];

  return v4;
}

+ (id)generateResourceAssetFromResourceMetaInfo:(id)a3
{
  v3 = a3;
  v4 = [SFSSResourceAsset alloc];
  v5 = [v3 language];
  v6 = [v3 version];

  v7 = -[SFSSResourceAsset init:contentVersion:](v4, "init:contentVersion:", v5, [v6 integerValue]);

  return v7;
}

+ (id)generateVoiceAssetFromVoiceMetaInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 gender];
  v5 = [SFSpeechSynthesisUtils genderFromString:v4];

  v6 = [v3 quality];
  v7 = [SFSpeechSynthesisUtils footprintFromString:v6];

  v8 = [v3 type];
  v9 = [SFSpeechSynthesisUtils typeFromString:v8];

  v10 = [SFSSVoiceAsset alloc];
  v11 = [v3 language];
  v12 = [v3 name];
  v13 = [v3 version];

  v14 = -[SFSSVoiceAsset init:gender:name:type:footprint:contentVersion:](v10, "init:gender:name:type:footprint:contentVersion:", v11, v5, v12, v9, v7, [v13 integerValue]);

  return v14;
}

@end