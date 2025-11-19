@interface SiriTTSOspreyChannel
- (SiriTTSOspreyChannel)initWithURL:(id)a3 configuration:(id)a4;
- (void)streamTTS:(id)a3 beginHandler:(id)a4 chunkHandler:(id)a5 completion:(id)a6;
@end

@implementation SiriTTSOspreyChannel

- (void)streamTTS:(id)a3 beginHandler:(id)a4 chunkHandler:(id)a5 completion:(id)a6
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v26 = a4;
  v27 = a5;
  aBlock = a6;
  v10 = [v9 underlyingRequest];
  v11 = objc_alloc_init(OPTTSMutableTextToSpeechRouterStreamingStreamingRequest);
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingRequest *)v11 setContent_type:1];
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingRequest *)v11 setContentAsOPTTSStartTextToSpeechStreamingRequest:v10];
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x4810000000;
  v45 = 0u;
  v46 = 0u;
  v44[3] = "";
  v47 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__667;
  v42[4] = __Block_byref_object_dispose__668;
  v43 = _Block_copy(aBlock);
  v12 = TTSGetServiceLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 speech_id];
    v14 = [v10 session_id];
    v15 = [v10 stream_id];
    v16 = [v10 meta_info];
    v17 = [v16 app_id];
    v18 = [v9 requestCreatedTime];
    *buf = 138413314;
    v49 = v13;
    v50 = 2112;
    v51 = v14;
    v52 = 2112;
    v53 = v15;
    v54 = 2112;
    v55 = v17;
    v56 = 2048;
    v57 = v18;
    _os_log_impl(&dword_1B1A8A000, v12, OS_LOG_TYPE_DEFAULT, "Sent Osprey streaming request with speech_id '%@', session_id '%@', stream_id '%@', app_id '%@', request_id '%llu'", buf, 0x34u);
  }

  grpcChannel = self->_grpcChannel;
  v20 = [(OPTTSTextToSpeechRouterStreamingStreamingRequest *)v11 flatbuffData];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __71__SiriTTSOspreyChannel_streamTTS_beginHandler_chunkHandler_completion___block_invoke;
  v40[3] = &unk_1E7AF38F0;
  v41 = v10;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __71__SiriTTSOspreyChannel_streamTTS_beginHandler_chunkHandler_completion___block_invoke_2;
  v33[3] = &unk_1E7AF3918;
  v21 = v41;
  v34 = v21;
  v35 = v9;
  v38 = v42;
  v39 = v44;
  v22 = v26;
  v36 = v22;
  v23 = v27;
  v37 = v23;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __71__SiriTTSOspreyChannel_streamTTS_beginHandler_chunkHandler_completion___block_invoke_247;
  v30[3] = &unk_1E7AF3940;
  v24 = v35;
  v31 = v24;
  v32 = v42;
  [(OspreyChannel *)grpcChannel serverStreamingRequestWithMethodName:@"/siri.speech.qss_fb.Blazar/TextToSpeechRouterStreaming" requestData:v20 requestBuilder:v40 streamingResponseHandler:v33 completion:v30];

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v44, 8);

  v25 = *MEMORY[0x1E69E9840];
}

void __71__SiriTTSOspreyChannel_streamTTS_beginHandler_chunkHandler_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 session_id];
  [v3 setClientTraceIdentifier:v4];
}

