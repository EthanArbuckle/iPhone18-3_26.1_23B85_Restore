@interface SFSSOspreyTTSClient
+ (id)sharedInstance;
- (SFSSOspreyTTSClient)init;
- (void)performCustomBidirectionalStreamingRequest:(id)request handler:(id)handler completion:(id)completion;
- (void)prewarm;
- (void)streamBlazarTTS:(id)s headers:(id)headers beginHandler:(id)handler chunkHandler:(id)chunkHandler endHandler:(id)endHandler completion:(id)completion;
- (void)streamNativeTTS:(id)s headers:(id)headers beginHandler:(id)handler chunkHandler:(id)chunkHandler endHandler:(id)endHandler completion:(id)completion;
- (void)streamTTS:(id)s headers:(id)headers beginHandler:(id)handler chunkHandler:(id)chunkHandler endHandler:(id)endHandler completion:(id)completion;
@end

@implementation SFSSOspreyTTSClient

- (void)streamBlazarTTS:(id)s headers:(id)headers beginHandler:(id)handler chunkHandler:(id)chunkHandler endHandler:(id)endHandler completion:(id)completion
{
  v70 = *MEMORY[0x277D85DE8];
  sCopy = s;
  headersCopy = headers;
  handlerCopy = handler;
  chunkHandlerCopy = chunkHandler;
  endHandlerCopy = endHandler;
  completionCopy = completion;
  v42 = handlerCopy;
  v43 = chunkHandlerCopy;
  v44 = endHandlerCopy;
  v18 = objc_alloc_init(QSSMutableTextToSpeechRouterStreamingStreamingRequest);
  [(QSSMutableTextToSpeechRouterStreamingStreamingRequest *)v18 setContent_type:1];
  [(QSSMutableTextToSpeechRouterStreamingStreamingRequest *)v18 setContentAsQSSStartTextToSpeechStreamingRequest:sCopy];
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = __Block_byref_object_copy_;
  v52[4] = __Block_byref_object_dispose_;
  v53 = MEMORY[0x26D631550](completionCopy);
  v19 = SFSSGetLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    speech_id = [sCopy speech_id];
    session_id = [sCopy session_id];
    stream_id = [sCopy stream_id];
    language = [sCopy language];
    gender = [sCopy gender];
    voice_name = [sCopy voice_name];
    meta_info = [sCopy meta_info];
    app_id = [meta_info app_id];
    v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(sCopy, "preferred_voice_type")}];
    *buf = 138414082;
    v55 = speech_id;
    v56 = 2112;
    v57 = session_id;
    v58 = 2112;
    v59 = stream_id;
    v60 = 2112;
    v61 = language;
    v62 = 2112;
    v63 = gender;
    v64 = 2112;
    v65 = voice_name;
    v66 = 2112;
    v67 = app_id;
    v68 = 2112;
    v69 = v25;
    _os_log_impl(&dword_269079000, v19, OS_LOG_TYPE_INFO, "Sent Osprey Blazar streaming request with speech_id '%@', session_id '%@', stream_id '%@', locale '%@', gender '%@', voice '%@', app_id '%@', voice_type '%@'", buf, 0x52u);
  }

  v26 = [objc_alloc(MEMORY[0x277D37A50]) initWithMethodName:@"/siri.speech.qss_fb.Blazar/TextToSpeechRouterStreaming"];
  flatbuffData = [(QSSTextToSpeechRouterStreamingStreamingRequest *)v18 flatbuffData];
  [v26 setData:flatbuffData];

  v28 = [headersCopy mutableCopy];
  carryClusterId = [(SFSSOspreyTTSClient *)self carryClusterId];
  v30 = [carryClusterId length] == 0;

  if (!v30)
  {
    carryClusterId2 = [(SFSSOspreyTTSClient *)self carryClusterId];
    [v28 setObject:carryClusterId2 forKeyedSubscript:@"supercarry-cluster-override"];
  }

  v32 = [v28 copy];
  [v26 setHeaders:v32];

  session_id2 = [sCopy session_id];
  [v26 setClientTraceId:session_id2];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __95__SFSSOspreyTTSClient_streamBlazarTTS_headers_beginHandler_chunkHandler_endHandler_completion___block_invoke;
  v47[3] = &unk_279C4C1A0;
  v51 = v52;
  v34 = v42;
  v48 = v34;
  v35 = v43;
  v49 = v35;
  v36 = v44;
  v50 = v36;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __95__SFSSOspreyTTSClient_streamBlazarTTS_headers_beginHandler_chunkHandler_endHandler_completion___block_invoke_47;
  v46[3] = &unk_279C4C1C8;
  v46[4] = v52;
  [(SFSSOspreyTTSClient *)self performCustomBidirectionalStreamingRequest:v26 handler:v47 completion:v46];

  _Block_object_dispose(v52, 8);
  v37 = *MEMORY[0x277D85DE8];
}

