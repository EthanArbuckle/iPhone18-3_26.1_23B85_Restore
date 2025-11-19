@interface SSRVoiceProfileRetrainerPSRExclave
- (BOOL)implicitTrainingRequired;
- (BOOL)needsRetrainingWithAudioFiles:(id)a3;
- (BOOL)resetModelForRetraining;
- (NSString)description;
- (SSRVoiceProfileRetrainerPSRExclave)initWithVoiceRetrainingContext:(id)a3 secureAsset:(id)a4 secureSpeakerRecognitionConfig:(id)a5;
- (id)_composeSpeakerConfusionWithScores:(id)a3 forProfiles:(id)a4;
- (id)_logSpeakerConfusion:(id)a3 forProfileArray:(id)a4 withPrependString:(id)a5;
- (id)_processAudioFile:(id)a3;
- (id)_processSpeakerVector:(id)a3 withSize:(unint64_t)a4 withScorers:(id)a5 processedAudioDurationMs:(unint64_t)a6;
- (id)purgeConfusionInformationWithPolicy:(id)a3;
- (void)_logSpeakerConfusionWithExplicitScores:(id)a3 withImplicitScores:(id)a4 withPurgeUtterances:(unint64_t)a5 forProfile:(id)a6 forConfigVersion:(id)a7;
- (void)addUtterances:(id)a3 withPolicy:(id)a4 withCompletion:(id)a5;
- (void)dealloc;
- (void)purgeLastSpeakerEmbedding;
@end

@implementation SSRVoiceProfileRetrainerPSRExclave

- (id)_processSpeakerVector:(id)a3 withSize:(unint64_t)a4 withScorers:(id)a5 processedAudioDurationMs:(unint64_t)a6
{
  v25 = a6;
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        [v16 scoreSpeakerVector:v8 withDimensions:a4 withThresholdType:{0, v25}];
        v17 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        v18 = [v16 profileID];
        [v10 setObject:v17 forKeyedSubscript:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v13);
  }

  v32[0] = v10;
  v31[0] = @"spIdKnownUserPSRScores";
  v31[1] = @"spIdAudioProcessedDuration";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
  v32[1] = v19;
  v31[2] = @"bestVoiceTriggerScore";
  *&v20 = self->_bestTriggerScore;
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v32[2] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_processAudioFile:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D01970];
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileRetrainerPSRExclave _processAudioFile:]";
    *&buf[12] = 2114;
    *&buf[14] = v4;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Processing %{public}@", buf, 0x16u);
  }

  self->_bestTriggerScore = -1.0;
  novDetector = self->_novDetector;
  nd_reset();
  self->_currUttLengthInMs = 0xFFFFFFFFLL;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__1345;
  v44 = __Block_byref_object_dispose__1346;
  v45 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3810000000;
  v57 = &unk_225ECB98D;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  [MEMORY[0x277D01748] lpcmInt16ASBD];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __56__SSRVoiceProfileRetrainerPSRExclave__processAudioFile___block_invoke;
  v33[3] = &unk_278578A70;
  v8 = COERCE_DOUBLE(v4);
  v34 = v8;
  v35 = self;
  v36 = &v40;
  v37 = v39;
  v38 = buf;
  [SSRUtils streamAudioFromFileUrl:*&v8 audioStreamBasicDescriptor:v50 samplesPerStreamChunk:640 audioDataAvailableHandler:v33];
  v9 = v41[5];
  if (v9)
  {
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *v50 = 136315650;
      v51 = "[SSRVoiceProfileRetrainerPSRExclave _processAudioFile:]";
      v52 = 2114;
      v53 = v8;
      v54 = 2114;
      v55 = v9;
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ERR: Failed processing %{public}@ with error %{public}@", v50, 0x20u);
      v9 = v41[5];
    }

    v11 = v9;
  }

  else if (self->_currUttLengthInMs > 0xC7)
  {
    v16 = *&buf[8];
    v17 = *(*&buf[8] + 48);
    self->_bestTriggerScore = v17;
    v18 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 136315394;
      v51 = "[SSRVoiceProfileRetrainerPSRExclave _processAudioFile:]";
      v52 = 2050;
      v53 = v17;
      _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s Found last detection results, trigger score = %{public}f", v50, 0x16u);
      v16 = *&buf[8];
    }

    v19 = self->_novDetector;
    v20 = *(v16 + 40);
    v21 = nd_getsupervector();
    if (v21)
    {
      v22 = [MEMORY[0x277CBEA90] dataWithBytes:*v21 length:4 * *(v21 + 8)];
      speakerVector = self->_speakerVector;
      self->_speakerVector = v22;

      v24 = [(NSData *)self->_speakerVector length];
      v11 = 0;
      currUttLengthInMs = self->_currUttLengthInMs;
      self->_speakerVectorSize = v24 >> 2;
      self->_processedAudioDurationMs = currUttLengthInMs;
    }

    else
    {
      processedAudioDurationMs = self->_processedAudioDurationMs;
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"speakerVector is nil! for processedAUdioDurationMs: %lu, _currUttLengthInMs: %lu", processedAudioDurationMs, self->_currUttLengthInMs];
      v28 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA450];
      v47 = v27;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v30 = [v28 errorWithDomain:@"com.apple.speakerrecognition" code:743 userInfo:v29];

      v11 = v30;
    }
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Too little audio %dms in %@ - Bailing out", self->_currUttLengthInMs, *&v8];
    v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *v50 = 136315394;
      v51 = "[SSRVoiceProfileRetrainerPSRExclave _processAudioFile:]";
      v52 = 2114;
      v53 = v12;
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s %{public}@", v50, 0x16u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA450];
    v49 = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v11 = [v14 errorWithDomain:@"com.apple.speakerrecognition" code:751 userInfo:v15];
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v40, 8);

  v31 = *MEMORY[0x277D85DE8];

  return v11;
}