void __71__SiriTTSOspreyChannel_streamTTS_beginHandler_chunkHandler_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v97[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [[OPTTSTextToSpeechRouterStreamingStreamingResponse alloc] initAndVerifyWithFlatbuffData:v3];

  if (!v4)
  {
    v19 = TTSGetServiceLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v78 = [*(a1 + 32) stream_id];
      v79 = [*(a1 + 40) requestCreatedTime];
      *buf = 138412546;
      *&buf[4] = v78;
      *&buf[12] = 2048;
      *&buf[14] = v79;
      _os_log_error_impl(&dword_1B1A8A000, v19, OS_LOG_TYPE_ERROR, "Corrupted Osprey response, stream ID: %@, request_id: %llu", buf, 0x16u);
    }

    v20 = *(*(*(a1 + 64) + 8) + 40);
    if (!v20)
    {
      goto LABEL_44;
    }

    v21 = MEMORY[0x1E696ABC0];
    v96 = *MEMORY[0x1E696A578];
    v97[0] = @"Corrupted Osprey response.";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:&v96 count:1];
    v23 = [v21 errorWithDomain:@"OspreyTTSService" code:-1 userInfo:v22];
    (*(v20 + 16))(v20, v23);

    v24 = *(*(a1 + 64) + 8);
    v17 = *(v24 + 40);
    *(v24 + 40) = 0;
    goto LABEL_43;
  }

  v5 = [v4 content_type];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v36 = [v4 contentAsOPTTSPartialTextToSpeechStreamingResponse];
      v37 = [v36 error_code];

      if (v37 == 200)
      {
        v38 = TTSGetServiceLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [v4 contentAsOPTTSPartialTextToSpeechStreamingResponse];
          v40 = [v39 current_pkt_number];
          v41 = [*(a1 + 40) requestCreatedTime];
          *buf = 67109376;
          *&buf[4] = v40;
          *&buf[8] = 2048;
          *&buf[10] = v41;
          _os_log_impl(&dword_1B1A8A000, v38, OS_LOG_TYPE_DEFAULT, "Osprey streaming received Chunk response, pkt number: %d, request_id: %llu", buf, 0x12u);
        }

        if ([*(a1 + 40) serverLogs])
        {
          v42 = [v4 contentAsOPTTSPartialTextToSpeechStreamingResponse];
          [SiriTTSOspreyStreamingPartialResponse processServerLogs:v42];
        }

        v43 = [SiriTTSOspreyStreamingPartialResponse alloc];
        v44 = [v4 contentAsOPTTSPartialTextToSpeechStreamingResponse];
        v17 = [(SiriTTSOspreyStreamingPartialResponse *)v43 initWithOspreyPartialResponse:v44];

        v45 = *(*(a1 + 72) + 8);
        v82 = *(v45 + 64);
        v81 = *(v45 + 48);
        *buf = *(v45 + 32);
        *&buf[16] = v81;
        v91 = v82;
        [v17 setAsbd:buf, *buf, *&buf[8], v81, v82];
        v18 = *(a1 + 56);
        goto LABEL_28;
      }

      v67 = *(*(*(a1 + 64) + 8) + 40);
      if (v67)
      {
        v68 = MEMORY[0x1E696ABC0];
        v92 = *MEMORY[0x1E696A578];
        v69 = [v4 contentAsOPTTSPartialTextToSpeechStreamingResponse];
        v70 = [v69 error_str];
        v93 = v70;
        v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v72 = [v68 errorWithDomain:@"OspreyTTSService" code:-1 userInfo:v71];
        (*(v67 + 16))(v67, v72);

        v73 = *(*(a1 + 64) + 8);
        v74 = *(v73 + 40);
        *(v73 + 40) = 0;
      }

      v17 = TTSGetServiceLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      v27 = [v4 contentAsOPTTSPartialTextToSpeechStreamingResponse];
      v75 = [v27 error_code];
      v76 = [*(a1 + 40) requestCreatedTime];
      *buf = 67109376;
      *&buf[4] = v75;
      *&buf[8] = 2048;
      *&buf[10] = v76;
      v56 = "Osprey streaming received Chunk response with non 200 status: %d, request_id: %llu";
      goto LABEL_41;
    }

    if (v5 != 3)
    {
      goto LABEL_44;
    }

    v25 = [v4 contentAsOPTTSFinalTextToSpeechStreamingResponse];
    v26 = [v25 error_code];

    if (v26 != 200)
    {
      v57 = *(*(*(a1 + 64) + 8) + 40);
      if (v57)
      {
        v58 = MEMORY[0x1E696ABC0];
        v88 = *MEMORY[0x1E696A578];
        v59 = [v4 contentAsOPTTSFinalTextToSpeechStreamingResponse];
        v60 = [v59 error_str];
        v89 = v60;
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        v62 = [v58 errorWithDomain:@"OspreyTTSService" code:-1 userInfo:v61];
        (*(v57 + 16))(v57, v62);

        v63 = *(*(a1 + 64) + 8);
        v64 = *(v63 + 40);
        *(v63 + 40) = 0;
      }

      v17 = TTSGetServiceLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      v27 = [v4 contentAsOPTTSFinalTextToSpeechStreamingResponse];
      v65 = [v27 error_code];
      v66 = [*(a1 + 40) requestCreatedTime];
      *buf = 67109376;
      *&buf[4] = v65;
      *&buf[8] = 2048;
      *&buf[10] = v66;
      v56 = "Osprey streaming received End response with non 200 status: %d, request_id: %llu";
LABEL_41:
      _os_log_error_impl(&dword_1B1A8A000, v17, OS_LOG_TYPE_ERROR, v56, buf, 0x12u);
      goto LABEL_42;
    }

    v17 = TTSGetServiceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v4 contentAsOPTTSFinalTextToSpeechStreamingResponse];
      v28 = [v27 total_pkt_number];
      v29 = [*(a1 + 40) requestCreatedTime];
      *buf = 67109376;
      *&buf[4] = v28;
      *&buf[8] = 2048;
      *&buf[10] = v29;
      _os_log_impl(&dword_1B1A8A000, v17, OS_LOG_TYPE_DEFAULT, "Osprey streaming received End response, total pkt: %d, request_id: %llu", buf, 0x12u);
LABEL_42:
    }

