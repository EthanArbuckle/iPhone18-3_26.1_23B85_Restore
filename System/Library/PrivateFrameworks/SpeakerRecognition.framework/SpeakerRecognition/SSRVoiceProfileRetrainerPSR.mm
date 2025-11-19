@interface SSRVoiceProfileRetrainerPSR
- (BOOL)implicitTrainingRequired;
- (BOOL)needsRetrainingWithAudioFiles:(id)a3;
- (BOOL)resetModelForRetraining;
- (NSString)description;
- (SSRVoiceProfileRetrainerPSR)initWithVoiceRetrainingContext:(id)a3;
- (id)_composeSpeakerConfusionWithScores:(id)a3 forProfiles:(id)a4;
- (id)_logSpeakerConfusion:(id)a3 forProfileArray:(id)a4 withPrependString:(id)a5;
- (id)_processAudioFile:(id)a3 withPSRProcessor:(id)a4;
- (id)_processSpeakerVector:(id)a3 withSize:(unint64_t)a4 withScorers:(id)a5 processedAudioDurationMs:(unint64_t)a6;
- (id)_psrProcessorResetSync:(id)a3;
- (id)purgeConfusionInformationWithPolicy:(id)a3;
- (void)_emitVoiceProfileOnboardedSelfLogWithExplicitScores:(id)a3 withProfilePitch:(float)a4;
- (void)_logSpeakerConfusionWithExplicitScores:(id)a3 withImplicitScores:(id)a4 withPurgeUtterances:(unint64_t)a5 forProfile:(id)a6 forConfigVersion:(id)a7;
- (void)addUtterances:(id)a3 withPolicy:(id)a4 withCompletion:(id)a5;
- (void)dealloc;
- (void)purgeLastSpeakerEmbedding;
@end

@implementation SSRVoiceProfileRetrainerPSR

- (id)_processSpeakerVector:(id)a3 withSize:(unint64_t)a4 withScorers:(id)a5 processedAudioDurationMs:(unint64_t)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v25 = a5;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v25, "count")}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v25;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v11)
  {
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        [v14 scoreSpeakerVector:v8 withDimensions:a4 withThresholdType:0];
        v15 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        v16 = [v14 profileID];
        [v9 setObject:v15 forKeyedSubscript:v16];
      }

      v11 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }

  v31[0] = v9;
  v30[0] = @"spIdKnownUserPSRScores";
  v30[1] = @"spIdAudioProcessedDuration";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v31[1] = v17;
  v30[2] = @"bestVoiceTriggerScore";
  *&v18 = self->_bestTriggerScore;
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v31[2] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_processAudioFile:(id)a3 withPSRProcessor:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D01970];
  v9 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileRetrainerPSR _processAudioFile:withPSRProcessor:]";
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Processing %{public}@", buf, 0x16u);
  }

  self->_psrScore = -1.0;
  v10 = [(SSRVoiceProfileRetrainerPSR *)self _psrProcessorResetSync:v7];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    self->_currUttLengthInMs = 0xFFFFFFFFLL;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v50 = __Block_byref_object_copy__3115;
    v51 = __Block_byref_object_dispose__3116;
    v52 = 0;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v38[3] = 0;
    [MEMORY[0x277D01748] lpcmInt16ASBD];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __66__SSRVoiceProfileRetrainerPSR__processAudioFile_withPSRProcessor___block_invoke;
    v32[3] = &unk_2785783A0;
    v13 = v6;
    v33 = v13;
    v34 = self;
    v36 = buf;
    v37 = v38;
    v14 = v7;
    v35 = v14;
    [SSRUtils streamAudioFromFileUrl:v13 audioStreamBasicDescriptor:v43 samplesPerStreamChunk:640 audioDataAvailableHandler:v32];
    v15 = *(*&buf[8] + 40);
    if (v15)
    {
      v16 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *v43 = 136315650;
        v44 = "[SSRVoiceProfileRetrainerPSR _processAudioFile:withPSRProcessor:]";
        v45 = 2114;
        v46 = v13;
        v47 = 2114;
        v48 = v15;
        _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s ERR: Failed processing %{public}@ with error %{public}@", v43, 0x20u);
        v15 = *(*&buf[8] + 40);
      }

      v12 = v15;
    }

    else if (self->_currUttLengthInMs > 0xC7)
    {
      v21 = [v14 getLatestSuperVector];
      speakerVector = self->_speakerVector;
      self->_speakerVector = v21;

      v23 = [(NSData *)self->_speakerVector length];
      currUttLengthInMs = self->_currUttLengthInMs;
      v25 = self->_speakerVector;
      self->_speakerVectorSize = v23 >> 2;
      self->_processedAudioDurationMs = currUttLengthInMs;
      if (v25)
      {
        v12 = 0;
      }

      else
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"speakerVector is nil! for processedAUdioDurationMs: %lu, _currUttLengthInMs: %lu", currUttLengthInMs, currUttLengthInMs];
        v27 = MEMORY[0x277CCA9B8];
        v39 = *MEMORY[0x277CCA450];
        v40 = v26;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v29 = [v27 errorWithDomain:@"com.apple.speakerrecognition" code:743 userInfo:v28];

        v12 = v29;
      }
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Too little audio %dms in %@ - Bailing out", self->_currUttLengthInMs, v13];
      v18 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *v43 = 136315394;
        v44 = "[SSRVoiceProfileRetrainerPSR _processAudioFile:withPSRProcessor:]";
        v45 = 2114;
        v46 = v17;
        _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s %{public}@", v43, 0x16u);
      }

      v19 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA450];
      v42 = v17;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v12 = [v19 errorWithDomain:@"com.apple.speakerrecognition" code:751 userInfo:v20];
    }

    _Block_object_dispose(v38, 8);
    _Block_object_dispose(buf, 8);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v12;
}

