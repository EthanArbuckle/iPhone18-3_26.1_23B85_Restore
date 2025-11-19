@interface OspreyTTSService
+ (id)ospreyServiceEndpointURL;
+ (id)sharedInstance;
- (OspreyTTSService)init;
- (void)roundTripTTS:(id)a3 responseHandler:(id)a4;
- (void)streamTTS:(id)a3 beginHandler:(id)a4 chunkHandler:(id)a5 endHandler:(id)a6 completion:(id)a7;
@end

@implementation OspreyTTSService

- (void)streamTTS:(id)a3 beginHandler:(id)a4 chunkHandler:(id)a5 endHandler:(id)a6 completion:(id)a7
{
  v66 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v45 = a6;
  v46 = a7;
  v43 = v13;
  v44 = v14;
  v15 = objc_alloc_init(OPTTSMutableStartTextToSpeechStreamingRequest);
  v42 = self;
  v16 = [(OspreyTTSService *)self deviceID];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setSpeech_id:v16];

  v17 = [MEMORY[0x277CCAD78] UUID];
  v18 = [v17 UUIDString];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setSession_id:v18];

  v19 = [v12 language];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setLanguage:v19];

  v20 = [v12 voice_name];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setVoice_name:v20];

  v21 = [v12 gender];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setGender:v21];

  v22 = [v12 text];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setText:v22];

  -[OPTTSMutableStartTextToSpeechStreamingRequest setAudio_type:](v15, "setAudio_type:", [v12 audio_type]);
  -[OPTTSMutableStartTextToSpeechStreamingRequest setEnable_word_timing_info:](v15, "setEnable_word_timing_info:", [v12 enable_word_timing_info]);
  v23 = [MEMORY[0x277CCAD78] UUID];
  v24 = [v23 UUIDString];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setStream_id:v24];

  v25 = [v12 meta_info];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setMeta_info:v25];

  v26 = +[VSSiriServerConfiguration defaultConfig];
  v27 = [v26 experimentIdentifier];

  if (v27)
  {
    v28 = objc_alloc_init(OPTTSMutableTextToSpeechRequestExperiment);
    [(OPTTSMutableTextToSpeechRequestExperiment *)v28 setExperiment_identifier:v27];
    [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setExperiment:v28];
  }

  v29 = objc_alloc_init(OPTTSMutableTextToSpeechRouterStreamingStreamingRequest);
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingRequest *)v29 setContent_type:1];
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingRequest *)v29 setContentAsOPTTSStartTextToSpeechStreamingRequest:v15];
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__2040;
  v56[4] = __Block_byref_object_dispose__2041;
  v57 = MEMORY[0x2743CD880](v46);
  v30 = VSGetLogDefault();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 speech_id];
    v32 = [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 session_id];
    v33 = [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 stream_id];
    v34 = [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 meta_info];
    v35 = [v34 app_id];
    *buf = 138413058;
    v59 = v31;
    v60 = 2112;
    v61 = v32;
    v62 = 2112;
    v63 = v33;
    v64 = 2112;
    v65 = v35;
    _os_log_impl(&dword_2727E4000, v30, OS_LOG_TYPE_DEFAULT, "Sent Osprey streaming request with speech_id '%@', session_id '%@', stream_id '%@', app_id '%@'", buf, 0x2Au);
  }

  v36 = [(OPTTSTextToSpeechRouterStreamingStreamingRequest *)v29 flatbuffData];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __78__OspreyTTSService_streamTTS_beginHandler_chunkHandler_endHandler_completion___block_invoke;
  v54[3] = &unk_279E4B8D0;
  v55 = v15;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __78__OspreyTTSService_streamTTS_beginHandler_chunkHandler_endHandler_completion___block_invoke_2;
  v48[3] = &unk_279E4B920;
  v37 = v55;
  v49 = v37;
  v53 = v56;
  v38 = v43;
  v50 = v38;
  v39 = v44;
  v51 = v39;
  v40 = v45;
  v52 = v40;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __78__OspreyTTSService_streamTTS_beginHandler_chunkHandler_endHandler_completion___block_invoke_58;
  v47[3] = &unk_279E4BB40;
  v47[4] = v56;
  [(OspreyChannel *)v42 serverStreamingRequestWithMethodName:@"/siri.speech.qss_fb.Blazar/TextToSpeechRouterStreaming" requestData:v36 requestBuilder:v54 streamingResponseHandler:v48 completion:v47];

  _Block_object_dispose(v56, 8);
  v41 = *MEMORY[0x277D85DE8];
}