void __56__SSRVoiceProfileRetrainerPSRExclave__processAudioFile___block_invoke(void *a1, uint64_t a2, int a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (v8)
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *buf = 136315394;
      v27 = "[SSRVoiceProfileRetrainerPSRExclave _processAudioFile:]_block_invoke";
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Failed to read file: %@", buf, 0x16u);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a4);
  }

  else if (a3)
  {
    v11 = *(*(a1[7] + 8) + 24);
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    *(a1[5] + 104) = ((v11 / v12) * 1000.0);
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[4];
      v15 = *(a1[5] + 104);
      *buf = 136315650;
      v27 = "[SSRVoiceProfileRetrainerPSRExclave _processAudioFile:]_block_invoke";
      v28 = 2050;
      v29 = v15;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Reached end of file. _currUttLengthInMs: %{public}lu, calling endAudio: %@", buf, 0x20u);
    }

    v16 = *(a1[5] + 8);
    nd_endwavedata();
    v17 = *(a1[5] + 8);
    v18 = nd_getresults();
    if (v18)
    {
      v19 = *(a1[8] + 8);
      v20 = *v18;
      *(v19 + 48) = *(v18 + 16);
      *(v19 + 32) = v20;
    }
  }

  else
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    v22 = [v21 length];
    [MEMORY[0x277D01748] lpcmInt16ASBD];
    *(*(a1[7] + 8) + 24) += v22 / v25;
    v23 = *(a1[5] + 8);
    [v21 bytes];
    nd_wavedata();
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_logSpeakerConfusion:(id)a3 forProfileArray:(id)a4 withPrependString:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1345;
  v23 = __Block_byref_object_dispose__1346;
  v24 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10 = objc_autoreleasePoolPush();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__SSRVoiceProfileRetrainerPSRExclave__logSpeakerConfusion_forProfileArray_withPrependString___block_invoke;
  v15[3] = &unk_278578378;
  v18 = &v19;
  v11 = v9;
  v16 = v11;
  v12 = v8;
  v17 = v12;
  [v7 enumerateObjectsUsingBlock:v15];
  if ([v20[5] length])
  {
    [v20[5] appendFormat:@"----------------------------------------------------------------------------------------------\n\n"];
  }

  objc_autoreleasePoolPop(v10);
  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v13;
}

void __93__SSRVoiceProfileRetrainerPSRExclave__logSpeakerConfusion_forProfileArray_withPrependString___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  if (!a3)
  {
    [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"\n\n%@\n----------------------------------------------------------------------------------------------\n", *(a1 + 32)];
    [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"              "];
    if ([*(a1 + 40) count])
    {
      v5 = 0;
      do
      {
        v6 = *(*(*(a1 + 48) + 8) + 40);
        v7 = [*(a1 + 40) objectAtIndexedSubscript:v5];
        [v6 appendFormat:@"%@  ", v7];

        ++v5;
      }

      while (v5 < [*(a1 + 40) count]);
    }

    [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"\n"];
  }

  [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"Utterance%02d   ", a3];
  if ([v13 count])
  {
    v8 = 0;
    do
    {
      v9 = *(*(*(a1 + 48) + 8) + 40);
      if (v8)
      {
        v10 = @"%39.2f";
      }

      else
      {
        v10 = @"%16.2f";
      }

      v11 = [v13 objectAtIndexedSubscript:v8];
      [v11 floatValue];
      [v9 appendFormat:v10, v12];

      ++v8;
    }

    while (v8 < [v13 count]);
  }

  [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"\n"];
}