void __66__SSRVoiceProfileRetrainerPSR__processAudioFile_withPSRProcessor___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v7)
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v20 = 136315394;
      v21 = "[SSRVoiceProfileRetrainerPSR _processAudioFile:withPSRProcessor:]_block_invoke";
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Failed to read file: %@", &v20, 0x16u);
    }

    v10 = *(*(a1 + 56) + 8);
    v11 = v7;
    v12 = *(v10 + 40);
    *(v10 + 40) = v11;
    goto LABEL_10;
  }

  if (!a3)
  {
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    v18 = [v12 length];
    [MEMORY[0x277D01748] lpcmInt16ASBD];
    *(*(*(a1 + 64) + 8) + 24) += v18 / v25;
    [*(a1 + 48) addAudioSync:v12];
LABEL_10:

    goto LABEL_11;
  }

  v13 = *(*(*(a1 + 64) + 8) + 24);
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  *(*(a1 + 40) + 96) = ((v13 / v14) * 1000.0);
  v15 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = *(*(a1 + 40) + 96);
    v20 = 136315650;
    v21 = "[SSRVoiceProfileRetrainerPSR _processAudioFile:withPSRProcessor:]_block_invoke";
    v22 = 2050;
    v23 = v17;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s Reached end of file. _currUttLengthInMs: %{public}lu, calling endAudio: %@", &v20, 0x20u);
  }

  [*(a1 + 48) endAudio];
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_psrProcessorResetSync:(id)a3
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 resetForNewRequestSync];

  v4 = *MEMORY[0x277D85DE8];

  return 0;
}

- (id)_logSpeakerConfusion:(id)a3 forProfileArray:(id)a4 withPrependString:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3115;
  v23 = __Block_byref_object_dispose__3116;
  v24 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10 = objc_autoreleasePoolPush();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__SSRVoiceProfileRetrainerPSR__logSpeakerConfusion_forProfileArray_withPrependString___block_invoke;
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

void __86__SSRVoiceProfileRetrainerPSR__logSpeakerConfusion_forProfileArray_withPrependString___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  if (!a3)
  {
    [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"\n\n%@\n----------------------------------------------------------------------------------------------\n", *(a1 + 32)];
    [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"              "];
    for (i = 0; ; ++i)
    {
      v6 = [*(a1 + 40) count];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      if (i >= v6)
      {
        break;
      }

      v9 = [*(a1 + 40) objectAtIndexedSubscript:i];
      [v8 appendFormat:@"%@  ", v9];
    }

    [*(v7 + 40) appendFormat:@"\n"];
  }

  [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"Utterance%02d   ", a3];
  for (j = 0; j < [v15 count]; ++j)
  {
    v11 = *(*(*(a1 + 48) + 8) + 40);
    if (j)
    {
      v12 = [v15 objectAtIndexedSubscript:j];
      [v12 floatValue];
      [v11 appendFormat:@"%39.2f", v13];
    }

    else
    {
      v12 = [v15 objectAtIndexedSubscript:0];
      [v12 floatValue];
      [v11 appendFormat:@"%16.2f", v14];
    }
  }

  [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"\n"];
}