void __78__OspreyTTSService_streamTTS_beginHandler_chunkHandler_endHandler_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) session_id];
  [v4 setClientTraceIdentifier:v3];
}

void __78__OspreyTTSService_streamTTS_beginHandler_chunkHandler_endHandler_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[OPTTSTextToSpeechRouterStreamingStreamingResponse alloc] initAndVerifyWithFlatbuffData:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 content_type];
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v29 = [v5 contentAsOPTTSPartialTextToSpeechStreamingResponse];
        v30 = [v29 error_code];

        if (v30 == 200)
        {
          v31 = VSGetLogDefault();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = [v5 contentAsOPTTSPartialTextToSpeechStreamingResponse];
            *buf = 67109120;
            LODWORD(v75) = [v32 current_pkt_number];
            _os_log_impl(&dword_2727E4000, v31, OS_LOG_TYPE_INFO, "Osprey streaming received Chunk response, pkt number: %d", buf, 8u);
          }

          v33 = *(a1 + 48);
          v13 = [v5 contentAsOPTTSPartialTextToSpeechStreamingResponse];
          (*(v33 + 16))(v33, v13);
        }

        else
        {
          v54 = *(*(*(a1 + 64) + 8) + 40);
          if (v54)
          {
            v55 = MEMORY[0x277CCA9B8];
            v68 = *MEMORY[0x277CCA450];
            v56 = [v5 contentAsOPTTSPartialTextToSpeechStreamingResponse];
            v57 = [v56 error_str];
            v69 = v57;
            v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
            v59 = [v55 errorWithDomain:@"ServerTTSErrorDomain" code:601 userInfo:v58];
            (*(v54 + 16))(v54, v59);

            v60 = *(*(a1 + 64) + 8);
            v61 = *(v60 + 40);
            *(v60 + 40) = 0;
          }

          v13 = VSGetLogDefault();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v64 = [v5 contentAsOPTTSPartialTextToSpeechStreamingResponse];
            v65 = [v64 error_code];
            *buf = 67109120;
            LODWORD(v75) = v65;
            _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, "Osprey streaming received Chunk response with non 200 status: %d", buf, 8u);
          }
        }

        goto LABEL_39;
      }

      if (v6 == 3)
      {
        v20 = [v5 contentAsOPTTSFinalTextToSpeechStreamingResponse];
        v21 = [v20 error_code];

        if (v21 == 200)
        {
          v22 = VSGetLogDefault();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = [v5 contentAsOPTTSFinalTextToSpeechStreamingResponse];
            *buf = 67109120;
            LODWORD(v75) = [v23 total_pkt_number];
            _os_log_impl(&dword_2727E4000, v22, OS_LOG_TYPE_INFO, "Osprey streaming received End response, total pkt: %d", buf, 8u);
          }

          v24 = *(a1 + 56);
          v13 = [v5 contentAsOPTTSFinalTextToSpeechStreamingResponse];
          (*(v24 + 16))(v24, v13);
        }

        else
        {
          v44 = *(*(*(a1 + 64) + 8) + 40);
          if (v44)
          {
            v45 = MEMORY[0x277CCA9B8];
            v46 = [v5 contentAsOPTTSFinalTextToSpeechStreamingResponse];
            v47 = [v46 error_str];
            v67 = v47;
            v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
            v49 = [v45 errorWithDomain:@"ServerTTSErrorDomain" code:601 userInfo:v48];
            (*(v44 + 16))(v44, v49);

            v50 = *(*(a1 + 64) + 8);
            v51 = *(v50 + 40);
            *(v50 + 40) = 0;
          }

          v13 = VSGetLogDefault();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v52 = [v5 contentAsOPTTSFinalTextToSpeechStreamingResponse];
            v53 = [v52 error_code];
            *buf = 67109120;
            LODWORD(v75) = v53;
            _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, "Osprey streaming received End response with non 200 status: %d", buf, 8u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (!v6)
      {
        v25 = VSGetLogDefault();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v75 = "[OspreyTTSService streamTTS:beginHandler:chunkHandler:endHandler:completion:]_block_invoke";
          _os_log_error_impl(&dword_2727E4000, v25, OS_LOG_TYPE_ERROR, "%s, Unknown response from Osprey for streaming TTS", buf, 0xCu);
        }

        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ServerTTSErrorDomain" code:601 userInfo:MEMORY[0x277CBEC10]];
        v26 = *(*(*(a1 + 64) + 8) + 40);
        if (v26)
        {
          (*(v26 + 16))(v26, v13);
          v27 = *(*(a1 + 64) + 8);
          v28 = *(v27 + 40);
          *(v27 + 40) = 0;
        }

        goto LABEL_39;
      }

      if (v6 == 1)
      {
        v7 = [v5 contentAsOPTTSBeginTextToSpeechStreamingResponse];
        v8 = [v7 error_code];

        if (v8 == 200)
        {
          v9 = VSGetLogDefault();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = [v5 contentAsOPTTSBeginTextToSpeechStreamingResponse];
            v11 = [v10 stream_id];
            *buf = 138412290;
            v75 = v11;
            _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "Osprey streaming received Begin response %@", buf, 0xCu);
          }

          v12 = *(a1 + 40);
          v13 = [v5 contentAsOPTTSBeginTextToSpeechStreamingResponse];
          (*(v12 + 16))(v12, v13);
        }

        else
        {
          v34 = *(*(*(a1 + 64) + 8) + 40);
          if (v34)
          {
            v35 = MEMORY[0x277CCA9B8];
            v70 = *MEMORY[0x277CCA450];
            v36 = [v5 contentAsOPTTSBeginTextToSpeechStreamingResponse];
            v37 = [v36 error_str];
            v71 = v37;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
            v39 = [v35 errorWithDomain:@"ServerTTSErrorDomain" code:601 userInfo:v38];
            (*(v34 + 16))(v34, v39);

            v40 = *(*(a1 + 64) + 8);
            v41 = *(v40 + 40);
            *(v40 + 40) = 0;
          }

          v13 = VSGetLogDefault();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v42 = [v5 contentAsOPTTSBeginTextToSpeechStreamingResponse];
            v43 = [v42 error_code];
            *buf = 67109120;
            LODWORD(v75) = v43;
            _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, "Osprey streaming received Begin response with non 200 status: %d", buf, 8u);
          }
        }

        goto LABEL_39;
      }
    }
  }

  else
  {
    v14 = VSGetLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v63 = [*(a1 + 32) stream_id];
      *buf = 138412290;
      v75 = v63;
      _os_log_error_impl(&dword_2727E4000, v14, OS_LOG_TYPE_ERROR, "Corrupted Osprey response, stream ID: %@", buf, 0xCu);
    }

    v15 = *(*(*(a1 + 64) + 8) + 40);
    if (v15)
    {
      v16 = MEMORY[0x277CCA9B8];
      v72 = *MEMORY[0x277CCA450];
      v73 = @"Corrupted Osprey response.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      v18 = [v16 errorWithDomain:@"ServerTTSErrorDomain" code:600 userInfo:v17];
      (*(v15 + 16))(v15, v18);

      v19 = *(*(a1 + 64) + 8);
      v13 = *(v19 + 40);
      *(v19 + 40) = 0;
LABEL_39:
    }
  }

  v62 = *MEMORY[0x277D85DE8];
}