void __95__SFSSOspreyTTSClient_streamBlazarTTS_headers_beginHandler_chunkHandler_endHandler_completion___block_invoke(void *a1, void *a2)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[QSSTextToSpeechRouterStreamingStreamingResponse alloc] initWithFlatbuffData:v3];
  v5 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 content_type];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v18 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSPartialTextToSpeechStreamingResponse];
      v19 = [v18 error_code];

      if (v19 == 200)
      {
        v20 = SFSSGetLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v50 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSPartialTextToSpeechStreamingResponse];
          *buf = 67109120;
          LODWORD(v58) = [v50 current_pkt_number];
          _os_log_debug_impl(&dword_269079000, v20, OS_LOG_TYPE_DEBUG, "Osprey streaming received Chunk response, pkt number: %d", buf, 8u);
        }

        v21 = a1[5];
        v12 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSPartialTextToSpeechStreamingResponse];
        (*(v21 + 16))(v21, v12);
      }

      else
      {
        v41 = *(*(a1[7] + 8) + 40);
        if (v41)
        {
          v42 = MEMORY[0x277CCA9B8];
          v55 = *MEMORY[0x277CCA450];
          v43 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSPartialTextToSpeechStreamingResponse];
          v44 = [v43 error_str];
          v56 = v44;
          v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v46 = [v42 errorWithDomain:@"SFSpeechSynthesisServerErrorDomain" code:800 userInfo:v45];
          (*(v41 + 16))(v41, v46);

          v47 = *(a1[7] + 8);
          v48 = *(v47 + 40);
          *(v47 + 40) = 0;
        }

        v12 = SFSSGetLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v51 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSPartialTextToSpeechStreamingResponse];
          v52 = [v51 error_code];
          *buf = 67109120;
          LODWORD(v58) = v52;
          _os_log_error_impl(&dword_269079000, v12, OS_LOG_TYPE_ERROR, "Error: Osprey streaming received Chunk response with non 200 status: %d", buf, 8u);
        }
      }

      goto LABEL_32;
    }

    if (v5 == 3)
    {
      v13 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSFinalTextToSpeechStreamingResponse];
      v14 = [v13 error_code];

      if (v14 == 200)
      {
        v15 = SFSSGetLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSFinalTextToSpeechStreamingResponse];
          *buf = 67109120;
          LODWORD(v58) = [v16 total_pkt_number];
          _os_log_impl(&dword_269079000, v15, OS_LOG_TYPE_INFO, "Osprey streaming received End response, total pkt: %d", buf, 8u);
        }

        v17 = a1[6];
        v12 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSFinalTextToSpeechStreamingResponse];
        (*(v17 + 16))(v17, v12);
      }

      else
      {
        v31 = *(*(a1[7] + 8) + 40);
        if (v31)
        {
          v32 = MEMORY[0x277CCA9B8];
          v33 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSFinalTextToSpeechStreamingResponse];
          v34 = [v33 error_str];
          v54 = v34;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          v36 = [v32 errorWithDomain:@"SFSpeechSynthesisServerErrorDomain" code:800 userInfo:v35];
          (*(v31 + 16))(v31, v36);

          v37 = *(a1[7] + 8);
          v38 = *(v37 + 40);
          *(v37 + 40) = 0;
        }

        v12 = SFSSGetLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v39 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSFinalTextToSpeechStreamingResponse];
          v40 = [v39 error_code];
          *buf = 67109120;
          LODWORD(v58) = v40;
          _os_log_error_impl(&dword_269079000, v12, OS_LOG_TYPE_ERROR, "Osprey streaming received End response with non 200 status: %d", buf, 8u);
        }
      }

      goto LABEL_32;
    }
  }

  else
  {
    if (!v5)
    {
      v12 = SFSSGetLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v58 = "[SFSSOspreyTTSClient streamBlazarTTS:headers:beginHandler:chunkHandler:endHandler:completion:]_block_invoke";
        _os_log_fault_impl(&dword_269079000, v12, OS_LOG_TYPE_FAULT, "%s, Unknown response from Osprey for streaming TTS", buf, 0xCu);
      }

      goto LABEL_32;
    }

    if (v5 == 1)
    {
      v6 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSBeginTextToSpeechStreamingResponse];
      v7 = [v6 error_code];

      if (v7 == 200)
      {
        v8 = SFSSGetLogObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSBeginTextToSpeechStreamingResponse];
          v10 = [v9 stream_id];
          *buf = 138412290;
          v58 = v10;
          _os_log_impl(&dword_269079000, v8, OS_LOG_TYPE_INFO, "Osprey streaming received Begin response %@", buf, 0xCu);
        }

        v11 = a1[4];
        v12 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSBeginTextToSpeechStreamingResponse];
        (*(v11 + 16))(v11, v12);
      }

      else
      {
        v22 = *(*(a1[7] + 8) + 40);
        if (v22)
        {
          v23 = MEMORY[0x277CCA9B8];
          v59 = *MEMORY[0x277CCA450];
          v24 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSBeginTextToSpeechStreamingResponse];
          v25 = [v24 error_str];
          v60[0] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
          v27 = [v23 errorWithDomain:@"SFSpeechSynthesisServerErrorDomain" code:800 userInfo:v26];
          (*(v22 + 16))(v22, v27);

          v28 = *(a1[7] + 8);
          v29 = *(v28 + 40);
          *(v28 + 40) = 0;
        }

        v12 = SFSSGetLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v30 = [(QSSTextToSpeechRouterStreamingStreamingResponse *)v4 contentAsQSSBeginTextToSpeechStreamingResponse];
          *buf = 67109120;
          LODWORD(v58) = [v30 error_code];
          _os_log_error_impl(&dword_269079000, v12, OS_LOG_TYPE_ERROR, "Osprey streaming received Begin response with non 200 status: %d", buf, 8u);
        }
      }