- (id)_composeSpeakerConfusionWithScores:(id)a3 forProfiles:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21 = a4;
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:{16, v5}];
  if (v6)
  {
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v11 = [v9 objectForKeyedSubscript:@"spIdKnownUserPSRScores"];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = v21;
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v13)
        {
          v14 = *v23;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = [v11 objectForKeyedSubscript:*(*(&v22 + 1) + 8 * j)];
              [v10 addObject:v16];
            }

            v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v13);
        }

        [v20 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_emitVoiceProfileOnboardedSelfLogWithExplicitScores:(id)a3 withProfilePitch:(float)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v26 = a3;
  if (([MEMORY[0x277D018F8] isDarwinOS] & 1) == 0)
  {
    v29 = [MEMORY[0x277CBEB18] array];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v26;
    v30 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v30)
    {
      v31 = 0;
      v28 = *v39;
      do
      {
        v33 = 0;
        do
        {
          if (*v39 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v38 + 1) + 8 * v33);
          v32 = objc_alloc_init(MEMORY[0x277D589D8]);
          v6 = [v5 objectForKeyedSubscript:@"spIdKnownUserPSRScores"];
          v7 = [MEMORY[0x277CBEB18] array];
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v8 = v6;
          v9 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v9)
          {
            LODWORD(v10) = 0;
            v11 = *v35;
            do
            {
              v12 = 0;
              do
              {
                if (*v35 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v34 + 1) + 8 * v12);
                v14 = objc_alloc_init(MEMORY[0x277D589C8]);
                v10 = (v10 + 1);
                v15 = [@"HomeMember" stringByAppendingFormat:@"%d", v10];
                [v14 setHomeMemberUserId:v15];

                v16 = [v8 objectForKeyedSubscript:v13];
                [v16 floatValue];
                [v14 setSimilarityScore:(v17 * 100.0)];

                [v7 addObject:v14];
                ++v12;
              }

              while (v9 != v12);
              v9 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v9);
          }

          [v32 setVoiceProfileConfusionScores:v7];
          ++v31;
          [v32 setEnrollmentUtteranceNumber:?];
          [v29 addObject:v32];

          ++v33;
        }

        while (v33 != v30);
        v30 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v30);
    }

    v18 = objc_alloc_init(MEMORY[0x277D589F8]);
    [v18 setVoiceProfilePitchInHz:5 * (a4 / 5)];
    [v18 setConfusionScoresForEnrollmentUtterances:v29];
    v19 = objc_alloc_init(MEMORY[0x277D587E8]);
    v20 = objc_alloc_init(MEMORY[0x277D58800]);
    v21 = objc_alloc(MEMORY[0x277D5AC70]);
    v22 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v23 = [v21 initWithNSUUID:v22];
    [v20 setMhId:v23];

    [v19 setEventMetadata:v20];
    [v19 setVoiceProfileOnboarded:v18];
    v24 = [MEMORY[0x277D552B8] sharedStream];
    [v24 emitMessage:v19];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_logSpeakerConfusionWithExplicitScores:(id)a3 withImplicitScores:(id)a4 withPurgeUtterances:(unint64_t)a5 forProfile:(id)a6 forConfigVersion:(id)a7
{
  v64 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v12 && [v12 count])
  {
    v16 = [v14 profileID];
    v17 = [v12 objectAtIndexedSubscript:0];
    v18 = [v17 objectForKeyedSubscript:@"spIdKnownUserPSRScores"];

    v52 = v18;
    v19 = [v18 allKeys];
    v20 = [v19 mutableCopy];

    if ([v20 containsObject:v16])
    {
      [v20 removeObject:v16];
      [v20 insertObject:v16 atIndex:0];
      v51 = [(SSRVoiceProfileRetrainerPSR *)self _composeSpeakerConfusionWithScores:v12 forProfiles:v20];
      v50 = [(SSRVoiceProfileRetrainerPSR *)self _composeSpeakerConfusionWithScores:v13 forProfiles:v20];
      v56[0] = @"locale";
      v21 = [v14 locale];
      v22 = v21;
      v23 = @"unknown";
      if (v15)
      {
        v23 = v15;
      }

      v57[0] = v21;
      v57[1] = v23;
      v56[1] = @"asset";
      v56[2] = @"explicitUtteranceConfusion";
      v57[2] = v51;
      v57[3] = v50;
      v56[3] = @"implicitUtteranceConfusion";
      v56[4] = @"purgedUtteranceCount";
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
      v57[4] = v24;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:5];

      v25 = [MEMORY[0x277CEF150] sharedAnalytics];
      [v25 logEventWithType:6113 context:v49 contextNoCopy:0];

      v26 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v59 = "[SSRVoiceProfileRetrainerPSR _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
        v60 = 2112;
        v61 = v49;
        _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Log %@", buf, 0x16u);
      }

      v27 = [MEMORY[0x277D01788] sharedPreferences];
      v28 = [v27 fileLoggingIsEnabled];

      if (v28)
      {
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Explicit Utterance Confusion Matrix for User - %@ is", v16];
        v47 = [(SSRVoiceProfileRetrainerPSR *)self _logSpeakerConfusion:v51 forProfileArray:v20 withPrependString:v29];

        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Implicit Utterance Confusion Matrix for User - %@ is", v16];
        v46 = [(SSRVoiceProfileRetrainerPSR *)self _logSpeakerConfusion:v50 forProfileArray:v20 withPrependString:v30];

        v54[0] = @"explicitUtteranceConfusion";
        v54[1] = @"implicitUtteranceConfusion";
        v55[0] = v12;
        v55[1] = v13;
        v54[2] = @"purgedUtteranceCount";
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
        v55[2] = v31;
        v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:3];

        v53 = 0;
        v44 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v48 options:3 error:&v53];
        v43 = v53;
        if (v43)
        {
          log = *MEMORY[0x277D01970];
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            v32 = [v43 localizedDescription];
            *buf = 136315394;
            v59 = "[SSRVoiceProfileRetrainerPSR _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
            v60 = 2114;
            v61 = v32;
            _os_log_error_impl(&dword_225E12000, log, OS_LOG_TYPE_ERROR, "%s ERR: Failed to get json object with error %{public}@", buf, 0x16u);
          }
        }

        else
        {
          log = [MEMORY[0x277CCACA8] stringWithFormat:@"CS-VoiceId-UserConfusion-%@.json", v16];
          v35 = [MEMORY[0x277D01788] sharedPreferences];
          v36 = [v35 voiceTriggerAudioLogDirectory];
          v37 = [v36 stringByAppendingPathComponent:log];

          v38 = [SSRUtils removeItemAtPath:v37];
          [v44 writeToFile:v37 atomically:0];
        }

        v39 = MEMORY[0x277D01970];
        v40 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v59 = "[SSRVoiceProfileRetrainerPSR _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
          v60 = 2114;
          v61 = v47;
          _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
          v40 = *v39;
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v59 = "[SSRVoiceProfileRetrainerPSR _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
          v60 = 2114;
          v61 = v46;
          _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v41 = [v14 profilePitch];
      [v41 floatValue];
      [(SSRVoiceProfileRetrainerPSR *)self _emitVoiceProfileOnboardedSelfLogWithExplicitScores:v12 withProfilePitch:?];
    }

    else
    {
      v34 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v59 = "[SSRVoiceProfileRetrainerPSR _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
        v60 = 2114;
        v61 = v16;
        v62 = 2114;
        v63 = v20;
        _os_log_impl(&dword_225E12000, v34, OS_LOG_TYPE_DEFAULT, "%s profile %{public}@ is not present in %{public}@ - Bailing out", buf, 0x20u);
      }
    }
  }

  else
  {
    v33 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v59 = "[SSRVoiceProfileRetrainerPSR _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
      _os_log_impl(&dword_225E12000, v33, OS_LOG_TYPE_DEFAULT, "%s explicit scores are nil - Bailing out", buf, 0xCu);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (id)purgeConfusionInformationWithPolicy:(id)a3
{
  v74[1] = *MEMORY[0x277D85DE8];
  v54 = a3;
  comparativeModels = self->_comparativeModels;
  if (!comparativeModels)
  {
    v55 = 0;
    goto LABEL_8;
  }

  v55 = [SSRSpeakerRecognitionScorer createVoiceScorersWithVoiceProfiles:comparativeModels withConfigFile:self->_configFilePath withResourceFile:self->_resourceFilePath withOffsetsType:0 forRetraining:1];
  if (v55 && [v55 count])
  {
LABEL_8:
    v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v55)
    {
      [v56 addObjectsFromArray:?];
    }

    v12 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
    v13 = [(SSRVoiceProfile *)self->_voiceProfile getExplicitEnrollmentUtterancesForType:self->_spIdType];
    v14 = [v13 count];

    if (v14 > 2)
    {
      if (v12 >= v14)
      {
        v26 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
          *buf = 136315906;
          v64 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
          v65 = 2114;
          *v66 = v27;
          *&v66[8] = 2050;
          *&v66[10] = v12;
          v67 = 2050;
          v68 = v14;
          _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Processing Voice Profile %{public}@ with vectorCount %{public}lu and expVectorCount %{public}lu", buf, 0x2Au);
        }

        v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v53 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v12 - v14];
        v52 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v14];
        do
        {
          v28 = v12 - 1;
          v29 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSpeakerVectorAtIndex:v12 - 1];
          v30 = *MEMORY[0x277D01970];
          v31 = v30;
          if (v29)
          {
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v32 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
              v33 = [v29 length];
              *buf = 136315906;
              v64 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
              v65 = 2050;
              *v66 = v12 - 1;
              *&v66[8] = 2114;
              *&v66[10] = v32;
              v67 = 2050;
              v68 = v33 >> 2;
              _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, "%s Processing %{public}lu vector from %{public}@ with size %{public}lu", buf, 0x2Au);
            }

            v34 = -[SSRVoiceProfileRetrainerPSR _processSpeakerVector:withSize:withScorers:processedAudioDurationMs:](self, "_processSpeakerVector:withSize:withScorers:processedAudioDurationMs:", v29, [v29 length] >> 2, v56, 0);
            v31 = v34;
            if (v34)
            {
              v35 = [v34 mutableCopy];
              if (v35)
              {
                if (v12 <= v14)
                {
                  [v52 addObject:v35];
                }

                else
                {
                  if (v54)
                  {
                    v36 = v54[2]();
                  }

                  else
                  {
                    v36 = 1;
                  }

                  [v53 addObject:v35];
                  if ((v36 & 1) == 0)
                  {
                    v40 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                    {
                      v41 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
                      *buf = 136315650;
                      v64 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
                      v65 = 1026;
                      *v66 = v12 - 1;
                      *&v66[4] = 2114;
                      *&v66[6] = v41;
                      _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Adding vector %{public}u for deletion from profile %{public}@", buf, 0x1Cu);
                    }

                    v42 = [MEMORY[0x277CCABB0] numberWithInteger:v12 - 1];
                    [v51 addObject:v42];
                  }
                }
              }

              else
              {
                v39 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v64 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
                  v65 = 2114;
                  *v66 = v31;
                  _os_log_error_impl(&dword_225E12000, v39, OS_LOG_TYPE_ERROR, "%s Failed to allocate mapped scores for %{public}@", buf, 0x16u);
                }

                v35 = 0;
              }
            }

            else
            {
              v35 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v38 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
                *buf = 136315650;
                v64 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
                v65 = 1026;
                *v66 = v12 - 1;
                *&v66[4] = 2114;
                *&v66[6] = v38;
                _os_log_error_impl(&dword_225E12000, v35, OS_LOG_TYPE_ERROR, "%s Failed to get scores for vectorIdx %{public}u of profile %{public}@", buf, 0x1Cu);
              }
            }
          }

          else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v37 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
            *buf = 136315650;
            v64 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
            v65 = 1024;
            *v66 = v12 - 1;
            *&v66[4] = 2114;
            *&v66[6] = v37;
            _os_log_error_impl(&dword_225E12000, v31, OS_LOG_TYPE_ERROR, "%s Failed to %u vector from profile %{public}@", buf, 0x1Cu);
          }

          v12 = v28;
        }

        while ((v28 + 1) > 1);
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        obj = v51;
        v43 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v43)
        {
          v44 = *v59;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v59 != v44)
              {
                objc_enumerationMutation(obj);
              }

              v46 = *(*(&v58 + 1) + 8 * i);
              v47 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                v48 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
                *buf = 136315650;
                v64 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
                v65 = 2114;
                *v66 = v46;
                *&v66[8] = 2114;
                *&v66[10] = v48;
                _os_log_impl(&dword_225E12000, v47, OS_LOG_TYPE_DEFAULT, "%s Deleting vector %{public}@ from profile %{public}@", buf, 0x20u);
              }

              -[SSRSpeakerRecognitionScorer deleteVectorAtIndex:](self->_psrScorer, "deleteVectorAtIndex:", [v46 intValue]);
            }

            v43 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
          }

          while (v43);
        }

        -[SSRVoiceProfileRetrainerPSR _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:](self, "_logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:", v52, v53, [obj count], self->_voiceProfile, self->_configVersion);
        v11 = 0;
        goto LABEL_55;
      }

      v21 = MEMORY[0x277CCACA8];
      v22 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
      v23 = [v21 stringWithFormat:@"satVectorCount %lu is < %luE for profile %@ - Bailingout", v12, v14, v22];

      v24 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v64 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
        v65 = 2114;
        *v66 = v23;
        _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v69 = @"reason";
      v70 = v23;
      obj = v23;
      v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v20 = [v25 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:?];
    }

    else
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
      v17 = [v15 stringWithFormat:@"ExpSatVectorCount is invalid (%lu) for profile %@ - Bailingout", v14, v16];

      v18 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v64 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
        v65 = 2114;
        *v66 = v17;
        _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v19 = MEMORY[0x277CCA9B8];
      v71 = @"reason";
      v72 = v17;
      obj = v17;
      v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v20 = [v19 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:?];
    }

    v11 = v20;
