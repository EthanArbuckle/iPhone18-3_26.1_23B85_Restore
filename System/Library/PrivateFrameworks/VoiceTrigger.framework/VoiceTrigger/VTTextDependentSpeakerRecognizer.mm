@interface VTTextDependentSpeakerRecognizer
+ (BOOL)psrTdAssetExistsAtResourcePath:(id)a3;
+ (id)errorWithCode:(int64_t)a3 message:(id)a4;
+ (void)_createDirectoryIfDoesNotExist:(id)a3;
- (BOOL)tdPsrCanProcessRequest;
- (VTTextDependentSpeakerRecognizer)initWithResourcePath:(id)a3 satDirectory:(id)a4 assetHash:(id)a5 shouldCreateModelDir:(BOOL)a6 delegate:(id)a7;
- (VTTextDependentSpeakerRecognizerDelegate)delegate;
- (double)_getFloatValueForNDAPIConfigOption:(id)a3 defaultValue:(double)a4;
- (id)_getValueForNDAPIConfigOption:(id)a3;
- (int)_getSATVectorCount;
- (int64_t)getSATVectorCount;
- (void)dealloc;
- (void)deleteExistingSATModel;
- (void)deleteVectorAtIndex:(int)a3;
- (void)endAudio;
- (void)logWithAudioFilepath:(id)a3;
- (void)processAudio:(const signed __int16 *)a3 numSamples:(unint64_t)a4;
- (void)psrAudioProcessor:(id)a3 hasResult:(id)a4 numElements:(unint64_t)a5;
- (void)resetForNewRequest;
- (void)setTdPsrCanProcessRequest:(BOOL)a3;
- (void)updateSAT;
@end

@implementation VTTextDependentSpeakerRecognizer

- (VTTextDependentSpeakerRecognizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)logWithAudioFilepath:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v19 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v19, OS_LOG_TYPE_DEFAULT, "TDSR:: WARN: logAudioFilepath is nil", buf, 2u);
    }

    goto LABEL_12;
  }

  v5 = +[VTPreferences sharedPreferences];
  v6 = [v5 fileLoggingIsEnabled];

  if ((v6 & 1) == 0)
  {
    v20 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v20, OS_LOG_TYPE_DEFAULT, "TDSR:: WARN: logWithAudioFilepath called when AudioFileLogging is NOT enabled.", buf, 2u);
    }

LABEL_12:
    psrAudioDataForLogging = self->_psrAudioDataForLogging;
    self->_psrAudioDataForLogging = 0;

    goto LABEL_13;
  }

  if ([(NSMutableData *)self->_psrAudioDataForLogging length])
  {
    v7 = [v4 lastPathComponent];
    v8 = [v7 stringByDeletingPathExtension];
    v9 = [v8 stringByAppendingString:@"_psr"];
    v10 = [v9 stringByAppendingPathExtension:@"wav"];

    v11 = [v4 stringByDeletingLastPathComponent];
    v12 = [v11 stringByAppendingPathComponent:v10];

    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
    v14 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableData *)self->_psrAudioDataForLogging length];
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v15 >> 1;
      _os_log_impl(&dword_223A31000, v14, OS_LOG_TYPE_DEFAULT, "TDSR:: Writing psr-audio at : %@, numSamples=%lu", buf, 0x16u);
    }

    v16 = [AudioFileWriter alloc];
    *buf = 0x40CF400000000000;
    *&buf[8] = xmmword_223B13210;
    v27 = xmmword_223B13220;
    v23 = 0x40CF400000000000;
    v24 = xmmword_223B13210;
    v25 = xmmword_223B13220;
    v17 = [(AudioFileWriter *)v16 initWithURL:v13 inputFormat:buf outputFormat:&v23];
    [(AudioFileWriter *)v17 addSamples:[(NSMutableData *)self->_psrAudioDataForLogging bytes] len:self->_numSamplesProecssed];
    [(AudioFileWriter *)v17 close];
    v18 = self->_psrAudioDataForLogging;
    self->_psrAudioDataForLogging = 0;
  }

  else
  {
    v22 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v22, OS_LOG_TYPE_DEFAULT, "TDSR:: WARN: logWithAudioFilepath called when psrAudioDataForLogging.length==0", buf, 2u);
    }
  }