- (id)_composeSpeakerConfusionWithScores:(id)a3 forProfiles:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22 = a4;
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v12 = [v10 objectForKeyedSubscript:@"spIdKnownUserPSRScores"];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v13 = v22;
        v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v25;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [v12 objectForKeyedSubscript:*(*(&v24 + 1) + 8 * j)];
              [v11 addObject:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v15);
        }

        [v23 addObject:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_logSpeakerConfusionWithExplicitScores:(id)a3 withImplicitScores:(id)a4 withPurgeUtterances:(unint64_t)a5 forProfile:(id)a6 forConfigVersion:(id)a7
{
  v69 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v12 && [v12 count])
  {
    v16 = [v14 profileID];
    v17 = [v12 objectAtIndexedSubscript:0];
    v18 = [v17 objectForKeyedSubscript:@"spIdKnownUserPSRScores"];

    v57 = v18;
    v19 = [v18 allKeys];
    v20 = [v19 mutableCopy];

    if ([v20 containsObject:v16])
    {
      [v20 removeObject:v16];
      v54 = v16;
      [v20 insertObject:v16 atIndex:0];
      v21 = [(SSRVoiceProfileRetrainerPSRExclave *)self _composeSpeakerConfusionWithScores:v12 forProfiles:v20];
      v22 = [(SSRVoiceProfileRetrainerPSRExclave *)self _composeSpeakerConfusionWithScores:v13 forProfiles:v20];
      v61[0] = @"locale";
      v23 = [v14 locale];
      v24 = v23;
      v25 = @"unknown";
      if (v15)
      {
        v25 = v15;
      }

      v62[0] = v23;
      v62[1] = v25;
      v61[1] = @"asset";
      v61[2] = @"explicitUtteranceConfusion";
      v55 = v22;
      v56 = v21;
      v62[2] = v21;
      v62[3] = v22;
      v61[3] = @"implicitUtteranceConfusion";
      v61[4] = @"purgedUtteranceCount";
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
      v62[4] = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:5];

      v28 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v64 = "[SSRVoiceProfileRetrainerPSRExclave _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
        v65 = 2112;
        v66 = v27;
        _os_log_impl(&dword_225E12000, v28, OS_LOG_TYPE_DEFAULT, "%s Log %@", buf, 0x16u);
      }

      v53 = v27;
      v29 = [MEMORY[0x277D01788] sharedPreferences];
      v30 = [v29 fileLoggingIsEnabled];

      v16 = v54;
      if (v30)
      {
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Explicit Utterance Confusion Matrix for User - %@ is", v54];
        v50 = [(SSRVoiceProfileRetrainerPSRExclave *)self _logSpeakerConfusion:v56 forProfileArray:v20 withPrependString:v31];

        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Implicit Utterance Confusion Matrix for User - %@ is", v54];
        v49 = [(SSRVoiceProfileRetrainerPSRExclave *)self _logSpeakerConfusion:v55 forProfileArray:v20 withPrependString:v32];

        v59[0] = @"explicitUtteranceConfusion";
        v59[1] = @"implicitUtteranceConfusion";
        v60[0] = v12;
        v60[1] = v13;
        v59[2] = @"purgedUtteranceCount";
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
        v60[2] = v33;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:3];

        v58 = 0;
        v48 = v34;
        v52 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v34 options:3 error:&v58];
        v51 = v58;
        if (v51)
        {
          v35 = MEMORY[0x277D01970];
          v36 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            v37 = v36;
            v38 = [v51 localizedDescription];
            *buf = 136315394;
            v64 = "[SSRVoiceProfileRetrainerPSRExclave _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
            v65 = 2114;
            v66 = v38;
            _os_log_error_impl(&dword_225E12000, v37, OS_LOG_TYPE_ERROR, "%s ERR: Failed to get json object with error %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"CS-VoiceId-UserConfusion-%@.json", v54];
          v42 = [MEMORY[0x277D01788] sharedPreferences];
          v43 = [v42 voiceTriggerAudioLogDirectory];
          v44 = [v43 stringByAppendingPathComponent:v41];

          v45 = [SSRUtils removeItemAtPath:v44];
          [v52 writeToFile:v44 atomically:0];

          v35 = MEMORY[0x277D01970];
        }

        v46 = *v35;
        if (os_log_type_enabled(*v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v64 = "[SSRVoiceProfileRetrainerPSRExclave _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
          v65 = 2114;
          v66 = v50;
          _os_log_impl(&dword_225E12000, v46, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
          v46 = *v35;
        }

        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v64 = "[SSRVoiceProfileRetrainerPSRExclave _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
          v65 = 2114;
          v66 = v49;
          _os_log_impl(&dword_225E12000, v46, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v40 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v64 = "[SSRVoiceProfileRetrainerPSRExclave _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
        v65 = 2114;
        v66 = v16;
        v67 = 2114;
        v68 = v20;
        _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s profile %{public}@ is not present in %{public}@ - Bailing out", buf, 0x20u);
      }
    }
  }

  else
  {
    v39 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v64 = "[SSRVoiceProfileRetrainerPSRExclave _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
      _os_log_impl(&dword_225E12000, v39, OS_LOG_TYPE_DEFAULT, "%s explicit scores are nil - Bailing out", buf, 0xCu);
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (id)purgeConfusionInformationWithPolicy:(id)a3
{
  v98[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  comparativeModels = self->_comparativeModels;
  if (comparativeModels)
  {
    v6 = [SSRSpeakerRecognitionScorer createVoiceScorersWithVoiceProfiles:comparativeModels withConfigFile:self->_configFilePath withResourceFile:self->_resourceFilePath withOffsetsType:0 forRetraining:1];
    v7 = v6;
    if (!v6 || ![v6 count])
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = self->_comparativeModels;
      v11 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
      v8 = [v9 stringWithFormat:@"Cannot create comparative scorers from %@ on profile %@", v10, v11];

      v12 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v88 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
        v89 = 2114;
        *v90 = v8;
        _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v13 = MEMORY[0x277CCA9B8];
      v97 = @"reason";
      v98[0] = v8;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:&v97 count:1];
      v15 = [v13 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:v14];
      goto LABEL_55;
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v8 addObjectsFromArray:v7];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = 0;
  }

  v16 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
  v17 = [(SSRVoiceProfile *)self->_voiceProfile getExplicitEnrollmentUtterancesForType:self->_spIdType];
  v18 = [v17 count];

  if (v18 <= 2)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
    v14 = [v19 stringWithFormat:@"ExpSatVectorCount is invalid (%lu) for profile %@ - Bailingout", v18, v20];

    v21 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v88 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
      v89 = 2114;
      *v90 = v14;
      _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v95 = @"reason";
    v96 = v14;
    v23 = MEMORY[0x277CBEAC0];
    v24 = &v96;
    v25 = &v95;
LABEL_17:
    v29 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
    v15 = [v22 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:v29];
    goto LABEL_54;
  }

  if (v16 < v18)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
    v14 = [v26 stringWithFormat:@"satVectorCount %lu is < %luE for profile %@ - Bailingout", v16, v18, v27];

    v28 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v88 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
      v89 = 2114;
      *v90 = v14;
      _os_log_error_impl(&dword_225E12000, v28, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v93 = @"reason";
    v94 = v14;
    v23 = MEMORY[0x277CBEAC0];
    v24 = &v94;
    v25 = &v93;
    goto LABEL_17;
  }

  v78 = v8;
  v76 = v7;
  v30 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    voiceProfile = self->_voiceProfile;
    v32 = v30;
    v33 = [(SSRVoiceProfile *)voiceProfile profileID];
    *buf = 136315906;
    v88 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
    v89 = 2114;
    *v90 = v33;
    *&v90[8] = 2050;
    *&v90[10] = v16;
    v91 = 2050;
    v92 = v18;
    _os_log_impl(&dword_225E12000, v32, OS_LOG_TYPE_DEFAULT, "%s Processing Voice Profile %{public}@ with vectorCount %{public}lu and expVectorCount %{public}lu", buf, 0x2Au);
  }

  v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v80 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v16 - v18];
  v79 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v18];
  do
  {
    v34 = v16 - 1;
    v35 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSpeakerVectorAtIndex:v16 - 1];
    v36 = *MEMORY[0x277D01970];
    if (v35)
    {
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v37 = self->_voiceProfile;
        v38 = v36;
        v39 = [(SSRVoiceProfile *)v37 profileID];
        v40 = [v35 length];
        *buf = 136315906;
        v88 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
        v89 = 2050;
        *v90 = v16 - 1;
        *&v90[8] = 2114;
        *&v90[10] = v39;
        v91 = 2050;
        v92 = v40 >> 2;
        _os_log_impl(&dword_225E12000, v38, OS_LOG_TYPE_DEFAULT, "%s Processing %{public}lu vector from %{public}@ with size %{public}lu", buf, 0x2Au);
      }

      v41 = -[SSRVoiceProfileRetrainerPSRExclave _processSpeakerVector:withSize:withScorers:processedAudioDurationMs:](self, "_processSpeakerVector:withSize:withScorers:processedAudioDurationMs:", v35, [v35 length] >> 2, v8, 0);
      v42 = v41;
      if (!v41)
      {
        v54 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          v55 = self->_voiceProfile;
          v56 = v54;
          v57 = [(SSRVoiceProfile *)v55 profileID];
          *buf = 136315650;
          v88 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
          v89 = 1026;
          *v90 = v16 - 1;
          v8 = v78;
          *&v90[4] = 2114;
          *&v90[6] = v57;
          _os_log_error_impl(&dword_225E12000, v56, OS_LOG_TYPE_ERROR, "%s Failed to get scores for vectorIdx %{public}u of profile %{public}@", buf, 0x1Cu);
        }

        goto LABEL_42;
      }

      v43 = [v41 mutableCopy];
      if (!v43)
      {
        v58 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v88 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
          v89 = 2114;
          *v90 = v42;
          _os_log_error_impl(&dword_225E12000, v58, OS_LOG_TYPE_ERROR, "%s Failed to allocate mapped scores for %{public}@", buf, 0x16u);
        }

        goto LABEL_41;
      }

      if (v16 <= v18)
      {
        v59 = v79;
      }

      else
      {
        if (v4)
        {
          v44 = v4[2](v4, v42);
          [v80 addObject:v43];
          if ((v44 & 1) == 0)
          {
            v45 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              v46 = v16 - 1;
              v47 = self->_voiceProfile;
              v48 = v45;
              v49 = [(SSRVoiceProfile *)v47 profileID];
              *buf = 136315650;
              v88 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
              v89 = 1026;
              *v90 = v46;
              v8 = v78;
              *&v90[4] = 2114;
              *&v90[6] = v49;
              _os_log_impl(&dword_225E12000, v48, OS_LOG_TYPE_DEFAULT, "%s Adding vector %{public}u for deletion from profile %{public}@", buf, 0x1Cu);
            }

            v50 = [MEMORY[0x277CCABB0] numberWithInteger:v34];
            [v77 addObject:v50];
          }

          goto LABEL_41;
        }

        v59 = v80;
      }

      [v59 addObject:v43];