LABEL_55:

    v10 = obj;
    goto LABEL_56;
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = self->_comparativeModels;
  v7 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
  v56 = [v5 stringWithFormat:@"Cannot create comparative scorers from %@ on profile %@", v6, v7];

  v8 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v64 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
    v65 = 2114;
    *v66 = v56;
    _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
  }

  v9 = MEMORY[0x277CCA9B8];
  v73 = @"reason";
  v74[0] = v56;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:&v73 count:1];
  v11 = [v9 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:v10];
LABEL_56:

  v49 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)purgeLastSpeakerEmbedding
{
  *&v13[13] = *MEMORY[0x277D85DE8];
  v3 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
  v4 = *MEMORY[0x277D01970];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
      v7 = (v3 - 1);
      v10 = 136315650;
      v11 = "[SSRVoiceProfileRetrainerPSR purgeLastSpeakerEmbedding]";
      v12 = 1026;
      *v13 = v7;
      v13[2] = 2114;
      *&v13[3] = v6;
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Deleting vector %{public}d from profile %{public}@", &v10, 0x1Cu);
    }

    else
    {
      v7 = (v3 - 1);
    }

    [(SSRSpeakerRecognitionScorer *)self->_psrScorer deleteVectorAtIndex:v7];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
      v10 = 136315394;
      v11 = "[SSRVoiceProfileRetrainerPSR purgeLastSpeakerEmbedding]";
      v12 = 2114;
      *v13 = v9;
      _os_log_error_impl(&dword_225E12000, v5, OS_LOG_TYPE_ERROR, "%s ERR: Vector count of zero for profile %{public}@", &v10, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addUtterances:(id)a3 withPolicy:(id)a4 withCompletion:(id)a5
{
  v95[1] = *MEMORY[0x277D85DE8];
  v56 = a3;
  v61 = a4;
  v55 = a5;
  context = objc_autoreleasePoolPush();
  v57 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v65 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v56 && [v56 count])
  {
    v8 = objc_alloc(MEMORY[0x277D071F0]);
    v9 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer psrConfigFilePath];
    v10 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer psrConfigRoot];
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v62 = [v8 initWithConfigFile:v9 configRoot:v10 sampleRate:v11 delegate:self queue:self->_queue];

    comparativeModels = self->_comparativeModels;
    if (comparativeModels)
    {
      v54 = [SSRSpeakerRecognitionScorer createVoiceScorersWithVoiceProfiles:comparativeModels withConfigFile:self->_configFilePath withResourceFile:self->_resourceFilePath withOffsetsType:0 forRetraining:1];
      if (!v54 || ![v54 count])
      {
        v13 = MEMORY[0x277CCACA8];
        v14 = self->_comparativeModels;
        v15 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
        v60 = [v13 stringWithFormat:@"Cannot create comparative scorers from %@ on profile %@", v14, v15, context];

        v16 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v74 = "[SSRVoiceProfileRetrainerPSR addUtterances:withPolicy:withCompletion:]";
          v75 = 2114;
          v76 = v60;
          _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
        }

        if (v55)
        {
          v17 = MEMORY[0x277CCA9B8];
          v92 = @"reason";
          v93[0] = v60;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:&v92 count:1];
          v19 = [v17 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:v18];
          (*(v55 + 2))(v55, v19, 0, 0);
        }

        goto LABEL_46;
      }
    }

    else
    {
      v54 = 0;
    }

    v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v54)
    {
      [v60 addObjectsFromArray:v54];
    }

    [v60 addObject:self->_psrScorer];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v56;
    v21 = [obj countByEnumeratingWithState:&v67 objects:v91 count:16];
    if (!v21)
    {
LABEL_44:

      if (v55)
      {
        (*(v55 + 2))();
      }

      goto LABEL_46;
    }

    v66 = *v68;
    v64 = *MEMORY[0x277CCA450];