LABEL_13:
}

- (id)_getValueForNDAPIConfigOption:(id)a3
{
  v4 = a3;
  v5 = v4;
  novDetect = self->_novDetect;
  if (novDetect)
  {
    v7 = nd_getoption(novDetect, [v4 UTF8String]);
    if (v7)
    {
      novDetect = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    }

    else
    {
      novDetect = 0;
    }
  }

  return novDetect;
}

- (double)_getFloatValueForNDAPIConfigOption:(id)a3 defaultValue:(double)a4
{
  v5 = [(VTTextDependentSpeakerRecognizer *)self _getValueForNDAPIConfigOption:a3];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    a4 = v7;
  }

  return a4;
}

- (void)psrAudioProcessor:(id)a3 hasResult:(id)a4 numElements:(unint64_t)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = VTLogContextFacilityVoiceTrigger;
  v11 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "TDSR:: SpeakerVector available", &v24, 2u);
    }

    v12 = v9;
    v13 = [v9 bytes];
    novDetect = self->_novDetect;
    if (novDetect)
    {
      v15 = nd_sat_analyze(novDetect, v13, a5);
      if (v15)
      {
        v16 = *v15;
        v17 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          numSamplesProecssed = self->_numSamplesProecssed;
          v24 = 134349312;
          v25 = v16;
          v26 = 2050;
          v27 = numSamplesProecssed;
          _os_log_impl(&dword_223A31000, v17, OS_LOG_TYPE_DEFAULT, "TDSR:: Done: SAT: %{public}f, numSamples: %{public}lu", &v24, 0x16u);
        }
      }

      else
      {
        v19 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = self->_novDetect;
          if (v20)
          {
            if (*(v20 + 1) == 2 || *v20 != -1838836561)
            {
              v21 = "Invalid NovDetect object";
            }

            else
            {
              v21 = *(v20 + 4);
            }
          }

          else
          {
            v21 = "Invalid NovDetect pointer (NULL)";
          }

          v24 = 136446210;
          v25 = *&v21;
          _os_log_impl(&dword_223A31000, v19, OS_LOG_TYPE_DEFAULT, "TDSR:: SAT: Failed to compute score: err: %{public}s", &v24, 0xCu);
        }

        v16 = 0.0;
      }

      self->_lastRequestSatScore = v16;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      *&v23 = v16;
      [WeakRetained textDependentSpeakerRecognizer:self hasSatScore:v23];
    }
  }

  else if (v11)
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "TDSR:: ERR: speakerVector is nil!", &v24, 2u);
  }
}

- (void)deleteVectorAtIndex:(int)a3
{
  v11 = *MEMORY[0x277D85DE8];
  novDetect = self->_novDetect;
  if (novDetect && nd_sat_deletevector(novDetect, *&a3))
  {
    v5 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_novDetect;
      if (v6)
      {
        if (*(v6 + 1) == 2 || *v6 != -1838836561)
        {
          v7 = "Invalid NovDetect object";
        }

        else
        {
          v7 = *(v6 + 4);
        }
      }

      else
      {
        v7 = "Invalid NovDetect pointer (NULL)";
      }

      v8[0] = 67240450;
      v8[1] = -1;
      v9 = 2082;
      v10 = v7;
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "TDSR:: NDAPI::Failed to nd_sat_deletevector: err=[%{public}d]:%{public}s", v8, 0x12u);
    }
  }
}