LABEL_41:

LABEL_42:
      goto LABEL_43;
    }

    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v51 = self->_voiceProfile;
      v52 = v36;
      v53 = [(SSRVoiceProfile *)v51 profileID];
      *buf = 136315650;
      v88 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
      v89 = 1024;
      *v90 = v16 - 1;
      v8 = v78;
      *&v90[4] = 2114;
      *&v90[6] = v53;
      _os_log_error_impl(&dword_225E12000, v52, OS_LOG_TYPE_ERROR, "%s Failed to %u vector from profile %{public}@", buf, 0x1Cu);
    }

LABEL_43:

    v16 = v34;
  }

  while ((v34 + 1) > 1);
  v81 = v4;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v14 = v77;
  v60 = [v14 countByEnumeratingWithState:&v82 objects:v86 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v83;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v83 != v62)
        {
          objc_enumerationMutation(v14);
        }

        v64 = *(*(&v82 + 1) + 8 * i);
        v65 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v66 = v14;
          v67 = self->_voiceProfile;
          v68 = v65;
          v69 = [(SSRVoiceProfile *)v67 profileID];
          *buf = 136315650;
          v88 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
          v89 = 2114;
          *v90 = v64;
          *&v90[8] = 2114;
          *&v90[10] = v69;
          _os_log_impl(&dword_225E12000, v68, OS_LOG_TYPE_DEFAULT, "%s Deleting vector %{public}@ from profile %{public}@", buf, 0x20u);

          v14 = v66;
        }

        -[SSRSpeakerRecognitionScorer deleteVectorAtIndex:](self->_psrScorer, "deleteVectorAtIndex:", [v64 intValue]);
      }

      v61 = [v14 countByEnumeratingWithState:&v82 objects:v86 count:16];
    }

    while (v61);
  }

  v70 = [v14 count];
  v71 = self->_voiceProfile;
  configVersion = self->_configVersion;
  v73 = self;
  v29 = v80;
  [(SSRVoiceProfileRetrainerPSRExclave *)v73 _logSpeakerConfusionWithExplicitScores:v79 withImplicitScores:v80 withPurgeUtterances:v70 forProfile:v71 forConfigVersion:configVersion];

  v15 = 0;
  v4 = v81;
  v7 = v76;
  v8 = v78;
