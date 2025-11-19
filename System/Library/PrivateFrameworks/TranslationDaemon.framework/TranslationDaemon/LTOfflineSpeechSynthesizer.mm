@interface LTOfflineSpeechSynthesizer
@end

@implementation LTOfflineSpeechSynthesizer

void __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _LTOSLogTTS();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Received offline TTS metrics:%@ ", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      [v3 asbd];
      v5[2] = v17;
      v5[3] = v18;
      *(v5 + 8) = v19;
      [v3 asbd];
      if (v16 == 1819304813)
      {
        v6 = *(v5 + 9);
        v7 = [v3 audioData];
        [v6 addObject:v7];

        goto LABEL_10;
      }

      [v3 asbd];
      if (v15 == 1869641075)
      {
        v8 = *(v5 + 9);
        v9 = *(v5 + 11);
        v10 = [v3 audioData];
        v11 = [v3 packetCount];
        v12 = [v3 packetDescriptions];
        v13 = [v9 extractAudioChunksFromOpusWithData:v10 packetCount:v11 packetDescriptions:v12];
        [v8 addObjectsFromArray:v13];

        goto LABEL_10;
      }
    }

    else
    {
      WeakRetained[8] = 0;
      *(WeakRetained + 2) = 0u;
      *(WeakRetained + 3) = 0u;
    }

    v14 = _LTOSLogTTS();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_9_cold_1(v14);
    }
  }

LABEL_10:
}

void __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_11(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[10] addObjectsFromArray:v5];
  }
}

void __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = _LTOSLogTTS();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_2_cold_1(v3, v6);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Finished offline TTS, successfully", buf, 2u);
    }

    if (WeakRetained[1])
    {
      v7 = dispatch_time(0, 300000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_13;
      block[3] = &unk_2789B5968;
      block[4] = WeakRetained;
      v9 = *(a1 + 32);
      v10 = v3;
      dispatch_after(v7, MEMORY[0x277D85CD0], block);
    }
  }
}

void __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_13(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = [MEMORY[0x277CE1C50] wordTimingInfoFromSiriTTSService:v3 text:a1[5]];
    v2 = a1[4];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = *(v2 + 48);
  v25 = *(v2 + 32);
  v26 = v5;
  v27 = *(v2 + 64);
  if (*(v2 + 40) == 1869641075)
  {
    v6 = *(v2 + 88);
    v24 = 0;
    v7 = *(v2 + 48);
    *buf = *(v2 + 32);
    v29 = v7;
    v8 = *(v2 + 72);
    v30 = *(v2 + 64);
    v9 = [v6 decodeTo48KHzPCMFromChunks:v8 from:buf outError:&v24];
    v10 = v24;
    v11 = *(a1[4] + 88);
    if (v11)
    {
      [v11 get48khzPCMDescription];
    }

    else
    {
      v30 = 0;
      *buf = 0u;
      v29 = 0u;
    }

    v25 = *buf;
    v26 = v29;
    v27 = v30;
    if (v10)
    {
      v14 = _LTOSLogTTS();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_13_cold_1(v10, v14);
      }
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v13 = *(a1[4] + 72);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_16;
    v22[3] = &unk_2789B6FC8;
    v9 = v12;
    v23 = v9;
    [v13 enumerateObjectsUsingBlock:v22];
    v10 = v23;
  }

  v15 = _LTOSLogTTS();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = [v9 length];
    *buf = 134217984;
    *&buf[4] = v17;
    _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Converted to %ld bytes", buf, 0xCu);
  }

  v18 = [_LTAudioData alloc];
  *buf = v25;
  v29 = v26;
  v30 = v27;
  v19 = [(_LTAudioData *)v18 initWithASBD:buf rawData:v9 wordTimingInfo:v4];
  (*(*(a1[4] + 8) + 16))(*(a1[4] + 8), v19, a1[6], v20);

  v21 = *MEMORY[0x277D85DE8];
}

void __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Encountered error when speaking TTS: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_13_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Decoding to PCM 48kHz failed: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end