LABEL_17:
    v22 = 0;
    while (1)
    {
      if (*v68 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v67 + 1) + 8 * v22);
      v24 = [v23 pathExtension];
      v25 = [v24 isEqualToString:@"wav"];

      if ((v25 & 1) == 0)
      {
        v28 = MEMORY[0x277CCACA8];
        v29 = [v23 path];
        v27 = [v28 stringWithFormat:@"Invalid file format %@ ", v29];

        v30 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v74 = "[SSRVoiceProfileRetrainerPSR addUtterances:withPolicy:withCompletion:]";
          v75 = 2114;
          v76 = v27;
          _os_log_error_impl(&dword_225E12000, v30, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
        }

        v31 = MEMORY[0x277CCA9B8];
        v89 = v64;
        v90 = v27;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v26 = [v31 errorWithDomain:@"com.apple.speakerrecognition" code:729 userInfo:v32];

        v33 = [v23 path];
        [v65 setObject:v26 forKey:v33];
        goto LABEL_41;
      }

      v26 = [(SSRVoiceProfileRetrainerPSR *)self _processAudioFile:v23 withPSRProcessor:v62];
      if (!v26)
      {
        break;
      }

      v27 = [v23 path];
      [v65 setObject:v26 forKey:v27];
LABEL_42:

      if (v21 == ++v22)
      {
        v21 = [obj countByEnumeratingWithState:&v67 objects:v91 count:16];
        if (!v21)
        {
          goto LABEL_44;
        }

        goto LABEL_17;
      }
    }

    v27 = [(SSRVoiceProfileRetrainerPSR *)self _processSpeakerVector:self->_speakerVector withSize:self->_speakerVectorSize withScorers:v60 processedAudioDurationMs:self->_processedAudioDurationMs];
    if (v27)
    {
      if (v61)
      {
        v26 = v61[2](v61, v23, v27);
        if (v26)
        {
          v33 = [v23 path];
          [v65 setObject:v26 forKey:v33];
LABEL_41:

          goto LABEL_42;
        }
      }

      v33 = [(NSURL *)self->_psrModelFilePath URLByDeletingLastPathComponent];
      v34 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v58 = v34;
        v59 = [v23 lastPathComponent];
        v35 = [(NSURL *)self->_psrModelFilePath lastPathComponent];
        v36 = [v33 lastPathComponent];
        v37 = [v33 URLByDeletingLastPathComponent];
        v38 = [v37 lastPathComponent];
        v39 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
        *buf = 136316674;
        v74 = "[SSRVoiceProfileRetrainerPSR addUtterances:withPolicy:withCompletion:]";
        v75 = 2114;
        v76 = v59;
        v77 = 2114;
        v78 = v35;
        v79 = 2114;
        v80 = v36;
        v81 = 2114;
        v82 = v38;
        v83 = 2050;
        v84 = v39;
        v85 = 2114;
        v86 = v27;
        _os_log_impl(&dword_225E12000, v58, OS_LOG_TYPE_DEFAULT, "%s Adding %{public}@ to {%{public}@, %{public}@, %{public}@} as %{public}lu vector with scoreCard %{public}@", buf, 0x48u);

        v34 = v58;
      }

      v40 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
      [(SSRSpeakerRecognitionScorer *)self->_psrScorer updateSAT];
      if ([(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount]- v40 == 1)
      {
        v41 = [v23 path];
        [v57 setObject:v27 forKey:v41];
        v26 = 0;
      }

      else
      {
        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Reached max (%lu) of training utterances, Skipped SAT model update", -[SSRSpeakerRecognitionScorer getSATVectorCount](self->_psrScorer, "getSATVectorCount")];
        v48 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v74 = "[SSRVoiceProfileRetrainerPSR addUtterances:withPolicy:withCompletion:]";
          v75 = 2114;
          v76 = v41;
          _os_log_error_impl(&dword_225E12000, v48, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
        }

        v49 = MEMORY[0x277CCA9B8];
        v71 = v64;
        v72 = v41;
        v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        v26 = [v49 errorWithDomain:@"com.apple.speakerrecognition" code:739 userInfo:v50];

        v51 = [v23 path];
        [v65 setObject:v26 forKey:v51];
      }
    }

    else
    {
      v42 = MEMORY[0x277CCACA8];
      v43 = [v23 lastPathComponent];
      v44 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
      v33 = [v42 stringWithFormat:@"Failed to get scorecard for utterance %@ on profile %@", v43, v44, context];

      v45 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v74 = "[SSRVoiceProfileRetrainerPSR addUtterances:withPolicy:withCompletion:]";
        v75 = 2114;
        v76 = v33;
        _os_log_error_impl(&dword_225E12000, v45, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v46 = MEMORY[0x277CCA9B8];
      v87 = @"reason";
      v88 = v33;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      v26 = [v46 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:v47];

      v41 = [v23 path];
      [v65 setObject:v26 forKey:v41];
    }

    goto LABEL_41;
  }

  v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"File Array is nil"];
  if (v55)
  {
    v20 = MEMORY[0x277CCA9B8];
    v94 = *MEMORY[0x277CCA450];
    v95[0] = v62;
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:&v94 count:1];
    v60 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:701 userInfo:?];
    (*(v55 + 2))();
