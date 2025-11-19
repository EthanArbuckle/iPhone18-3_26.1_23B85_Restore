@interface SSRVoiceProfileRetrainerSATExclave
- (BOOL)implicitTrainingRequired;
- (BOOL)needsRetrainingWithAudioFiles:(id)a3;
- (BOOL)resetModelForRetraining;
- (NSString)description;
- (SSRVoiceProfileRetrainerSATExclave)initWithVoiceRetrainingContext:(id)a3 secureAsset:(id)a4 secureSpeakerRecognitionConfig:(id)a5;
- (id)_processAudioFile:(id)a3;
- (id)_processSpeakerVector:(id)a3 withSize:(unint64_t)a4 withScorers:(id)a5 processedAudioDurationMs:(unint64_t)a6;
- (void)addUtterances:(id)a3 withPolicy:(id)a4 withCompletion:(id)a5;
- (void)dealloc;
- (void)purgeLastSpeakerEmbedding;
@end

@implementation SSRVoiceProfileRetrainerSATExclave

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
  v31[0] = @"spIdKnownUserSATScores";
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
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D01970];
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]";
    *&buf[12] = 2114;
    *&buf[14] = v4;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Processing %{public}@", buf, 0x16u);
  }

  self->_bestTriggerScore = -1.0;
  novDetector = self->_novDetector;
  nd_reset();
  self->_currUttLengthInMs = 0xFFFFFFFFLL;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__5702;
  v46 = __Block_byref_object_dispose__5703;
  v47 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3810000000;
  v59 = &unk_225ECB98D;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  [MEMORY[0x277D01748] lpcmInt16ASBD];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __56__SSRVoiceProfileRetrainerSATExclave__processAudioFile___block_invoke;
  v35[3] = &unk_278578A70;
  v8 = COERCE_DOUBLE(v4);
  v36 = v8;
  v37 = self;
  v38 = &v42;
  v39 = v41;
  v40 = buf;
  [SSRUtils streamAudioFromFileUrl:*&v8 audioStreamBasicDescriptor:v52 samplesPerStreamChunk:640 audioDataAvailableHandler:v35];
  v9 = v43[5];
  if (v9)
  {
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *v52 = 136315650;
      v53 = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]";
      v54 = 2114;
      v55 = v8;
      v56 = 2114;
      v57 = v9;
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ERR: Failed processing %{public}@ with error %{public}@", v52, 0x20u);
      v9 = v43[5];
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
      *v52 = 136315394;
      v53 = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]";
      v54 = 2050;
      v55 = v17;
      _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s Found last detection results, trigger score = %{public}f", v52, 0x16u);
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

      v24 = [(NSData *)self->_speakerVector length]>> 2;
      self->_speakerVectorSize = v24;
      v25 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        v34 = self->_speakerVector;
        *v52 = 136315651;
        v53 = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]";
        v54 = 2113;
        v55 = *&v34;
        v56 = 2048;
        v57 = v24;
        _os_log_debug_impl(&dword_225E12000, v25, OS_LOG_TYPE_DEBUG, "%s SpeakerVector: %{private}@ [dimension=%ld]", v52, 0x20u);
      }

      v11 = 0;
      self->_processedAudioDurationMs = self->_currUttLengthInMs;
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get valid supervector for %@ - Skipping...", *&v8];
      v26 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v27 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA450];
      v49 = v26;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v29 = [v27 errorWithDomain:@"com.apple.speakerrecognition" code:743 userInfo:v28];

      v30 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        *v52 = 136315394;
        v53 = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]";
        v54 = 2114;
        v55 = v26;
        _os_log_error_impl(&dword_225E12000, v30, OS_LOG_TYPE_ERROR, "%s %{public}@", v52, 0x16u);
      }

      v31 = [MEMORY[0x277D01708] sharedInstance];
      [v31 submitVoiceIdIssueReport:*MEMORY[0x277D01A70]];

      v11 = v29;
    }
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Too little audio %dms in %@ - Bailing out", self->_currUttLengthInMs, *&v8];
    v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *v52 = 136315394;
      v53 = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]";
      v54 = 2114;
      v55 = v12;
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s %{public}@", v52, 0x16u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277CCA450];
    v51 = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v11 = [v14 errorWithDomain:@"com.apple.speakerrecognition" code:751 userInfo:v15];
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v42, 8);

  v32 = *MEMORY[0x277D85DE8];

  return v11;
}