LABEL_43:

    goto LABEL_44;
  }

  if (!v5)
  {
    v30 = TTSGetServiceLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v80 = [*(a1 + 40) requestCreatedTime];
      *buf = 136315394;
      *&buf[4] = "[SiriTTSOspreyChannel streamTTS:beginHandler:chunkHandler:completion:]_block_invoke";
      *&buf[12] = 2048;
      *&buf[14] = v80;
      _os_log_error_impl(&dword_1B1A8A000, v30, OS_LOG_TYPE_ERROR, "%s, Unknown response from Osprey for streaming TTS, request_id: %llu", buf, 0x16u);
    }

    v31 = MEMORY[0x1E696ABC0];
    v86 = *MEMORY[0x1E696A578];
    v87 = @"Unknown response from Osprey for streaming TTS";
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v17 = [v31 errorWithDomain:@"OspreyTTSService" code:-1 userInfo:v32];

    v33 = *(*(*(a1 + 64) + 8) + 40);
    if (v33)
    {
      (*(v33 + 16))(v33, v17);
      v34 = *(*(a1 + 64) + 8);
      v35 = *(v34 + 40);
      *(v34 + 40) = 0;
    }

    goto LABEL_43;
  }

  if (v5 == 1)
  {
    v6 = [v4 contentAsOPTTSBeginTextToSpeechStreamingResponse];
    v7 = [v6 error_code];

    if (v7 == 200)
    {
      v8 = TTSGetServiceLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v4 contentAsOPTTSBeginTextToSpeechStreamingResponse];
        v10 = [v9 stream_id];
        v11 = [*(a1 + 40) requestCreatedTime];
        *buf = 138412546;
        *&buf[4] = v10;
        *&buf[12] = 2048;
        *&buf[14] = v11;
        _os_log_impl(&dword_1B1A8A000, v8, OS_LOG_TYPE_DEFAULT, "Osprey streaming received Begin response %@, request_id: %llu", buf, 0x16u);
      }

      v12 = [v4 contentAsOPTTSBeginTextToSpeechStreamingResponse];
      v13 = [v12 decoder_description];
      [v13 audioStreamBasicDescription];
      v14 = *(*(a1 + 72) + 8);
      *(v14 + 32) = v83;
      *(v14 + 48) = v84;
      *(v14 + 64) = v85;

      v15 = [SiriTTSOspreyStreamingBeginResponse alloc];
      v16 = [v4 contentAsOPTTSBeginTextToSpeechStreamingResponse];
      v17 = [(SiriTTSOspreyStreamingBeginResponse *)v15 initWithOspreyBeginResponse:v16];

      v18 = *(a1 + 48);
LABEL_28:
      (*(v18 + 16))(v18, v17);
      goto LABEL_43;
    }

    v46 = *(*(*(a1 + 64) + 8) + 40);
    if (v46)
    {
      v47 = MEMORY[0x1E696ABC0];
      v94 = *MEMORY[0x1E696A578];
      v48 = [v4 contentAsOPTTSBeginTextToSpeechStreamingResponse];
      v49 = [v48 error_str];
      v95 = v49;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      v51 = [v47 errorWithDomain:@"OspreyTTSService" code:-1 userInfo:v50];
      (*(v46 + 16))(v46, v51);

      v52 = *(*(a1 + 64) + 8);
      v53 = *(v52 + 40);
      *(v52 + 40) = 0;
    }

    v17 = TTSGetServiceLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    v27 = [v4 contentAsOPTTSBeginTextToSpeechStreamingResponse];
    v54 = [v27 error_code];
    v55 = [*(a1 + 40) requestCreatedTime];
    *buf = 67109376;
    *&buf[4] = v54;
    *&buf[8] = 2048;
    *&buf[10] = v55;
    v56 = "Osprey streaming received Begin response with non 200 status: %d, request_id: %llu";
    goto LABEL_41;
  }

LABEL_44:

  v77 = *MEMORY[0x1E69E9840];
}

void __71__SiriTTSOspreyChannel_streamTTS_beginHandler_chunkHandler_completion___block_invoke_247(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TTSGetServiceLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) requestCreatedTime];
      v12 = 138412546;
      v13 = v3;
      v14 = 2048;
      v15 = v6;
      _os_log_error_impl(&dword_1B1A8A000, v5, OS_LOG_TYPE_ERROR, "Osprey streaming invokes completion with error %@, request_id: %llu", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) requestCreatedTime];
    v12 = 134217984;
    v13 = v7;
    _os_log_impl(&dword_1B1A8A000, v5, OS_LOG_TYPE_DEFAULT, "Osprey streaming invokes completion callback, request_id: %llu", &v12, 0xCu);
  }

  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (SiriTTSOspreyChannel)initWithURL:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SiriTTSOspreyChannel;
  v8 = [(SiriTTSOspreyChannel *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69B7D80]) initWithURL:v6 configuration:v7];
    grpcChannel = v8->_grpcChannel;
    v8->_grpcChannel = v9;

    [(OspreyChannel *)v8->_grpcChannel setUseCompression:0];
  }

  return v8;
}

@end