LABEL_46:
  }

  objc_autoreleasePoolPop(context);
  v52 = *MEMORY[0x277D85DE8];
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
    v9 = "[SSRVoiceProfileRetrainerPSR implicitTrainingRequired]";
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
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(SSRVoiceProfile *)self->_voiceProfile voiceProfileBasePath];
  v32 = 0;
  if (([v5 fileExistsAtPath:v6 isDirectory:&v32] & 1) == 0)
  {
    v7 = v32;
    if ((v32 & 1) == 0)
    {
      v21 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v34 = "[SSRVoiceProfileRetrainerPSR needsRetrainingWithAudioFiles:]";
        v35 = 2114;
        v36 = v6;
        v37 = 1026;
        LODWORD(v38) = v7;
        _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s ERR: Cannot find SAT Audio dir at %{public}@: isDir: %{public}d - Bailing out", buf, 0x1Cu);
      }

      goto LABEL_14;
    }
  }

  if (![(SSRSpeakerRecognitionScorer *)self->_psrScorer satModelAvailable])
  {
    v17 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v34 = "[SSRVoiceProfileRetrainerPSR needsRetrainingWithAudioFiles:]";
    v18 = "%s PSRNeedsRetraining(YES): satModelAvailable is not available!";
    v19 = v17;
    v20 = 12;
LABEL_17:
    _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_18;
  }

  v8 = [(NSURL *)self->_psrModelFilePath path];
  v9 = [v5 fileExistsAtPath:v8 isDirectory:0];

  if ((v9 & 1) == 0)
  {
    v23 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    psrModelFilePath = self->_psrModelFilePath;
    *buf = 136315394;
    v34 = "[SSRVoiceProfileRetrainerPSR needsRetrainingWithAudioFiles:]";
    v35 = 2114;
    v36 = psrModelFilePath;
    v18 = "%s PSRNeedsRetraining(YES): phsSATFile doesnt exist at: %{public}@.";
    v19 = v23;
    v20 = 22;
    goto LABEL_17;
  }

  v10 = [v4 count];
  v11 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
  v12 = v11;
  maximumSpeakerVectors = self->_maximumSpeakerVectors;
  if (v10 <= maximumSpeakerVectors && v11 != v10)
  {
    v14 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_maximumSpeakerVectors;
      v16 = [SSRUtils stringForCSSpIdType:self->_spIdType];
      *buf = 136316162;
      v34 = "[SSRVoiceProfileRetrainerPSR needsRetrainingWithAudioFiles:]";
      v35 = 2050;
      v36 = v10;
      v37 = 2050;
      v38 = v12;
      v39 = 2050;
      v40 = v15;
      v41 = 2114;
      v42 = v16;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s PSRNeedsRetraining(YES): SpeakerVectors MISMATCH! (%{public}ld, %{public}ld, %{public}ld, %{public}@)", buf, 0x34u);
    }