LABEL_32:
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __95__SFSSOspreyTTSClient_streamBlazarTTS_headers_beginHandler_chunkHandler_endHandler_completion___block_invoke_47(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x277CCA9B8];
    v6 = [v3 userInfo];
    v7 = [v5 errorWithDomain:@"SFSpeechSynthesisServerErrorDomain" code:800 userInfo:v6];

    v8 = SFSSGetLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_error_impl(&dword_269079000, v8, OS_LOG_TYPE_ERROR, "Osprey streaming invokes completion with error %@", &v14, 0xCu);
    }

    v9 = v7;
  }

  else
  {
    v8 = SFSSGetLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_269079000, v8, OS_LOG_TYPE_INFO, "Osprey streaming invokes completion callback", &v14, 2u);
    }

    v9 = 0;
  }

  v10 = *(*(*(a1 + 32) + 8) + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v9);
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)streamNativeTTS:(id)s headers:(id)headers beginHandler:(id)handler chunkHandler:(id)chunkHandler endHandler:(id)endHandler completion:(id)completion
{
  v70 = *MEMORY[0x277D85DE8];
  sCopy = s;
  headersCopy = headers;
  handlerCopy = handler;
  chunkHandlerCopy = chunkHandler;
  endHandlerCopy = endHandler;
  completionCopy = completion;
  v42 = handlerCopy;
  v43 = chunkHandlerCopy;
  v44 = endHandlerCopy;
  v18 = objc_alloc_init(QSSMutableTextToSpeechStreamingStreamingRequest);
  [(QSSMutableTextToSpeechStreamingStreamingRequest *)v18 setContent_type:1];
  [(QSSMutableTextToSpeechStreamingStreamingRequest *)v18 setContentAsQSSStartTextToSpeechStreamingRequest:sCopy];
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = __Block_byref_object_copy_;
  v52[4] = __Block_byref_object_dispose_;
  v53 = MEMORY[0x26D631550](completionCopy);
  v19 = SFSSGetLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    speech_id = [sCopy speech_id];
    session_id = [sCopy session_id];
    stream_id = [sCopy stream_id];
    language = [sCopy language];
    gender = [sCopy gender];
    voice_name = [sCopy voice_name];
    meta_info = [sCopy meta_info];
    app_id = [meta_info app_id];
    v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(sCopy, "preferred_voice_type")}];
    *buf = 138414082;
    v55 = speech_id;
    v56 = 2112;
    v57 = session_id;
    v58 = 2112;
    v59 = stream_id;
    v60 = 2112;
    v61 = language;
    v62 = 2112;
    v63 = gender;
    v64 = 2112;
    v65 = voice_name;
    v66 = 2112;
    v67 = app_id;
    v68 = 2112;
    v69 = v25;
    _os_log_impl(&dword_269079000, v19, OS_LOG_TYPE_INFO, "Sent Osprey streaming request with speech_id '%@', session_id '%@', stream_id '%@', locale '%@', gender '%@', voice '%@', app_id '%@', voice_type '%@'", buf, 0x52u);
  }

  v26 = [objc_alloc(MEMORY[0x277D37A50]) initWithMethodName:@"/siri.speech.qss_fb.Tts/TextToSpeechStreaming"];
  flatbuffData = [(QSSTextToSpeechStreamingStreamingRequest *)v18 flatbuffData];
  [v26 setData:flatbuffData];

  v28 = [headersCopy mutableCopy];
  carryClusterId = [(SFSSOspreyTTSClient *)self carryClusterId];
  v30 = [carryClusterId length] == 0;

  if (!v30)
  {
    carryClusterId2 = [(SFSSOspreyTTSClient *)self carryClusterId];
    [v28 setObject:carryClusterId2 forKeyedSubscript:@"supercarry-cluster-override"];
  }

  v32 = [v28 copy];
  [v26 setHeaders:v32];

  session_id2 = [sCopy session_id];
  [v26 setClientTraceId:session_id2];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __95__SFSSOspreyTTSClient_streamNativeTTS_headers_beginHandler_chunkHandler_endHandler_completion___block_invoke;
  v47[3] = &unk_279C4C1A0;
  v51 = v52;
  v34 = v42;
  v48 = v34;
  v35 = v43;
  v49 = v35;
  v36 = v44;
  v50 = v36;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __95__SFSSOspreyTTSClient_streamNativeTTS_headers_beginHandler_chunkHandler_endHandler_completion___block_invoke_41;
  v46[3] = &unk_279C4C1C8;
  v46[4] = v52;
  [(SFSSOspreyTTSClient *)self performCustomBidirectionalStreamingRequest:v26 handler:v47 completion:v46];

  _Block_object_dispose(v52, 8);
  v37 = *MEMORY[0x277D85DE8];
}