LABEL_54:

LABEL_55:
  v74 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)purgeLastSpeakerEmbedding
{
  *&v16[13] = *MEMORY[0x277D85DE8];
  v3 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
  v4 = *MEMORY[0x277D01970];
  if (v3)
  {
    v5 = (v3 - 1);
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      voiceProfile = self->_voiceProfile;
      v7 = v4;
      v8 = [(SSRVoiceProfile *)voiceProfile profileID];
      v13 = 136315650;
      v14 = "[SSRVoiceProfileRetrainerPSRExclave purgeLastSpeakerEmbedding]";
      v15 = 1026;
      *v16 = v5;
      v16[2] = 2114;
      *&v16[3] = v8;
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Deleting vector %{public}d from profile %{public}@", &v13, 0x1Cu);
    }

    [(SSRSpeakerRecognitionScorer *)self->_psrScorer deleteVectorAtIndex:v5];
  }

  else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v10 = self->_voiceProfile;
    v11 = v4;
    v12 = [(SSRVoiceProfile *)v10 profileID];
    v13 = 136315394;
    v14 = "[SSRVoiceProfileRetrainerPSRExclave purgeLastSpeakerEmbedding]";
    v15 = 2114;
    *v16 = v12;
    _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s ERR: Vector count of zero for profile %{public}@", &v13, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addUtterances:(id)a3 withPolicy:(id)a4 withCompletion:(id)a5
{
  v97[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v62 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v8 && [v8 count])
  {
    v58 = v11;
    v59 = v10;
    v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v68 addObject:self->_psrScorer];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v60 = v8;
    obj = v8;
    v12 = [obj countByEnumeratingWithState:&v71 objects:v95 count:16];
    v13 = v67;
    if (!v12)
    {
      goto LABEL_34;
    }

    v14 = v12;
    v15 = *v72;
    v70 = *MEMORY[0x277CCA450];
    v66 = v9;
    v61 = *v72;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v72 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v71 + 1) + 8 * v16);
        v18 = [v17 pathExtension];
        v19 = [v18 isEqualToString:@"wav"];

        if (v19)
        {
          v20 = [(SSRVoiceProfileRetrainerPSRExclave *)self _processAudioFile:v17];
          if (v20)
          {
            v21 = v20;
            v22 = [v17 path];
            [v13 setObject:v21 forKey:v22];
            goto LABEL_16;
          }

          v22 = [(SSRVoiceProfileRetrainerPSRExclave *)self _processSpeakerVector:self->_speakerVector withSize:self->_speakerVectorSize withScorers:v68 processedAudioDurationMs:self->_processedAudioDurationMs];
          if (!v22)
          {
            v38 = MEMORY[0x277CCACA8];
            v39 = [v17 lastPathComponent];
            v40 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
            v28 = [v38 stringWithFormat:@"Failed to get scorecard for utterance %@ on profile %@", v39, v40];

            v41 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v78 = "[SSRVoiceProfileRetrainerPSRExclave addUtterances:withPolicy:withCompletion:]";
              v79 = 2114;
              v80 = v28;
              _os_log_error_impl(&dword_225E12000, v41, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
            }

            v42 = MEMORY[0x277CCA9B8];
            v91 = @"reason";
            v92 = v28;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
            v21 = [v42 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:v43];

            v44 = [v17 path];
            v13 = v67;
            [v67 setObject:v21 forKey:v44];

            v9 = v66;
            goto LABEL_15;
          }

          if (!v9 || (v9[2](v9, v17, v22), (v29 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v28 = [(NSURL *)self->_psrModelFilePath URLByDeletingLastPathComponent];
            v30 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              log = v30;
              v63 = [v17 lastPathComponent];
              v31 = [(NSURL *)self->_psrModelFilePath lastPathComponent];
              v32 = [v28 lastPathComponent];
              v33 = [v28 URLByDeletingLastPathComponent];
              [v33 lastPathComponent];
              v34 = v64 = v28;
              v35 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
              *buf = 136316674;
              v78 = "[SSRVoiceProfileRetrainerPSRExclave addUtterances:withPolicy:withCompletion:]";
              v79 = 2114;
              v80 = v63;
              v81 = 2114;
              v82 = v31;
              v83 = 2114;
              v84 = v32;
              v85 = 2114;
              v86 = v34;
              v87 = 2050;
              v88 = v35;
              v89 = 2114;
              v90 = v22;
              _os_log_impl(&dword_225E12000, log, OS_LOG_TYPE_DEFAULT, "%s Adding %{public}@ to {%{public}@, %{public}@, %{public}@} as %{public}lu vector with scoreCard %{public}@", buf, 0x48u);

              v15 = v61;
              v28 = v64;

              v9 = v66;
            }

            v36 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
            [(SSRSpeakerRecognitionScorer *)self->_psrScorer updateSAT];
            if ([(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount]- v36 == 1)
            {
              v37 = [v17 path];
              [v62 setObject:v22 forKey:v37];
              v21 = 0;
            }

            else
            {
              v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Reached max (%lu) of training utterances, Skipped SAT model update", -[SSRSpeakerRecognitionScorer getSATVectorCount](self->_psrScorer, "getSATVectorCount")];
              v45 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v78 = "[SSRVoiceProfileRetrainerPSRExclave addUtterances:withPolicy:withCompletion:]";
                v79 = 2114;
                v80 = v37;
                _os_log_error_impl(&dword_225E12000, v45, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
              }

              v46 = MEMORY[0x277CCA9B8];
              v75 = v70;
              v76 = v37;
              v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
              v21 = [v46 errorWithDomain:@"com.apple.speakerrecognition" code:739 userInfo:v47];

              v48 = [v17 path];
              [v67 setObject:v21 forKey:v48];

              v9 = v66;
            }

            v13 = v67;
            goto LABEL_15;
          }

          v21 = v29;
        }

        else
        {
          v23 = MEMORY[0x277CCACA8];
          v24 = [v17 path];
          v22 = [v23 stringWithFormat:@"Invalid file format %@ ", v24];

          v25 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v78 = "[SSRVoiceProfileRetrainerPSRExclave addUtterances:withPolicy:withCompletion:]";
            v79 = 2114;
            v80 = v22;
            _os_log_error_impl(&dword_225E12000, v25, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
          }

          v26 = MEMORY[0x277CCA9B8];
          v93 = v70;
          v94 = v22;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          v21 = [v26 errorWithDomain:@"com.apple.speakerrecognition" code:729 userInfo:v27];
        }

        v28 = [v17 path];
        [v13 setObject:v21 forKey:v28];
LABEL_15:

LABEL_16:
        ++v16;
      }

      while (v14 != v16);
      v49 = [obj countByEnumeratingWithState:&v71 objects:v95 count:16];
      v14 = v49;
      if (!v49)
      {
LABEL_34:

        voiceProfile = self->_voiceProfile;
        v51 = [(NSURL *)self->_psrModelFilePath absoluteString];
        [(SSRVoiceProfile *)voiceProfile updateVoiceProfilePathExclave:v51];

        v10 = v59;
        if (v59)
        {
          (*(v59 + 2))(v59, 0, v62, v67);
        }

        v8 = v60;
        v11 = v58;
        v52 = v68;
        goto LABEL_39;
      }
    }
  }

  v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"File Array is nil"];
  v52 = v53;
  if (v10)
  {
    v54 = MEMORY[0x277CCA9B8];
    v96 = *MEMORY[0x277CCA450];
    v97[0] = v53;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:&v96 count:1];
    v56 = [v54 errorWithDomain:@"com.apple.speakerrecognition" code:701 userInfo:v55];
    (*(v10 + 2))(v10, v56, 0, 0);
  }