LABEL_9:

LABEL_18:
    v22 = 1;
    goto LABEL_19;
  }

  v14 = *MEMORY[0x277D01970];
  v27 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v10 > maximumSpeakerVectors && v12 != maximumSpeakerVectors)
  {
    if (v27)
    {
      v28 = self->_maximumSpeakerVectors;
      v29 = [SSRUtils stringForCSSpIdType:self->_spIdType];
      *buf = 136316162;
      v34 = "[SSRVoiceProfileRetrainerPSR needsRetrainingWithAudioFiles:]";
      v35 = 2050;
      v36 = v10;
      v37 = 2050;
      v38 = v12;
      v39 = 2050;
      v40 = v28;
      v41 = 2114;
      v42 = v29;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s PSRNeedsRetraining(YES): SpeakerVectors Max MISMATCH! (%{public}ld, %{public}ld, %{public}ld, %{public}@)", buf, 0x34u);
    }

    goto LABEL_9;
  }

  if (v27)
  {
    v30 = self->_maximumSpeakerVectors;
    v31 = [SSRUtils stringForCSSpIdType:self->_spIdType];
    *buf = 136316162;
    v34 = "[SSRVoiceProfileRetrainerPSR needsRetrainingWithAudioFiles:]";
    v35 = 2050;
    v36 = v10;
    v37 = 2050;
    v38 = v12;
    v39 = 2050;
    v40 = v30;
    v41 = 2114;
    v42 = v31;
    _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s PSRNeedsRetraining(NO): audioFiles:%{public}ld, vectors:%{public}ld, max:%{public}ld, modelType: %{public}@", buf, 0x34u);
  }

