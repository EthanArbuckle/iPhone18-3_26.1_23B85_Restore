@interface _LTServerSpeakSession
- (BOOL)_hasCachedCompletion;
- (_LTServerSpeakSession)initWithEngine:(id)a3;
- (id)_createTemporaryOutputFileWithURL:(id)a3;
- (void)_callCompletionAndClearIfNeeded:(id)a3 error:(id)a4;
- (void)_playback:(id)a3 context:(id)a4 completion:(id)a5 audioStartHandler:(id)a6;
- (void)cancel;
- (void)speak:(id)a3 context:(id)a4 completion:(id)a5 audioStartHandler:(id)a6;
@end

@implementation _LTServerSpeakSession

- (_LTServerSpeakSession)initWithEngine:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _LTServerSpeakSession;
  v6 = [(_LTServerSpeakSession *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_engine, a3);
    v8 = dispatch_queue_create("com.apple.translationd.playback", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v7->_lock._os_unfair_lock_opaque = 0;
    v10 = v7;
  }

  return v7;
}

- (id)_createTemporaryOutputFileWithURL:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = NSTemporaryDirectory();
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];
    v7 = [v4 stringByAppendingPathComponent:v6];

    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7 isDirectory:1];
    v9 = MEMORY[0x277CBEBC0];
    v10 = [v3 lastPathComponent];

    v11 = [v9 fileURLWithPath:v10 relativeToURL:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_playback:(id)a3 context:(id)a4 completion:(id)a5 audioStartHandler:(id)a6
{
  v76 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v14 = [(_LTServerSpeakSession *)self _hasCachedCompletion];
  v15 = _LTOSLogTTS();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v14)
  {
    if (v16)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_232E53000, v15, OS_LOG_TYPE_INFO, "Prepping playback for audio data of request", &buf, 2u);
    }

    v17 = [v11 outputFileURL];
    v18 = [(_LTServerSpeakSession *)self _createTemporaryOutputFileWithURL:v17];

    [v10 writeToURL:v18];
    v73 = 0;
    buf = 0u;
    v72 = 0u;
    if (v10)
    {
      [v10 asbd];
      [v10 asbd];
      if (DWORD2(v68) == 1819304813)
      {
        v56 = [v10 packetDescriptions];
        v19 = [v10 rawData];
        goto LABEL_29;
      }
    }

    else
    {
      v70 = 0;
      v69 = 0uLL;
      v68 = 0uLL;
    }

    v57 = v11;
    v58 = v18;
    v55 = v13;
    v20 = [v10 rawData];
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v66 = 0;
    v67 = 0;
    if ([v10 packetCount] < 1)
    {
      v24 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = [v10 packetDescriptions];
        [v25 getBytes:&v66 range:{v22, 16}];

        v26 = MEMORY[0x277CBEA90];
        v27 = [v20 bytes];
        v28 = [v26 dataWithBytes:v27 + v66 length:HIDWORD(v67)];
        [v21 addObject:v28];
        v24 += [v28 length];

        ++v23;
        v22 += 16;
      }

      while ([v10 packetCount] > v23);
    }

    v29 = objc_alloc_init(MEMORY[0x277CE1AC8]);
    if (v10)
    {
      [v10 asbd];
    }

    else
    {
      v75 = 0;
      memset(v74, 0, sizeof(v74));
    }

    v63[0] = _LTAudioFormat48khzPCM;
    v63[1] = *&qword_233005D50;
    v64 = 16;
    v65 = 0;
    v30 = [v29 decodeChunks:v21 from:v74 to:v63 outError:{&v65, 0x100000002, unk_233005D58, _LTAudioFormat48khzPCM}];
    v31 = v65;
    v32 = _LTOSLogTTS();
    v33 = v32;
    if (v31)
    {
      v11 = v57;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [_LTServerSpeakSession _playback:context:completion:audioStartHandler:];
      }

      (v12)[2](v12, v58, v31);
    }

    else
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v34 = v33;
        v35 = [v30 length];
        *v74 = 134218240;
        *&v74[4] = v24;
        *&v74[12] = 2048;
        *&v74[14] = v35;
        _os_log_impl(&dword_232E53000, v34, OS_LOG_TYPE_INFO, "Converted %ld bytes to %ld bytes", v74, 0x16u);
      }

      buf = v54;
      v72 = v53;
      v73 = 16;
      v11 = v57;
    }

    if (v31)
    {
      v18 = v58;
      v19 = v30;
      v13 = v55;
LABEL_40:

      goto LABEL_41;
    }

    v56 = 0;
    v18 = v58;
    v19 = v30;
    v13 = v55;