void __78__OspreyTTSService_streamTTS_beginHandler_chunkHandler_endHandler_completion___block_invoke_58(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, "Osprey streaming invokes completion with error %@", buf, 0xCu);
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = [v4 localizedDescription];
    v16 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = [v6 errorWithDomain:@"ServerTTSErrorDomain" code:601 userInfo:v8];

    v10 = v9;
  }

  else
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v7, OS_LOG_TYPE_INFO, "Osprey streaming invokes completion callback", buf, 2u);
    }

    v10 = 0;
  }

  v11 = *(*(*(a1 + 32) + 8) + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v10);
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)roundTripTTS:(id)a3 responseHandler:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(OspreyTTSService *)self deviceID];
  [v6 setSpeech_id:v8];

  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v9 UUIDString];
  [v6 setSession_id:v10];

  v11 = +[VSSiriServerConfiguration defaultConfig];
  v12 = [v11 experimentIdentifier];

  if (v12)
  {
    v13 = objc_alloc_init(OPTTSMutableTextToSpeechRequestExperiment);
    [(OPTTSMutableTextToSpeechRequestExperiment *)v13 setExperiment_identifier:v12];
    [v6 setExperiment:v13];
  }

  v14 = VSGetLogDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v6 speech_id];
    v16 = [v6 session_id];
    v17 = [v6 meta_info];
    v18 = [v17 app_id];
    *buf = 138412802;
    v28 = v15;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&dword_2727E4000, v14, OS_LOG_TYPE_DEFAULT, "Sent Osprey grpc request with speech_id '%@', session_id '%@', app_id '%@'", buf, 0x20u);
  }

  v19 = [v6 flatbuffData];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __49__OspreyTTSService_roundTripTTS_responseHandler___block_invoke;
  v25[3] = &unk_279E4B8D0;
  v20 = v6;
  v26 = v20;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __49__OspreyTTSService_roundTripTTS_responseHandler___block_invoke_2;
  v23[3] = &unk_279E4B8F8;
  v21 = v7;
  v24 = v21;
  [(OspreyChannel *)self unaryRequestWithMethodName:@"/siri.speech.qss_fb.Blazar/TextToSpeechRouter" requestData:v19 requestBuilder:v25 responseHandler:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __49__OspreyTTSService_roundTripTTS_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) session_id];
  [v4 setClientTraceIdentifier:v3];
}