- (void)deleteExistingSATModel
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__VTTextDependentSpeakerRecognizer_deleteExistingSATModel__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __58__VTTextDependentSpeakerRecognizer_deleteExistingSATModel__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:*(*(a1 + 32) + 64) isDirectory:0];

  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = *(*(a1 + 32) + 64);
    v24 = 0;
    v17 = [v4 contentsOfDirectoryAtPath:v5 error:&v24];
    v18 = v24;

    v6 = v17;
    if (!v18 && v17)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v17;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
      if (v8)
      {
        v9 = *v21;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v21 != v9)
            {
              objc_enumerationMutation(v7);
            }

            if (*(*(&v20 + 1) + 8 * i))
            {
              v11 = [*(*(a1 + 32) + 64) stringByAppendingPathComponent:?];
              v12 = VTLogContextFacilityVoiceTrigger;
              if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v26 = v11;
                _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "TDSR:: Removing invalidated speaker model at: %{public}@", buf, 0xCu);
              }

              v13 = [MEMORY[0x277CCAA00] defaultManager];
              v19 = 0;
              [v13 removeItemAtPath:v11 error:&v19];
              v14 = v19;

              if (v14)
              {
                v15 = VTLogContextFacilityVoiceTrigger;
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  v16 = [v14 localizedDescription];
                  *buf = 138543618;
                  v26 = v11;
                  v27 = 2114;
                  v28 = v16;
                  _os_log_impl(&dword_223A31000, v15, OS_LOG_TYPE_DEFAULT, "Couldn't delete invalidated speaker model at path %{public}@ %{public}@", buf, 0x16u);
                }
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
        }

        while (v8);
      }

      v6 = v17;
    }
  }
}

- (void)updateSAT
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__VTTextDependentSpeakerRecognizer_updateSAT__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __45__VTTextDependentSpeakerRecognizer_updateSAT__block_invoke(uint64_t a1)
{
  *&v11[5] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) tdPsrCanProcessRequest])
  {
    v3 = nd_sat_update(*(*(a1 + 32) + 8), v2);
    v4 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) _getSATVectorCount];
      v10 = 134349056;
      *v11 = v5;
      _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "TDSR:: updateSpeakerModel: numSV after update: %{public}ld", &v10, 0xCu);
    }

    if (v3)
    {
      v6 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(a1 + 32) + 8);
        if (v7)
        {
          if (*(v7 + 4) == 2 || *v7 != -1838836561)
          {
            v8 = "Invalid NovDetect object";
          }

          else
          {
            v8 = *(v7 + 32);
          }
        }

        else
        {
          v8 = "Invalid NovDetect pointer (NULL)";
        }

        v10 = 67240450;
        v11[0] = -1;
        LOWORD(v11[1]) = 2082;
        *(&v11[1] + 2) = v8;
        _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "TDSR:: Failed to persist via sat_update: %{public}d, %{public}s", &v10, 0x12u);
      }
    }
  }

  else
  {
    v9 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "TDSR:: TD-PSR Cannot process request, Not updating td-speaker-model", &v10, 2u);
    }
  }
}

- (int)_getSATVectorCount
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = nd_sat_vectorcount(self->_novDetect, a2);
  if (v3 < 0)
  {
    v4 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      novDetect = self->_novDetect;
      if (novDetect)
      {
        if (*(novDetect + 1) == 2 || *novDetect != -1838836561)
        {
          v6 = "Invalid NovDetect object";
        }

        else
        {
          v6 = *(novDetect + 4);
        }
      }

      else
      {
        v6 = "Invalid NovDetect pointer (NULL)";
      }

      v8 = 136446210;
      v9 = v6;
      _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "TDSR:: Failed to getSATVectorCount: %{public}s", &v8, 0xCu);
    }
  }

  return v3;
}

- (int64_t)getSATVectorCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__VTTextDependentSpeakerRecognizer_getSATVectorCount__block_invoke;
  v5[3] = &unk_2784ED078;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __53__VTTextDependentSpeakerRecognizer_getSATVectorCount__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _getSATVectorCount];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)endAudio
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__VTTextDependentSpeakerRecognizer_endAudio__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__VTTextDependentSpeakerRecognizer_endAudio__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) tdPsrCanProcessRequest];
  v3 = VTLogContextFacilityVoiceTrigger;
  if (v2)
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 88);
      *buf = 134349056;
      v8 = v4;
      _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "TDSR:: ending Audio: NumSamples processed: %{public}lu", buf, 0xCu);
    }

    [*(*(a1 + 32) + 32) endAudio];
  }

  else
  {
    v5 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) tdPsrCanProcessRequest];
      *buf = 67240192;
      LODWORD(v8) = v6;
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "TDSR:: WARN: endAudio called without calling resetForNewRequest: _tdPsrResetSuccessfully: %{public}d", buf, 8u);
    }
  }
}