void __56__SSRVoiceProfileRetrainerSATExclave__processAudioFile___block_invoke(void *a1, uint64_t a2, int a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (v8)
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *buf = 136315394;
      v26 = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]_block_invoke";
      v27 = 2112;
      v28 = v10;
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
      v26 = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]_block_invoke";
      v27 = 2050;
      v28 = v15;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Reached end of file. _currUttLengthInMs: %{public}lu, calling endAudio: %@", buf, 0x20u);
    }
  }

  else
  {
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    v17 = [v16 length];
    [MEMORY[0x277D01748] lpcmInt16ASBD];
    *(*(a1[7] + 8) + 24) += v17 / v24;
    v18 = *(a1[5] + 8);
    [v16 bytes];
    nd_wavedata();
    v19 = *(a1[5] + 8);
    v20 = nd_getresults();
    if (v20)
    {
      v21 = *(a1[8] + 8);
      v22 = *v20;
      *(v21 + 48) = *(v20 + 16);
      *(v21 + 32) = v22;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
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
    [v68 addObject:self->_satScorer];
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
          v20 = [(SSRVoiceProfileRetrainerSATExclave *)self _processAudioFile:v17];
          if (v20)
          {
            v21 = v20;
            v22 = [v17 path];
            [v13 setObject:v21 forKey:v22];
            goto LABEL_16;
          }

          v22 = [(SSRVoiceProfileRetrainerSATExclave *)self _processSpeakerVector:self->_speakerVector withSize:self->_speakerVectorSize withScorers:v68 processedAudioDurationMs:self->_processedAudioDurationMs];
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
              v78 = "[SSRVoiceProfileRetrainerSATExclave addUtterances:withPolicy:withCompletion:]";
              v79 = 2114;
              v80 = v28;
              _os_log_error_impl(&dword_225E12000, v41, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
            }

            v42 = MEMORY[0x277CCA9B8];
            v91 = @"reason";
            v92 = v28;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
            v21 = [v42 errorWithDomain:@"com.apple.speakerrecognition" code:755 userInfo:v43];

            v44 = [v17 path];
            v13 = v67;
            [v67 setObject:v21 forKey:v44];

            v9 = v66;
            goto LABEL_15;
          }

          if (!v9 || (v9[2](v9, v17, v22), (v29 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v28 = [(NSURL *)self->_satModelFilePath URLByDeletingLastPathComponent];
            v30 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              log = v30;
              v63 = [v17 lastPathComponent];
              v31 = [(NSURL *)self->_satModelFilePath lastPathComponent];
              v32 = [v28 lastPathComponent];
              v33 = [v28 URLByDeletingLastPathComponent];
              [v33 lastPathComponent];
              v34 = v64 = v28;
              v35 = [(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount];
              *buf = 136316674;
              v78 = "[SSRVoiceProfileRetrainerSATExclave addUtterances:withPolicy:withCompletion:]";
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

            v36 = [(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount];
            [(SSRSpeakerRecognitionScorer *)self->_satScorer updateSAT];
            if ([(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount]- v36 == 1)
            {
              v37 = [v17 path];
              [v62 setObject:v22 forKey:v37];
              v21 = 0;
            }

            else
            {
              v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Reached max (%lu) of training utterances, Skipped SAT model update", -[SSRSpeakerRecognitionScorer getSATVectorCount](self->_satScorer, "getSATVectorCount")];
              v45 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v78 = "[SSRVoiceProfileRetrainerSATExclave addUtterances:withPolicy:withCompletion:]";
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
            v78 = "[SSRVoiceProfileRetrainerSATExclave addUtterances:withPolicy:withCompletion:]";
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
        v51 = [(NSURL *)self->_satModelFilePath absoluteString];
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

- (void)purgeLastSpeakerEmbedding
{
  *&v16[13] = *MEMORY[0x277D85DE8];
  v3 = [(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount];
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
      v14 = "[SSRVoiceProfileRetrainerSATExclave purgeLastSpeakerEmbedding]";
      v15 = 1026;
      *v16 = v5;
      v16[2] = 2114;
      *&v16[3] = v8;
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Deleting vector %{public}d from profile %{public}@", &v13, 0x1Cu);
    }

    [(SSRSpeakerRecognitionScorer *)self->_satScorer deleteVectorAtIndex:v5];
  }

  else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v10 = self->_voiceProfile;
    v11 = v4;
    v12 = [(SSRVoiceProfile *)v10 profileID];
    v13 = 136315394;
    v14 = "[SSRVoiceProfileRetrainerSATExclave purgeLastSpeakerEmbedding]";
    v15 = 2114;
    *v16 = v12;
    _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s ERR: Vector count of zero for profile %{public}@", &v13, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)implicitTrainingRequired
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    maximumSpeakerVectors = self->_maximumSpeakerVectors;
    v8 = 136315650;
    v9 = "[SSRVoiceProfileRetrainerSATExclave implicitTrainingRequired]";
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
  if (![(SSRSpeakerRecognitionScorer *)self->_satScorer satModelAvailable])
  {
    v16 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v32 = 136315138;
    v33 = "[SSRVoiceProfileRetrainerSATExclave needsRetrainingWithAudioFiles:]";
    v17 = "%s SATNeedsRetraining(YES): satModelAvailable is not available!!";
    v18 = v16;
    v19 = 12;
LABEL_10:
    _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, v17, &v32, v19);
    goto LABEL_11;
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(NSURL *)self->_satModelFilePath path];
  v7 = [v5 fileExistsAtPath:v6 isDirectory:0];

  if ((v7 & 1) == 0)
  {
    v20 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    satModelFilePath = self->_satModelFilePath;
    v32 = 136315394;
    v33 = "[SSRVoiceProfileRetrainerSATExclave needsRetrainingWithAudioFiles:]";
    v34 = 2114;
    v35 = satModelFilePath;
    v17 = "%s SATNeedsRetraining(YES): phsSATFile doesnt exist at: %{public}@.";
    v18 = v20;
    v19 = 22;
    goto LABEL_10;
  }

  v8 = [v4 count];
  v9 = [(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount];
  if (CSIsCommunalDevice())
  {
    goto LABEL_4;
  }

  maximumSpeakerVectors = self->_maximumSpeakerVectors;
  if (v8 <= maximumSpeakerVectors && v9 != v8)
  {
    v25 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      spIdType = self->_spIdType;
      v27 = v25;
      v28 = [SSRUtils stringForCSSpIdType:spIdType];
      v32 = 136316162;
      v33 = "[SSRVoiceProfileRetrainerSATExclave needsRetrainingWithAudioFiles:]";
      v34 = 2050;
      v35 = v8;
      v36 = 2050;
      v37 = v9;
      v38 = 2050;
      v39 = maximumSpeakerVectors;
      v40 = 2114;
      v41 = v28;
      v29 = "%s SATNeedsRetraining(YES): SpeakerVectors MISMATCH! (%{public}ld, %{public}ld, %{public}ld, %{public}@)";
LABEL_21:
      _os_log_impl(&dword_225E12000, v27, OS_LOG_TYPE_DEFAULT, v29, &v32, 0x34u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (v8 > maximumSpeakerVectors && v9 != maximumSpeakerVectors)
  {
    v30 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v31 = self->_spIdType;
      v27 = v30;
      v28 = [SSRUtils stringForCSSpIdType:v31];
      v32 = 136316162;
      v33 = "[SSRVoiceProfileRetrainerSATExclave needsRetrainingWithAudioFiles:]";
      v34 = 2050;
      v35 = v8;
      v36 = 2050;
      v37 = v9;
      v38 = 2050;
      v39 = maximumSpeakerVectors;
      v40 = 2114;
      v41 = v28;
      v29 = "%s SATNeedsRetraining(YES): SpeakerVectors Max MISMATCH! (%{public}ld, %{public}ld, %{public}ld, %{public}@)";
      goto LABEL_21;
    }

LABEL_11:
    v11 = 1;
    goto LABEL_12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D01970];
  v11 = 0;
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_maximumSpeakerVectors;
    v13 = self->_spIdType;
    v14 = v10;
    v15 = [SSRUtils stringForCSSpIdType:v13];
    v32 = 136316162;
    v33 = "[SSRVoiceProfileRetrainerSATExclave needsRetrainingWithAudioFiles:]";
    v34 = 2050;
    v35 = v8;
    v36 = 2050;
    v37 = v9;
    v38 = 2050;
    v39 = v12;
    v40 = 2114;
    v41 = v15;
    _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s SATNeedsRetraining(NO): audioFiles:%{public}ld, vectors:%{public}ld, max:%{public}ld, modelType: %{public}@", &v32, 0x34u);

    v11 = 0;
  }

LABEL_12:

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [SSRUtils stringForSpeakerRecognizerType:2];
  v5 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
  satModelFilePath = self->_satModelFilePath;
  v7 = [v3 stringWithFormat:@"{%@:%@:%@:%@}", v4, v5, satModelFilePath, self->_asset];

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
    v7 = "[SSRVoiceProfileRetrainerSATExclave dealloc]";
    v8 = 2114;
    v9 = self;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s dealloc %{public}@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = SSRVoiceProfileRetrainerSATExclave;
  [(SSRVoiceProfileRetrainerSATExclave *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)resetModelForRetraining
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    satModelFilePath = self->_satModelFilePath;
    v9 = 136315394;
    v10 = "[SSRVoiceProfileRetrainerSATExclave resetModelForRetraining]";
    v11 = 2114;
    v12 = satModelFilePath;
    _os_log_error_impl(&dword_225E12000, v3, OS_LOG_TYPE_ERROR, "%s Deleting model file at %{public}@", &v9, 0x16u);
  }

  v4 = [(NSURL *)self->_satModelFilePath path];
  v5 = [SSRUtils removeItemAtPath:v4];

  result = [(SSRSpeakerRecognitionScorer *)self->_satScorer resetScorerWithModelFilePath:self->_satModelFilePath];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (SSRVoiceProfileRetrainerSATExclave)initWithVoiceRetrainingContext:(id)a3 secureAsset:(id)a4 secureSpeakerRecognitionConfig:(id)a5
{
  v75 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = 0;
  if (v9 && v10)
  {
    v68.receiver = self;
    v68.super_class = SSRVoiceProfileRetrainerSATExclave;
    self = [(SSRVoiceProfileRetrainerSATExclave *)&v68 init];
    if (!self)
    {
LABEL_40:
      self = self;
      v12 = self;
      goto LABEL_41;
    }

    SSRLogInitIfNeeded();
    objc_storeStrong(&self->_asset, a4);
    objc_storeStrong(&self->_ctx, a3);
    v13 = [v9 modelsContext];
    v14 = [SSRUtils stringForSpeakerRecognizerType:2];
    v64 = [v13 objectForKeyedSubscript:v14];

    if (v64)
    {
      if (self->_asset)
      {
        objc_storeStrong(&self->_speakerRecognitionConfig, a5);
        v15 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig satMemoryIndex];
        v16 = v15 == 0;

        if (v16)
        {
          v43 = *MEMORY[0x277D015C8];
          if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_32;
          }

          *buf = 136315138;
          *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
          v44 = "%s Secure Speaker detector memory index is nil - Skipping";
        }

        else
        {
          v17 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig satConfigString];
          v18 = v17 == 0;

          if (v18)
          {
            v43 = *MEMORY[0x277D015C8];
            if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_32;
            }

            *buf = 136315138;
            *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
            v44 = "%s Secure Speaker detector config is nil - Skipping";
          }

          else
          {
            if ([v9 forceRetrain])
            {
              v19 = *MEMORY[0x277D015C8];
              if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
              {
                v20 = v19;
                v21 = [v64 secureProfileModelFilePath];
                *buf = 136315394;
                *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
                *&buf[12] = 2114;
                *&buf[14] = v21;
                _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s Deleting model file at %{public}@", buf, 0x16u);
              }

              v22 = [v64 secureProfileModelFilePath];
              v23 = [v22 path];
              v24 = [SSRUtils removeItemAtPath:v23];
            }

            v25 = [SSRSpeakerRecognitionScorer alloc];
            v26 = [v9 voiceProfile];
            v27 = [v26 profileID];
            v28 = [v64 secureProfileModelFilePath];
            v29 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig satConfigString];
            v30 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig satMemoryIndex];
            LOBYTE(v63) = 1;
            v31 = [(SSRSpeakerRecognitionScorer *)v25 initWithProfileID:v27 withModelFile:v28 withConfigFile:0 withResourceFile:0 configData:v29 memoryIndex:v30 withOffsetsType:0 forRetraining:v63];
            satScorer = self->_satScorer;
            self->_satScorer = v31;

            if (self->_satScorer)
            {
              v33 = nd_create();
              self->_novDetector = v33;
              if (v33)
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                v74 = 1;
                v34 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig satMemoryIndex];
                v35 = [v34 memoryIndexes];
                v65[0] = MEMORY[0x277D85DD0];
                v65[1] = 3221225472;
                v65[2] = __112__SSRVoiceProfileRetrainerSATExclave_initWithVoiceRetrainingContext_secureAsset_secureSpeakerRecognitionConfig___block_invoke;
                v65[3] = &unk_278578A48;
                v67 = buf;
                v36 = self;
                v66 = v36;
                [v35 enumerateKeysAndObjectsUsingBlock:v65];

                if (*(*&buf[8] + 24))
                {
                  novDetector = self->_novDetector;
                  v38 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig satConfigString];
                  v39 = v38;
                  [v38 cStringUsingEncoding:4];
                  v40 = nd_initialize();

                  v41 = *MEMORY[0x277D01970];
                  if (v40)
                  {
                    v42 = v41;
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                    {
                      v61 = self->_novDetector;
                      v62 = nd_error();
                      *v69 = 136315394;
                      v70 = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
                      v71 = 2080;
                      v72 = v62;
                      _os_log_error_impl(&dword_225E12000, v42, OS_LOG_TYPE_ERROR, "%s Failed to initialize nov detector with error %s", v69, 0x16u);
                    }
                  }

                  else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
                  {
                    *v69 = 136315138;
                    v70 = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
                    _os_log_impl(&dword_225E12000, v41, OS_LOG_TYPE_INFO, "%s Successfully created nov detector", v69, 0xCu);
                  }

                  _Block_object_dispose(buf, 8);
                  if (!v40)
                  {
                    v46 = dispatch_queue_create("com.apple.corespeech.speakerretrain.secure.satq", 0);
                    queue = v36->_queue;
                    v36->_queue = v46;

                    v48 = [v64 configFilePath];
                    configFilePath = v36->_configFilePath;
                    v36->_configFilePath = v48;

                    v50 = [v9 resourceFilePath];
                    resourceFilePath = v36->_resourceFilePath;
                    v36->_resourceFilePath = v50;

                    v52 = [v64 secureProfileModelFilePath];
                    satModelFilePath = v36->_satModelFilePath;
                    v36->_satModelFilePath = v52;

                    v54 = [v9 voiceProfile];
                    voiceProfile = v36->_voiceProfile;
                    v36->_voiceProfile = v54;

                    comparativeModels = v36->_comparativeModels;
                    v36->_comparativeModels = 0;

                    v36->_maximumSpeakerVectors = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig maxEnrollmentUtterances];
                    v57 = [v9 configVersion];
                    configVersion = v36->_configVersion;
                    v36->_configVersion = v57;

                    v36->_spIdType = [v9 spIdType];
                    goto LABEL_40;
                  }
                }

                else
                {
                  v45 = *MEMORY[0x277D01970];
                  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                  {
                    *v69 = 136315138;
                    v70 = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
                    _os_log_error_impl(&dword_225E12000, v45, OS_LOG_TYPE_ERROR, "%s ERR: Cannot create SAT nd detector", v69, 0xCu);
                  }

                  _Block_object_dispose(buf, 8);
                }

                goto LABEL_32;
              }

              v43 = *MEMORY[0x277D015C8];
              if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
                v44 = "%s Secure Speaker detector failed to create nov detector.";
                goto LABEL_31;
              }

LABEL_32:

              v12 = 0;
              goto LABEL_41;
            }

            v43 = *MEMORY[0x277D015C8];
            if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_32;
            }

            *buf = 136315138;
            *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
            v44 = "%s ERR: Cannot create SAT Scorer";
          }
        }
      }

      else
      {
        v43 = *MEMORY[0x277D015C8];
        if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        *buf = 136315138;
        *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
        v44 = "%s SATModel Retraining asset is nil! - Skipping";
      }
    }

    else
    {
      v43 = *MEMORY[0x277D015C8];
      if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
      v44 = "%s SATModel Retraining context is nil! - Skipping";
    }

LABEL_31:
    _os_log_impl(&dword_225E12000, v43, OS_LOG_TYPE_DEFAULT, v44, buf, 0xCu);
    goto LABEL_32;
  }

LABEL_41:

  v59 = *MEMORY[0x277D85DE8];
  return v12;
}

void __112__SSRVoiceProfileRetrainerSATExclave_initWithVoiceRetrainingContext_secureAsset_secureSpeakerRecognitionConfig___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
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
        v15 = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]_block_invoke";
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