LABEL_39:

  objc_autoreleasePoolPop(v11);
  v57 = *MEMORY[0x277D85DE8];
}

- (BOOL)implicitTrainingRequired
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    maximumSpeakerVectors = self->_maximumSpeakerVectors;
    v8 = 136315650;
    v9 = "[SSRVoiceProfileRetrainerPSRExclave implicitTrainingRequired]";
    v10 = 2050;
    v11 = v3;
    v12 = 2050;
    v13 = maximumSpeakerVectors;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s satVectorCount %{public}ld maxCount %{public}ld", &v8, 0x20u);
  }

  result = v3 < self->_maximumSpeakerVectors;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)needsRetrainingWithAudioFiles:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(SSRSpeakerRecognitionScorer *)self->_psrScorer satModelAvailable])
  {
    v17 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v32 = 136315138;
    v33 = "[SSRVoiceProfileRetrainerPSRExclave needsRetrainingWithAudioFiles:]";
    v18 = "%s PSRNeedsRetraining(YES): satModelAvailable is not available!";
    v19 = v17;
    v20 = 12;
LABEL_11:
    _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, v18, &v32, v20);
    goto LABEL_12;
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(NSURL *)self->_psrModelFilePath path];
  v7 = [v5 fileExistsAtPath:v6 isDirectory:0];

  if ((v7 & 1) == 0)
  {
    v21 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    psrModelFilePath = self->_psrModelFilePath;
    v32 = 136315394;
    v33 = "[SSRVoiceProfileRetrainerPSRExclave needsRetrainingWithAudioFiles:]";
    v34 = 2114;
    v35 = psrModelFilePath;
    v18 = "%s PSRNeedsRetraining(YES): phsSATFile doesnt exist at: %{public}@.";
    v19 = v21;
    v20 = 22;
    goto LABEL_11;
  }

  v8 = [v4 count];
  v9 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
  v10 = v9;
  maximumSpeakerVectors = self->_maximumSpeakerVectors;
  if (v8 <= maximumSpeakerVectors && v9 != v8)
  {
    v12 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      spIdType = self->_spIdType;
      v14 = v12;
      v15 = [SSRUtils stringForCSSpIdType:spIdType];
      v32 = 136316162;
      v33 = "[SSRVoiceProfileRetrainerPSRExclave needsRetrainingWithAudioFiles:]";
      v34 = 2050;
      v35 = v8;
      v36 = 2050;
      v37 = v10;
      v38 = 2050;
      v39 = maximumSpeakerVectors;
      v40 = 2114;
      v41 = v15;
      v16 = "%s PSRNeedsRetraining(YES): SpeakerVectors MISMATCH! (%{public}ld, %{public}ld, %{public}ld, %{public}@)";
LABEL_18:
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, v16, &v32, 0x34u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v26 = *MEMORY[0x277D01970];
  v27 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
  if (v8 > maximumSpeakerVectors && v10 != maximumSpeakerVectors)
  {
    if (v27)
    {
      v28 = self->_spIdType;
      v14 = v26;
      v15 = [SSRUtils stringForCSSpIdType:v28];
      v32 = 136316162;
      v33 = "[SSRVoiceProfileRetrainerPSRExclave needsRetrainingWithAudioFiles:]";
      v34 = 2050;
      v35 = v8;
      v36 = 2050;
      v37 = v10;
      v38 = 2050;
      v39 = maximumSpeakerVectors;
      v40 = 2114;
      v41 = v15;
      v16 = "%s PSRNeedsRetraining(YES): SpeakerVectors Max MISMATCH! (%{public}ld, %{public}ld, %{public}ld, %{public}@)";
      goto LABEL_18;
    }

LABEL_12:
    v23 = 1;
    goto LABEL_13;
  }

  if (v27)
  {
    v29 = self->_spIdType;
    v30 = v26;
    v31 = [SSRUtils stringForCSSpIdType:v29];
    v32 = 136316162;
    v33 = "[SSRVoiceProfileRetrainerPSRExclave needsRetrainingWithAudioFiles:]";
    v34 = 2050;
    v35 = v8;
    v36 = 2050;
    v37 = v10;
    v38 = 2050;
    v39 = maximumSpeakerVectors;
    v40 = 2114;
    v41 = v31;
    _os_log_impl(&dword_225E12000, v30, OS_LOG_TYPE_DEFAULT, "%s PSRNeedsRetraining(NO): audioFiles:%{public}ld, vectors:%{public}ld, max:%{public}ld, modelType: %{public}@", &v32, 0x34u);
  }

  v23 = 0;
LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [SSRUtils stringForSpeakerRecognizerType:1];
  v5 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
  psrModelFilePath = self->_psrModelFilePath;
  v7 = [v3 stringWithFormat:@"{%@:%@:%@:%@}", v4, v5, psrModelFilePath, self->_asset];

  return v7;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_novDetector)
  {
    nd_close();
    self->_novDetector = 0;
  }

  v3 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[SSRVoiceProfileRetrainerPSRExclave dealloc]";
    v8 = 2114;
    v9 = self;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s dealloc %{public}@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = SSRVoiceProfileRetrainerPSRExclave;
  [(SSRVoiceProfileRetrainerPSRExclave *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)resetModelForRetraining
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    psrModelFilePath = self->_psrModelFilePath;
    v9 = 136315394;
    v10 = "[SSRVoiceProfileRetrainerPSRExclave resetModelForRetraining]";
    v11 = 2114;
    v12 = psrModelFilePath;
    _os_log_error_impl(&dword_225E12000, v3, OS_LOG_TYPE_ERROR, "%s Deleting model file at %{public}@", &v9, 0x16u);
  }

  v4 = [(NSURL *)self->_psrModelFilePath path];
  v5 = [SSRUtils removeItemAtPath:v4];

  result = [(SSRSpeakerRecognitionScorer *)self->_psrScorer resetScorerWithModelFilePath:self->_psrModelFilePath];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (SSRVoiceProfileRetrainerPSRExclave)initWithVoiceRetrainingContext:(id)a3 secureAsset:(id)a4 secureSpeakerRecognitionConfig:(id)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = 0;
  if (v9 && v10)
  {
    v63.receiver = self;
    v63.super_class = SSRVoiceProfileRetrainerPSRExclave;
    self = [(SSRVoiceProfileRetrainerPSRExclave *)&v63 init];
    if (!self)
    {
LABEL_33:
      self = self;
      v12 = self;
      goto LABEL_34;
    }

    SSRLogInitIfNeeded();
    objc_storeStrong(&self->_asset, a4);
    objc_storeStrong(&self->_ctx, a3);
    v13 = [v9 modelsContext];
    v14 = [SSRUtils stringForSpeakerRecognizerType:1];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (v15)
    {
      if (self->_asset)
      {
        objc_storeStrong(&self->_speakerRecognitionConfig, a5);
        if (self->_speakerRecognitionConfig)
        {
          v16 = nd_create();
          self->_novDetector = v16;
          if (v16)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v69 = 1;
            v17 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig psrMemoryIndex];
            v18 = [v17 memoryIndexes];
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __112__SSRVoiceProfileRetrainerPSRExclave_initWithVoiceRetrainingContext_secureAsset_secureSpeakerRecognitionConfig___block_invoke;
            v60[3] = &unk_278578A48;
            v62 = buf;
            v59 = self;
            v61 = v59;
            [v18 enumerateKeysAndObjectsUsingBlock:v60];

            if ((*(*&buf[8] + 24) & 1) == 0)
            {

              _Block_object_dispose(buf, 8);
              goto LABEL_22;
            }

            novDetector = self->_novDetector;
            v20 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig psrConfigString];
            v21 = v20;
            [v20 cStringUsingEncoding:4];
            v22 = nd_initialize();

            v23 = *MEMORY[0x277D01970];
            if (v22)
            {
              v24 = v23;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v55 = self->_novDetector;
                v56 = nd_error();
                *v64 = 136315394;
                v65 = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
                v66 = 2080;
                v67 = v56;
                _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s Failed to initialize nov detector with error %s", v64, 0x16u);
              }
            }

            else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
            {
              *v64 = 136315138;
              v65 = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
              _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_INFO, "%s Successfully created nov detector", v64, 0xCu);
            }

            _Block_object_dispose(buf, 8);
            if (v22)
            {
              goto LABEL_22;
            }

            if ([v9 forceRetrain])
            {
              v27 = *MEMORY[0x277D015C8];
              if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
              {
                v28 = v27;
                v29 = [v15 secureProfileModelFilePath];
                *buf = 136315394;
                *&buf[4] = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
                *&buf[12] = 2114;
                *&buf[14] = v29;
                _os_log_impl(&dword_225E12000, v28, OS_LOG_TYPE_DEFAULT, "%s Deleting model file at %{public}@", buf, 0x16u);
              }

              v30 = [v15 secureProfileModelFilePath];
              v31 = [v30 path];
              v32 = [SSRUtils removeItemAtPath:v31];
            }

            v33 = [SSRSpeakerRecognitionScorer alloc];
            v58 = [v9 voiceProfile];
            v34 = [v58 profileID];
            v35 = [v15 secureProfileModelFilePath];
            v36 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig psrConfigString];
            v37 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig psrMemoryIndex];
            LOBYTE(v57) = 1;
            v38 = [(SSRSpeakerRecognitionScorer *)v33 initWithProfileID:v34 withModelFile:v35 withConfigFile:0 withResourceFile:0 configData:v36 memoryIndex:v37 withOffsetsType:0 forRetraining:v57];
            psrScorer = v59->_psrScorer;
            v59->_psrScorer = v38;

            if (v59->_psrScorer)
            {
              v40 = dispatch_queue_create("com.apple.corespeech.speakerretrain.secure.psrq", 0);
              queue = v59->_queue;
              v59->_queue = v40;

              v42 = [v15 configFilePath];
              configFilePath = v59->_configFilePath;
              v59->_configFilePath = v42;

              v44 = [v9 resourceFilePath];
              resourceFilePath = v59->_resourceFilePath;
              v59->_resourceFilePath = v44;

              v46 = [v15 secureProfileModelFilePath];
              psrModelFilePath = v59->_psrModelFilePath;
              v59->_psrModelFilePath = v46;

              v48 = [v9 voiceProfile];
              voiceProfile = v59->_voiceProfile;
              v59->_voiceProfile = v48;

              comparativeModels = v59->_comparativeModels;
              v59->_comparativeModels = 0;

              v59->_maximumSpeakerVectors = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig maxEnrollmentUtterances];
              v51 = [v9 configVersion];
              configVersion = v59->_configVersion;
              v59->_configVersion = v51;

              v59->_spIdType = [v9 spIdType];
              goto LABEL_33;
            }

            v25 = *MEMORY[0x277D015C8];
            if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_22;
            }

            *buf = 136315138;
            *&buf[4] = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
            v26 = "%s ERR: Cannot create PSR Scorer";
            goto LABEL_21;
          }

          v25 = *MEMORY[0x277D015C8];
          if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
            v26 = "%s Secure Speaker detector failed to create nov detector.";
            goto LABEL_21;
          }