LABEL_29:
    v36 = [v19 length];
    v37 = v36 / DWORD2(v72);
    v38 = v37 / *&buf;
    v39 = _LTOSLogTTS();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [_LTServerSpeakSession _playback:v37 context:v39 completion:v38 audioStartHandler:?];
    }

    v40 = [_LTPlaybackService alloc];
    *v74 = buf;
    *&v74[16] = v72;
    v75 = v73;
    v41 = [(_LTPlaybackService *)v40 initWithContext:v11 ASBD:v74];
    player = self->_player;
    self->_player = v41;

    v43 = self->_player;
    if (v43)
    {
      v44 = [(_LTPlaybackService *)v43 start];
      if (!v44)
      {
        v48 = [(_LTServerSpeakSession *)self _hasCachedCompletion];
        v49 = _LTOSLogTTS();
        v50 = v49;
        if (v48)
        {
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            [_LTServerSpeakSession _playback:context:completion:audioStartHandler:];
          }

          v51 = [(_LTPlaybackService *)self->_player enqueue:v19 packetCount:0 packetDescriptions:0];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __72___LTServerSpeakSession__playback_context_completion_audioStartHandler___block_invoke;
          block[3] = &unk_2789B79B0;
          v61 = v13;
          v60 = v10;
          v62 = v38;
          dispatch_async(MEMORY[0x277D85CD0], block);
          [(_LTPlaybackService *)self->_player flushAndStop];
          [(_LTPlaybackService *)self->_player reset];
          v52 = _LTOSLogTTS();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            *v74 = 0;
            _os_log_impl(&dword_232E53000, v52, OS_LOG_TYPE_INFO, "Finished TTS playback", v74, 2u);
          }

          (v12)[2](v12, v18, 0);
        }

        else
        {
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *v74 = 0;
            _os_log_impl(&dword_232E53000, v50, OS_LOG_TYPE_INFO, "Not playing back audio for server speak session because it was previously cancelled since this request started", v74, 2u);
          }

          v12[2](v12, 0, 0);
        }

        goto LABEL_39;
      }

      v45 = _LTOSLogTTS();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [_LTServerSpeakSession _playback:context:completion:audioStartHandler:];
      }
    }

    else
    {
      v46 = _LTOSLogTTS();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [_LTServerSpeakSession _playback:context:completion:audioStartHandler:];
      }

      v44 = [MEMORY[0x277CCA9B8] lt_internalTTSCreationError];
    }

    (v12)[2](v12, v18, v44);
LABEL_39:

    goto LABEL_40;
  }

  if (v16)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_232E53000, v15, OS_LOG_TYPE_INFO, "Not playing back audio for server speak session because it was previously cancelled", &buf, 2u);
  }

  v12[2](v12, 0, 0);
LABEL_41:

  v47 = *MEMORY[0x277D85DE8];
}

- (void)speak:(id)a3 context:(id)a4 completion:(id)a5 audioStartHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self->_queue;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke;
  block[3] = &unk_2789B7A50;
  objc_copyWeak(&v26, &location);
  v21 = v10;
  v22 = v11;
  v23 = v14;
  v24 = v12;
  v25 = v13;
  v15 = v13;
  v16 = v14;
  v17 = v11;
  v18 = v10;
  v19 = v12;
  dispatch_async(v16, block);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (void)cancel
{
  v3 = _LTOSLogTTS();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Asked to cancel speak session", v4, 2u);
  }

  [(_LTTranslationEngine *)self->_engine endAudio];
  [(_LTPlaybackService *)self->_player stop];
  [(_LTServerSpeakSession *)self _callCompletionAndClearIfNeeded:0 error:0];
}

- (BOOL)_hasCachedCompletion
{
  v2 = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = __45___LTServerSpeakSession__hasCachedCompletion__block_invoke;
  v7 = &unk_2789B66E0;
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_assert_not_owner(&v2->_lock);
  os_unfair_lock_lock(&v2->_lock);
  v6(v3);

  os_unfair_lock_unlock(&v2->_lock);
  LOBYTE(v2) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v2;
}

- (void)_callCompletionAndClearIfNeeded:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__12;
  v19 = __Block_byref_object_dispose__12;
  v20 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = __63___LTServerSpeakSession__callCompletionAndClearIfNeeded_error___block_invoke;
  v12 = &unk_2789B7A78;
  v13 = self;
  v14 = &v15;
  v8 = v10;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v11(v8);

  os_unfair_lock_unlock(&self->_lock);
  v9 = v16[5];
  if (v9)
  {
    (*(v9 + 16))(v9, v6, v7);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)_playback:context:completion:audioStartHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_playback:(double)a3 context:completion:audioStartHandler:.cold.2(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a3;
  v6 = 2048;
  v7 = a1;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Duration: %f. Total number of frames: %ld", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_playback:context:completion:audioStartHandler:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_playback:context:completion:audioStartHandler:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end