- (void)processAudio:(const signed __int16 *)a3 numSamples:(unint64_t)a4
{
  if (a3)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:2 * a4];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__VTTextDependentSpeakerRecognizer_processAudio_numSamples___block_invoke;
    block[3] = &unk_2784EC980;
    block[4] = self;
    v10 = v6;
    v11 = a4;
    v8 = v6;
    dispatch_async(queue, block);
  }
}

void __60__VTTextDependentSpeakerRecognizer_processAudio_numSamples___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) tdPsrCanProcessRequest])
  {
    [*(*(a1 + 32) + 112) appendData:*(a1 + 40)];
    [*(*(a1 + 32) + 32) addAudio:*(a1 + 40)];
    *(*(a1 + 32) + 88) += *(a1 + 48);
  }

  else
  {
    v2 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) tdPsrCanProcessRequest];
      *buf = 67240192;
      v5 = v3;
      _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "TDSR:: WARN: processAudio called without calling resetForNewRequest: _tdPsrResetSuccessfully: %{public}d", buf, 8u);
    }
  }
}

- (void)resetForNewRequest
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__VTTextDependentSpeakerRecognizer_resetForNewRequest__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __54__VTTextDependentSpeakerRecognizer_resetForNewRequest__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 88) = 0;
  [*(a1 + 32) setTdPsrCanProcessRequest:0];
  *(*(a1 + 32) + 20) = 0;
  kdebug_trace();
  if (nd_reset(*(*(a1 + 32) + 8), v2))
  {
    [*(a1 + 32) setTdPsrCanProcessRequest:0];
    v3 = *(*(a1 + 32) + 8);
    if (v3)
    {
      if (*(v3 + 4) == 2 || *v3 != -1838836561)
      {
        v4 = "Invalid NovDetect object";
      }

      else
      {
        v4 = *(v3 + 32);
      }
    }

    else
    {
      v4 = "Invalid NovDetect pointer (NULL)";
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"nd_reset failed: %d:%s", 0xFFFFFFFFLL, v4];
    v9 = [VTTextDependentSpeakerRecognizer errorWithCode:-1 message:v17];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
    [WeakRetained textDependentSpeakerRecognizer:*(a1 + 32) failedWithError:v9];
  }

  else
  {
    kdebug_trace();
    v5 = [MEMORY[0x277CBEAA8] date];
    kdebug_trace();
    [*(*(a1 + 32) + 32) resetForNewRequest];
    [*(a1 + 32) setTdPsrCanProcessRequest:1];
    v6 = +[VTPreferences sharedPreferences];
    v7 = [v6 fileLoggingIsEnabled];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEB28] data];
    }

    else
    {
      v8 = 0;
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 112);
    *(v11 + 112) = v8;

    kdebug_trace();
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(a1 + 32) + 32);
      [v13 timeIntervalSinceDate:v5];
      *buf = 138543618;
      v19 = v15;
      v20 = 2050;
      v21 = v16 * 1000.0;
      _os_log_impl(&dword_223A31000, v14, OS_LOG_TYPE_DEFAULT, "TDSR:: Done resetForNewRequest: _speakerVectorGenerator: %{public}@: time for TDSR: %{public}f ms", buf, 0x16u);
    }
  }
}

- (void)setTdPsrCanProcessRequest:(BOOL)a3
{
  stateSerialQueue = self->_stateSerialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__VTTextDependentSpeakerRecognizer_setTdPsrCanProcessRequest___block_invoke;
  v4[3] = &unk_2784ED0F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(stateSerialQueue, v4);
}