void __95__SFSSOspreyTTSClient_streamNativeTTS_headers_beginHandler_chunkHandler_endHandler_completion___block_invoke(void *a1, void *a2)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[QSSTextToSpeechStreamingStreamingResponse alloc] initWithFlatbuffData:v3];
  v5 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 content_type];
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v18 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSPartialTextToSpeechStreamingResponse];
      v19 = [v18 error_code];

      if (v19 == 200)
      {
        v20 = SFSSGetLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v50 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSPartialTextToSpeechStreamingResponse];
          *buf = 67109120;
          LODWORD(v58) = [v50 current_pkt_number];
          _os_log_debug_impl(&dword_269079000, v20, OS_LOG_TYPE_DEBUG, "Osprey streaming received Chunk response, pkt number: %d", buf, 8u);
        }

        v21 = a1[5];
        v12 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSPartialTextToSpeechStreamingResponse];
        (*(v21 + 16))(v21, v12);
      }

      else
      {
        v41 = *(*(a1[7] + 8) + 40);
        if (v41)
        {
          v42 = MEMORY[0x277CCA9B8];
          v55 = *MEMORY[0x277CCA450];
          v43 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSPartialTextToSpeechStreamingResponse];
          v44 = [v43 error_str];
          v56 = v44;
          v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v46 = [v42 errorWithDomain:@"SFSpeechSynthesisServerErrorDomain" code:800 userInfo:v45];
          (*(v41 + 16))(v41, v46);

          v47 = *(a1[7] + 8);
          v48 = *(v47 + 40);
          *(v47 + 40) = 0;
        }

        v12 = SFSSGetLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v51 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSPartialTextToSpeechStreamingResponse];
          v52 = [v51 error_code];
          *buf = 67109120;
          LODWORD(v58) = v52;
          _os_log_error_impl(&dword_269079000, v12, OS_LOG_TYPE_ERROR, "Error: Osprey streaming received Chunk response with non 200 status: %d", buf, 8u);
        }
      }

      goto LABEL_32;
    }

    if (v5 == 4)
    {
      v13 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSFinalTextToSpeechStreamingResponse];
      v14 = [v13 error_code];

      if (v14 == 200)
      {
        v15 = SFSSGetLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSFinalTextToSpeechStreamingResponse];
          *buf = 67109120;
          LODWORD(v58) = [v16 total_pkt_number];
          _os_log_impl(&dword_269079000, v15, OS_LOG_TYPE_INFO, "Osprey streaming received End response, total pkt: %d", buf, 8u);
        }

        v17 = a1[6];
        v12 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSFinalTextToSpeechStreamingResponse];
        (*(v17 + 16))(v17, v12);
      }

      else
      {
        v31 = *(*(a1[7] + 8) + 40);
        if (v31)
        {
          v32 = MEMORY[0x277CCA9B8];
          v33 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSFinalTextToSpeechStreamingResponse];
          v34 = [v33 error_str];
          v54 = v34;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          v36 = [v32 errorWithDomain:@"SFSpeechSynthesisServerErrorDomain" code:800 userInfo:v35];
          (*(v31 + 16))(v31, v36);

          v37 = *(a1[7] + 8);
          v38 = *(v37 + 40);
          *(v37 + 40) = 0;
        }

        v12 = SFSSGetLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v39 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSFinalTextToSpeechStreamingResponse];
          v40 = [v39 error_code];
          *buf = 67109120;
          LODWORD(v58) = v40;
          _os_log_error_impl(&dword_269079000, v12, OS_LOG_TYPE_ERROR, "Osprey streaming received End response with non 200 status: %d", buf, 8u);
        }
      }

      goto LABEL_32;
    }
  }

  else
  {
    if (!v5)
    {
      v12 = SFSSGetLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v58 = "[SFSSOspreyTTSClient streamNativeTTS:headers:beginHandler:chunkHandler:endHandler:completion:]_block_invoke";
        _os_log_fault_impl(&dword_269079000, v12, OS_LOG_TYPE_FAULT, "%s, Unknown response from Osprey for streaming TTS", buf, 0xCu);
      }

      goto LABEL_32;
    }

    if (v5 == 2)
    {
      v6 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSBeginTextToSpeechStreamingResponse];
      v7 = [v6 error_code];

      if (v7 == 200)
      {
        v8 = SFSSGetLogObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSBeginTextToSpeechStreamingResponse];
          v10 = [v9 stream_id];
          *buf = 138412290;
          v58 = v10;
          _os_log_impl(&dword_269079000, v8, OS_LOG_TYPE_INFO, "Osprey streaming received Begin response %@", buf, 0xCu);
        }

        v11 = a1[4];
        v12 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSBeginTextToSpeechStreamingResponse];
        (*(v11 + 16))(v11, v12);
      }

      else
      {
        v22 = *(*(a1[7] + 8) + 40);
        if (v22)
        {
          v23 = MEMORY[0x277CCA9B8];
          v59 = *MEMORY[0x277CCA450];
          v24 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSBeginTextToSpeechStreamingResponse];
          v25 = [v24 error_str];
          v60[0] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
          v27 = [v23 errorWithDomain:@"SFSpeechSynthesisServerErrorDomain" code:800 userInfo:v26];
          (*(v22 + 16))(v22, v27);

          v28 = *(a1[7] + 8);
          v29 = *(v28 + 40);
          *(v28 + 40) = 0;
        }

        v12 = SFSSGetLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v30 = [(QSSTextToSpeechStreamingStreamingResponse *)v4 contentAsQSSBeginTextToSpeechStreamingResponse];
          *buf = 67109120;
          LODWORD(v58) = [v30 error_code];
          _os_log_error_impl(&dword_269079000, v12, OS_LOG_TYPE_ERROR, "Osprey streaming received Begin response with non 200 status: %d", buf, 8u);
        }
      }