LABEL_22:

          v12 = 0;
          goto LABEL_34;
        }

        v25 = *MEMORY[0x277D015C8];
        if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        *buf = 136315138;
        *&buf[4] = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
        v26 = "%s Secure Speaker detector config is nil";
      }

      else
      {
        v25 = *MEMORY[0x277D015C8];
        if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        *buf = 136315138;
        *&buf[4] = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
        v26 = "%s PSRModel Retraining asset is nil! - Skipping";
      }
    }

    else
    {
      v25 = *MEMORY[0x277D015C8];
      if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
      v26 = "%s PSRModel Retraining context is nil! - Skipping";
    }

LABEL_21:
    _os_log_impl(&dword_225E12000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
    goto LABEL_22;
  }

LABEL_34:

  v53 = *MEMORY[0x277D85DE8];
  return v12;
}

void __112__SSRVoiceProfileRetrainerPSRExclave_initWithVoiceRetrainingContext_secureAsset_secureSpeakerRecognitionConfig___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v9 = *(*(a1 + 32) + 8);
    v10 = v7;
    v11 = a3;
    [v8 cStringUsingEncoding:4];
    [v11 bytes];
    [v11 length];

    if (nd_addresource())
    {
      v12 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
      {
        v14 = 136315395;
        v15 = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]_block_invoke";
        v16 = 2113;
        v17 = v8;
        _os_log_debug_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEBUG, "%s Failed to add resource %{private}@", &v14, 0x16u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end