- (BOOL)tdPsrCanProcessRequest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__VTTextDependentSpeakerRecognizer_tdPsrCanProcessRequest__block_invoke;
  v5[3] = &unk_2784ED078;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)dealloc
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    IntNovDetect::~IntNovDetect(novDetect);
    MEMORY[0x223DF1D20]();
    self->_novDetect = 0;
  }

  v4.receiver = self;
  v4.super_class = VTTextDependentSpeakerRecognizer;
  [(VTTextDependentSpeakerRecognizer *)&v4 dealloc];
}

- (VTTextDependentSpeakerRecognizer)initWithResourcePath:(id)a3 satDirectory:(id)a4 assetHash:(id)a5 shouldCreateModelDir:(BOOL)a6 delegate:(id)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v28.receiver = self;
  v28.super_class = VTTextDependentSpeakerRecognizer;
  v15 = [(VTTextDependentSpeakerRecognizer *)&v28 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeWeak(&v15->_delegate, v14);
    objc_storeStrong(p_isa + 6, a3);
    objc_storeStrong(p_isa + 7, a4);
    objc_storeStrong(p_isa + 9, a5);
    v17 = [p_isa[6] stringByAppendingPathComponent:@"config_sr_sat.txt"];
    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [v18 fileExistsAtPath:v17 isDirectory:0];

    v20 = VTLogContextFacilityVoiceTrigger;
    v21 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v21)
      {
        v22 = p_isa[6];
        *buf = 138543362;
        v30 = v22;
        _os_log_impl(&dword_223A31000, v20, OS_LOG_TYPE_DEFAULT, "TDSR:: resourcePath: %{public}@", buf, 0xCu);
        v20 = VTLogContextFacilityVoiceTrigger;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v30 = v17;
        _os_log_impl(&dword_223A31000, v20, OS_LOG_TYPE_DEFAULT, "TDSR:: tdSrConfigFilePath: %{public}@", buf, 0xCu);
        v20 = VTLogContextFacilityVoiceTrigger;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = p_isa[7];
        *buf = 138543362;
        v30 = v23;
        _os_log_impl(&dword_223A31000, v20, OS_LOG_TYPE_DEFAULT, "TDSR:: _satDirectory: %{public}@", buf, 0xCu);
        v20 = VTLogContextFacilityVoiceTrigger;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = p_isa[9];
        *buf = 138543362;
        v30 = v24;
        _os_log_impl(&dword_223A31000, v20, OS_LOG_TYPE_DEFAULT, "TDSR:: _assetHash: %{public}@", buf, 0xCu);
      }

      if ((initndlib(void)::bNDLibInitialized & 1) == 0)
      {
        initndlib(void)::bNDLibInitialized = 1;
      }

      operator new();
    }

    if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v20, OS_LOG_TYPE_DEFAULT, "TDSR:: No TDSR config file; Not initializing VTTextDependentSpeakerRecognizer", buf, 2u);
    }

    v25 = 0;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (void)_createDirectoryIfDoesNotExist:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  if (![v4 fileExistsAtPath:v3 isDirectory:&v11] || (v11 & 1) == 0)
  {
    v5 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "TDSR:: Creating Directory : %@", buf, 0xCu);
    }

    if ((v11 & 1) == 0)
    {
      v6 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "TDSR:: same name of file exists, this will be removed", buf, 2u);
      }

      [v4 removeItemAtPath:v3 error:0];
    }

    v10 = 0;
    [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v10];
    v7 = v10;
    if (v7)
    {
      v8 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 localizedDescription];
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "TDSR:: Creating Directory failed : %{public}@", buf, 0xCu);
      }
    }
  }
}

+ (id)errorWithCode:(int64_t)a3 message:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  v7 = MEMORY[0x277CCA9B8];
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = @"???";
  }

  v12 = *MEMORY[0x277CCA450];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v7 errorWithDomain:@"VTTextDependentSpeakerRecognizer" code:a3 userInfo:v9];

  return v10;
}

+ (BOOL)psrTdAssetExistsAtResourcePath:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 stringByAppendingPathComponent:@"config_sr_sat.txt"];
  v10 = 0;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v10];

  if (v10 == 1)
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    v8 = 0;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "TDSR:: ERR: expecting file; found dir at: %{public}@", buf, 0xCu);
      v8 = v10 ^ 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v6 & v8;
}

@end