void __49__OspreyTTSService_roundTripTTS_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (!v5 || ![v5 length])
    {
      v10 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      v30 = @"Empty data";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v9 = [v10 errorWithDomain:@"ServerTTSErrorDomain" code:600 userInfo:v11];

      v12 = VSGetLogDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v24 = [v9 localizedDescription];
        *buf = 136315394;
        v32 = "[OspreyTTSService roundTripTTS:responseHandler:]_block_invoke";
        v33 = 2112;
        v34 = v24;
        _os_log_error_impl(&dword_2727E4000, v12, OS_LOG_TYPE_ERROR, "%s, Error: %@", buf, 0x16u);
      }

      (*(*(a1 + 32) + 16))();
      goto LABEL_17;
    }

    v8 = [[OPTTSTextToSpeechResponse alloc] initWithFlatbuffData:v5];
    v9 = v8;
    if (v8)
    {
      if (!-[OPTTSTextToSpeechResponse error_code](v8, "error_code") || [v9 error_code] == 200)
      {
        (*(*(a1 + 32) + 16))();
LABEL_17:

        goto LABEL_18;
      }

      v17 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA450];
      v18 = MEMORY[0x277CCACA8];
      v19 = [v9 error_code];
      v20 = [v9 error_str];
      v21 = [v18 stringWithFormat:@"Error %d in response: %@", v19, v20];
      v26 = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v15 = [v17 errorWithDomain:@"ServerTTSErrorDomain" code:601 userInfo:v22];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v13 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v28 = @"Invalid data";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v15 = [v13 errorWithDomain:@"ServerTTSErrorDomain" code:600 userInfo:v14];

      (*(*(a1 + 32) + 16))();
    }

    goto LABEL_17;
  }

  v7 = VSGetLogDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v16 = [v6 localizedDescription];
    *buf = 136315394;
    v32 = "[OspreyTTSService roundTripTTS:responseHandler:]_block_invoke_2";
    v33 = 2112;
    v34 = v16;
    _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "%s, Error: %@", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
}

- (OspreyTTSService)init
{
  v3 = +[OspreyTTSService ospreyServiceEndpointURL];
  v4 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [v4 setTimeoutIntervalForRequest:5.0];
  [v4 setTimeoutIntervalForResource:60.0];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  v11.receiver = self;
  v11.super_class = OspreyTTSService;
  v6 = [(OspreyChannel *)&v11 initWithURL:v5 configuration:v4];

  if (v6)
  {
    [(OspreyChannel *)v6 setUseCompression:0];
    v7 = [MEMORY[0x277D79978] defaultInstance];
    v8 = [v7 deviceUUID];
    deviceID = v6->_deviceID;
    v6->_deviceID = v8;
  }

  return v6;
}

+ (id)sharedInstance
{
  if (+[OspreyTTSService sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[OspreyTTSService sharedInstance]::onceToken, &__block_literal_global_2088);
  }

  v3 = +[OspreyTTSService sharedInstance]::__sharedInstance;

  return v3;
}

uint64_t __34__OspreyTTSService_sharedInstance__block_invoke()
{
  +[OspreyTTSService sharedInstance]::__sharedInstance = objc_alloc_init(OspreyTTSService);

  return MEMORY[0x2821F96F8]();
}

+ (id)ospreyServiceEndpointURL
{
  v2 = [MEMORY[0x277D79998] standardInstance];
  v3 = [v2 ospreyEndpointURL];

  if ([v3 length])
  {
    v4 = v3;
  }

  else if ([MEMORY[0x277D799C0] isSeedBuild])
  {
    v4 = @"https://seed-dejavu.siri.apple.com";
  }

  else if ([MEMORY[0x277D799C0] isInternalBuild])
  {
    v4 = @"https://carry-dejavu.siri.apple.com";
  }

  else
  {
    v4 = @"https://dejavu.apple.com";
  }

  return v4;
}

@end