LABEL_14:
  v22 = 0;
LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [SSRUtils stringForSpeakerRecognizerType:1];
  v5 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
  v6 = [v3 stringWithFormat:@"{%@:%@}", v4, v5];

  return v6;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[SSRVoiceProfileRetrainerPSR dealloc]";
    v8 = 2114;
    v9 = self;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s dealloc %{public}@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = SSRVoiceProfileRetrainerPSR;
  [(SSRVoiceProfileRetrainerPSR *)&v5 dealloc];
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
    v10 = "[SSRVoiceProfileRetrainerPSR resetModelForRetraining]";
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

- (SSRVoiceProfileRetrainerPSR)initWithVoiceRetrainingContext:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = SSRVoiceProfileRetrainerPSR;
  v5 = [(SSRVoiceProfileRetrainerPSR *)&v41 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v4 modelsContext];
  v7 = [SSRUtils stringForSpeakerRecognizerType:1];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v37 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v43 = "[SSRVoiceProfileRetrainerPSR initWithVoiceRetrainingContext:]";
      v38 = "%s PSRModel Retraining context is nil! - Skipping";
LABEL_14:
      _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 0xCu);
    }

LABEL_15:

    v36 = 0;
    goto LABEL_16;
  }

  if ([v4 forceRetrain])
  {
    v9 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 voiceProfileModelFilePath];
      *buf = 136315394;
      v43 = "[SSRVoiceProfileRetrainerPSR initWithVoiceRetrainingContext:]";
      v44 = 2114;
      v45 = v10;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Deleting model file at %{public}@", buf, 0x16u);
    }

    v11 = [v8 voiceProfileModelFilePath];
    v12 = [v11 path];
    v13 = [SSRUtils removeItemAtPath:v12];
  }

  v14 = [SSRSpeakerRecognitionScorer alloc];
  v15 = [v4 voiceProfile];
  v16 = [v15 profileID];
  v17 = [v8 voiceProfileModelFilePath];
  v18 = [v8 configFilePath];
  v19 = [v4 resourceFilePath];
  v20 = [(SSRSpeakerRecognitionScorer *)v14 initWithProfileID:v16 withModelFile:v17 withConfigFile:v18 withResourceFile:v19 withOffsetsType:0 forRetraining:1];
  psrScorer = v5->_psrScorer;
  v5->_psrScorer = v20;

  if (!v5->_psrScorer)
  {
    v37 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v43 = "[SSRVoiceProfileRetrainerPSR initWithVoiceRetrainingContext:]";
      v38 = "%s ERR: Cannot create PSR Scorer";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v22 = dispatch_queue_create("com.apple.corespeech.speakerretrain.psrq", 0);
  queue = v5->_queue;
  v5->_queue = v22;

  v24 = [v8 configFilePath];
  configFilePath = v5->_configFilePath;
  v5->_configFilePath = v24;

  v26 = [v4 resourceFilePath];
  resourceFilePath = v5->_resourceFilePath;
  v5->_resourceFilePath = v26;

  v28 = [v8 voiceProfileModelFilePath];
  psrModelFilePath = v5->_psrModelFilePath;
  v5->_psrModelFilePath = v28;

  v30 = [v4 voiceProfile];
  voiceProfile = v5->_voiceProfile;
  v5->_voiceProfile = v30;

  v32 = [v8 compareModelFilePaths];
  comparativeModels = v5->_comparativeModels;
  v5->_comparativeModels = v32;

  v5->_maximumSpeakerVectors = [v4 maxAllowedSpeakerVectors];
  v34 = [v4 configVersion];
  configVersion = v5->_configVersion;
  v5->_configVersion = v34;

  v5->_spIdType = [v4 spIdType];
LABEL_9:
  v36 = v5;
LABEL_16:

  v39 = *MEMORY[0x277D85DE8];
  return v36;
}

@end