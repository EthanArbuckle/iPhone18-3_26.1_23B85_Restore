@interface LTHybridEndpointer
@end

@implementation LTHybridEndpointer

void __62___LTHybridEndpointer_setServerEndpointerFeatures_withLocale___block_invoke(void **a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_25;
  }

  v4 = a1 + 4;
  v5 = a1[4];
  v6 = [WeakRetained[1] localePair];
  v7 = [v6 sourceLocale];

  if (v5 == v7)
  {
    v12 = _LTOSLogSpeech();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "Received server endpointer features for source locale", &v32, 2u);
    }

    objc_storeStrong(v3 + 6, a1[5]);
    if (v3[3] && v3[5])
    {
      v13 = v3[4];
      v14 = _LTOSLogSpeech();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (v13)
      {
        if (v15)
        {
          v16 = v3[4];
          v17 = v14;
          [v16 floatValue];
          v32 = 134217984;
          v33 = v18;
          _os_log_impl(&dword_232E53000, v17, OS_LOG_TYPE_INFO, "Updating source endpointer threshold to %f", &v32, 0xCu);
        }

        v20 = v3[3];
        v19 = v3[4];
        goto LABEL_22;
      }

      if (v15)
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Re-request sampling rate for source endpointer", &v32, 2u);
      }

      v31 = v3[3];
LABEL_32:
      [v31 requestSupportedWithSamplingRate:v3[18]];
    }
  }

  else
  {
    v8 = *v4;
    v9 = [v3[1] localePair];
    v10 = [v9 targetLocale];
    v11 = v10;
    if (v8 != v10)
    {

      goto LABEL_23;
    }

    v21 = [v3[1] autodetectLanguage];

    if (!v21)
    {
LABEL_23:
      v29 = _LTOSLogSpeech();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __62___LTHybridEndpointer_setServerEndpointerFeatures_withLocale___block_invoke_cold_1(v4, v29);
      }

      goto LABEL_25;
    }

    v22 = _LTOSLogSpeech();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_232E53000, v22, OS_LOG_TYPE_INFO, "Received server endpointer features for target locale", &v32, 2u);
    }

    objc_storeStrong(v3 + 10, a1[5]);
    if (v3[7] && v3[9])
    {
      v23 = v3[8];
      v24 = _LTOSLogSpeech();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (v23)
      {
        if (v25)
        {
          v26 = v3[8];
          v27 = v24;
          [v26 floatValue];
          v32 = 134217984;
          v33 = v28;
          _os_log_impl(&dword_232E53000, v27, OS_LOG_TYPE_INFO, "Updating target endpointer threshold to %f", &v32, 0xCu);
        }

        v20 = v3[7];
        v19 = v3[8];
LABEL_22:
        [v19 floatValue];
        [v20 updateEndpointerThresholdWithValue:?];
        goto LABEL_25;
      }

      if (v25)
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_232E53000, v24, OS_LOG_TYPE_INFO, "Re-request sampling rate for target endpointer", &v32, 2u);
      }

      v31 = v3[7];
      goto LABEL_32;
    }
  }

LABEL_25:

  v30 = *MEMORY[0x277D85DE8];
}

void __42___LTHybridEndpointer_addSpeechAudioData___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) length] / *(WeakRetained + 19);
    v4 = _LTOSLogSpeech();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Adding audio samples %zu", &v6, 0xCu);
    }

    [*(WeakRetained + 11) addAudio:*(a1 + 32) numSamples:v3];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __31___LTHybridEndpointer_endAudio__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _LTOSLogSpeech();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "Sending end of audio to SPG", v3, 2u);
    }

    [WeakRetained[11] endAudio];
  }
}

void __54___LTHybridEndpointer_clientSilenceFeaturesAvailable___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[3])
    {
      *(WeakRetained + 104) = [WeakRetained didEndpointWithFeatures:WeakRetained[6] silenceFeatures:*(a1 + 32) endpointer:?];
      v4 = _LTOSLogSpeech();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(v3 + 104);
        v12 = 67109120;
        v13 = v5;
        _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Endpointing decision from source endpointer %{BOOL}i", &v12, 8u);
      }
    }

    if (v3[7])
    {
      if ((v3[13] & 1) == 0)
      {
        if ([v3[1] autodetectLanguage])
        {
          *(v3 + 104) = [v3 didEndpointWithFeatures:v3[10] silenceFeatures:*(a1 + 32) endpointer:v3[7]];
          v6 = _LTOSLogSpeech();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            v7 = *(v3 + 104);
            v12 = 67109120;
            v13 = v7;
            _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Endpointing decision from target endpointer %{BOOL}i", &v12, 8u);
          }
        }
      }
    }

    if (*(v3 + 104) == 1)
    {
      v8 = objc_loadWeakRetained(v3 + 12);
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = objc_loadWeakRetained(v3 + 12);
        [v10 hybridEndpointerFoundEndpoint];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __62___LTHybridEndpointer_setServerEndpointerFeatures_withLocale___block_invoke_cold_1(void **a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 localeIdentifier];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_232E53000, v3, OS_LOG_TYPE_ERROR, "Unexpected locale %{public}@ for server endpointer features", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end