LABEL_32:
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __95__SFSSOspreyTTSClient_streamNativeTTS_headers_beginHandler_chunkHandler_endHandler_completion___block_invoke_41(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x277CCA9B8];
    v6 = [v3 userInfo];
    v7 = [v5 errorWithDomain:@"SFSpeechSynthesisServerErrorDomain" code:800 userInfo:v6];

    v8 = SFSSGetLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_error_impl(&dword_269079000, v8, OS_LOG_TYPE_ERROR, "Osprey streaming invokes completion with error %@", &v14, 0xCu);
    }

    v9 = v7;
  }

  else
  {
    v8 = SFSSGetLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_269079000, v8, OS_LOG_TYPE_INFO, "Osprey streaming invokes completion callback", &v14, 2u);
    }

    v9 = 0;
  }

  v10 = *(*(*(a1 + 32) + 8) + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v9);
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)streamTTS:(id)s headers:(id)headers beginHandler:(id)handler chunkHandler:(id)chunkHandler endHandler:(id)endHandler completion:(id)completion
{
  sCopy = s;
  headersCopy = headers;
  handlerCopy = handler;
  chunkHandlerCopy = chunkHandler;
  endHandlerCopy = endHandler;
  completionCopy = completion;
  [sCopy setSpeech_id:self->_deviceId];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [sCopy setStream_id:uUIDString];

  if ([(SFSSOspreyTTSClient *)self useBlazar])
  {
    [(SFSSOspreyTTSClient *)self streamBlazarTTS:sCopy headers:headersCopy beginHandler:handlerCopy chunkHandler:chunkHandlerCopy endHandler:endHandlerCopy completion:completionCopy];
  }

  else
  {
    [(SFSSOspreyTTSClient *)self streamNativeTTS:sCopy headers:headersCopy beginHandler:handlerCopy chunkHandler:chunkHandlerCopy endHandler:endHandlerCopy completion:completionCopy];
  }
}

- (void)performCustomBidirectionalStreamingRequest:(id)request handler:(id)handler completion:(id)completion
{
  requestCopy = request;
  handlerCopy = handler;
  completionCopy = completion;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__SFSSOspreyTTSClient_performCustomBidirectionalStreamingRequest_handler_completion___block_invoke;
  v17[3] = &unk_279C4C178;
  v11 = requestCopy;
  v18 = v11;
  v12 = MEMORY[0x26D631550](v17);
  methodName = [v11 methodName];
  v14 = [(OspreyChannel *)self bidirectionalStreamingRequestWithMethodName:methodName requestBuilder:v12 streamingResponseHandler:handlerCopy completion:completionCopy];

  data = [v11 data];

  if (data)
  {
    data2 = [v11 data];
    [v14 writeFrame:data2];

    [v14 finishWriting];
  }
}

void __85__SFSSOspreyTTSClient_performCustomBidirectionalStreamingRequest_handler_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) clientTraceId];

  if (v4)
  {
    v5 = [*(a1 + 32) clientTraceId];
    [v3 setClientTraceIdentifier:v5];
  }

  v6 = [*(a1 + 32) headers];

  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [*(a1 + 32) headers];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = [*(a1 + 32) headers];
          v13 = [v12 objectForKey:v11];
          [v3 setValue:v13 forHTTPHeaderField:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)prewarm
{
  v3 = SFSSGetLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "Preconnect Osprey TTS connection.", v4, 2u);
  }

  [(OspreyChannel *)self preconnect];
}

void __66__SFSSOspreyTTSClient_initWithURL_useBlazar_enableAuthentication___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = SFSSGetLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "initializeDeviceAuthenticationSessionWithCompletion Error: %@", &v7, 0xCu);
  }

  v4 = SFSSGetLogObject();
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_error_impl(&dword_269079000, v5, OS_LOG_TYPE_ERROR, "Unable to initialize device authentication session: %@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_269079000, v5, OS_LOG_TYPE_INFO, "Device authentication session is initialized", &v7, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (SFSSOspreyTTSClient)init
{
  v9.receiver = self;
  v9.super_class = SFSSOspreyTTSClient;
  v2 = [(SFSSOspreyTTSClient *)&v9 init];
  v3 = v2;
  if (v2)
  {
    carryClusterId = v2->_carryClusterId;
    v2->_carryClusterId = 0;
  }

  v5 = +[SFSpeechSynthesisInternalSetting sharedInstance];
  ospreyEndpointURL = [v5 ospreyEndpointURL];

  v7 = [(SFSSOspreyTTSClient *)v3 initWithURL:ospreyEndpointURL];
  return v7;
}

+ (id)sharedInstance
{
  if (+[SFSSOspreyTTSClient sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[SFSSOspreyTTSClient sharedInstance]::onceToken, &__block_literal_global);
  }

  v3 = +[SFSSOspreyTTSClient sharedInstance]::__sharedInstance;

  return v3;
}

uint64_t __37__SFSSOspreyTTSClient_sharedInstance__block_invoke()
{
  +[SFSSOspreyTTSClient sharedInstance]::__sharedInstance = objc_alloc_init(SFSSOspreyTTSClient);

  return MEMORY[0x2821F96F8]();
}

@end