@interface SSRVoiceProfileRetrainerSAT
- (BOOL)implicitTrainingRequired;
- (BOOL)needsRetrainingWithAudioFiles:(id)a3;
- (BOOL)resetModelForRetraining;
- (NSString)description;
- (SSRVoiceProfileRetrainerSAT)initWithVoiceRetrainingContext:(id)a3;
- (id)_processAudioFile:(id)a3 withSATProcessor:(id)a4;
- (id)_processSuperVector:(id)a3 withSize:(unint64_t)a4 withScorers:(id)a5 processedAudioDurationMs:(unint64_t)a6;
- (void)addUtterances:(id)a3 withPolicy:(id)a4 withCompletion:(id)a5;
- (void)purgeLastSpeakerEmbedding;
@end

@implementation SSRVoiceProfileRetrainerSAT

- (id)_processSuperVector:(id)a3 withSize:(unint64_t)a4 withScorers:(id)a5 processedAudioDurationMs:(unint64_t)a6
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
        [v16 analyzeSuperVector:v8 withDimensions:a4 withThresholdType:{0, v25}];
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

- (id)_processAudioFile:(id)a3 withSATProcessor:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D01970];
  v9 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileRetrainerSAT _processAudioFile:withSATProcessor:]";
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Processing %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v71 = __Block_byref_object_copy__1201;
  v72 = __Block_byref_object_dispose__1202;
  v73 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  self->_bestTriggerScore = -1.0;
  v57 = 0xFFFFFFFFLL;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__1201;
  v52 = __Block_byref_object_dispose__1202;
  v53 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0;
  [MEMORY[0x277D01748] lpcmInt16ASBD];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __66__SSRVoiceProfileRetrainerSAT__processAudioFile_withSATProcessor___block_invoke;
  v39[3] = &unk_278577FE0;
  v40 = 0;
  v10 = COERCE_DOUBLE(v6);
  v41 = v10;
  v43 = &v48;
  v44 = &v54;
  v45 = v47;
  v11 = v7;
  v42 = v11;
  v46 = buf;
  [SSRUtils streamAudioFromFileUrl:*&v10 audioStreamBasicDescriptor:v64 samplesPerStreamChunk:640 audioDataAvailableHandler:v39];
  v12 = v49[5];
  if (v12)
  {
    v13 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *v64 = 136315650;
      v65 = "[SSRVoiceProfileRetrainerSAT _processAudioFile:withSATProcessor:]";
      v66 = 2114;
      v67 = v10;
      v68 = 2114;
      v69 = v12;
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: Failed processing %{public}@ with error %{public}@", v64, 0x20u);
      v12 = v49[5];
    }

    v14 = v12;
  }

  else if (v55[3] > 0xC7)
  {
    v19 = *(*&buf[8] + 40);
    if (v19)
    {
      [v19 bestScore];
      v21 = v20;
      self->_bestTriggerScore = v20;
      v22 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *v64 = 136315394;
        v65 = "[SSRVoiceProfileRetrainerSAT _processAudioFile:withSATProcessor:]";
        v66 = 2050;
        v67 = v21;
        _os_log_impl(&dword_225E12000, v22, OS_LOG_TYPE_DEFAULT, "%s Found last detection results, trigger score = %{public}f", v64, 0x16u);
      }

      v23 = [v11 getSuperVectorWithEndPoint:{objc_msgSend(*(*&buf[8] + 40), "bestEnd")}];
      v24 = v23;
      if (v23 && [v23 length])
      {
        v25 = 0;
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get valid supervector for %@ - Skipping...", *&v10];
        v26 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v27 = *v8;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *v64 = 136315394;
          v65 = "[SSRVoiceProfileRetrainerSAT _processAudioFile:withSATProcessor:]";
          v66 = 2114;
          v67 = v26;
          _os_log_error_impl(&dword_225E12000, v27, OS_LOG_TYPE_ERROR, "%s %{public}@", v64, 0x16u);
        }

        v28 = [MEMORY[0x277D01708] sharedInstance];
        [v28 submitVoiceIdIssueReport:*MEMORY[0x277D01A70]];

        v29 = MEMORY[0x277CCA9B8];
        v58 = *MEMORY[0x277CCA450];
        v59 = v26;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v25 = [v29 errorWithDomain:@"com.apple.speakerrecognition" code:743 userInfo:v30];
      }

      v31 = [v24 copy];
      superVector = self->_superVector;
      self->_superVector = v31;

      self->_superVectorSize = [v24 length] >> 2;
      self->_processedAudioDurationMs = v55[3];
      v14 = v25;
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@ does not seem to contain trigger phrase - no triggerData", *&v10];
      v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v34 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *v64 = 136315394;
        v65 = "[SSRVoiceProfileRetrainerSAT _processAudioFile:withSATProcessor:]";
        v66 = 2114;
        v67 = v33;
        _os_log_error_impl(&dword_225E12000, v34, OS_LOG_TYPE_ERROR, "%s %{public}@", v64, 0x16u);
      }

      v35 = MEMORY[0x277CCA9B8];
      v60 = *MEMORY[0x277CCA450];
      v61 = v33;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v14 = [v35 errorWithDomain:@"com.apple.speakerrecognition" code:742 userInfo:v36];
    }
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Too little audio %dms in %@ - Bailing out", v55[3], *&v10];
    v15 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v16 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *v64 = 136315394;
      v65 = "[SSRVoiceProfileRetrainerSAT _processAudioFile:withSATProcessor:]";
      v66 = 2114;
      v67 = v15;
      _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s %{public}@", v64, 0x16u);
    }

    v17 = MEMORY[0x277CCA9B8];
    v62 = *MEMORY[0x277CCA450];
    v63 = v15;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v14 = [v17 errorWithDomain:@"com.apple.speakerrecognition" code:751 userInfo:v18];
  }

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(buf, 8);

  v37 = *MEMORY[0x277D85DE8];

  return v14;
}

void __66__SSRVoiceProfileRetrainerSAT__processAudioFile_withSATProcessor___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (*(a1 + 32))
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 136315394;
      v22 = "[SSRVoiceProfileRetrainerSAT _processAudioFile:withSATProcessor:]_block_invoke";
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Failed to read file: %@", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
  }

  else if (a3)
  {
    v11 = *(*(*(a1 + 72) + 8) + 24);
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    *(*(*(a1 + 64) + 8) + 24) = ((v11 / v12) * 1000.0);
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*(*(a1 + 64) + 8) + 24);
      v15 = *(a1 + 40);
      *buf = 136315650;
      v22 = "[SSRVoiceProfileRetrainerSAT _processAudioFile:withSATProcessor:]_block_invoke";
      v23 = 2048;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Reached end of file. _currUttLengthInMs: %lu, calling endAudio: %@", buf, 0x20u);
    }
  }

  else
  {
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    v17 = [v16 length];
    [MEMORY[0x277D01748] lpcmInt16ASBD];
    *(*(*(a1 + 72) + 8) + 24) += v17 / v20;
    v18 = [*(a1 + 48) analyzeWavData:v16 numSamples:?];
    if (v18)
    {
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), v18);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)addUtterances:(id)a3 withPolicy:(id)a4 withCompletion:(id)a5
{
  v110[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v69 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v8 || ![v8 count])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"File Array is nil"];
    v14 = v16;
    if (v10)
    {
      v17 = MEMORY[0x277CCA9B8];
      v109 = *MEMORY[0x277CCA450];
      v110[0] = v16;
      v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:&v109 count:1];
      v18 = [v17 errorWithDomain:@"com.apple.speakerrecognition" code:701 userInfo:?];
      (*(v10 + 2))(v10, v18, 0, 0);
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  comparativeModels = self->_comparativeModels;
  if (comparativeModels)
  {
    v13 = [SSRSpeakerRecognitionScorer createVoiceScorersWithVoiceProfiles:comparativeModels withConfigFile:self->_configFilePath withResourceFile:self->_resourceFilePath withOffsetsType:0 forRetraining:1];
    v14 = v13;
    if (!v13 || ![v13 count])
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = self->_comparativeModels;
      v21 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
      v78 = [v19 stringWithFormat:@"Cannot create comparative scorers from %@ on profile %@", v20, v21];

      v22 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v89 = "[SSRVoiceProfileRetrainerSAT addUtterances:withPolicy:withCompletion:]";
        v90 = 2114;
        v91 = v78;
        _os_log_error_impl(&dword_225E12000, v22, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
        if (!v10)
        {
          goto LABEL_48;
        }
      }

      else if (!v10)
      {
        goto LABEL_48;
      }

      v23 = MEMORY[0x277CCA9B8];
      v107 = @"reason";
      v108 = v78;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      v24 = [v23 errorWithDomain:@"com.apple.speakerrecognition" code:755 userInfo:v18];
      (*(v10 + 2))(v10, v24, 0, 0);

      goto LABEL_47;
    }

    v67 = v10;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v66 = v14;
    [v15 addObjectsFromArray:v14];
  }

  else
  {
    v67 = v10;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v66 = 0;
  }

  v77 = v15;
  [v15 addObject:self->_satScorer];
  v25 = [SSRTriggerPhraseDetectorNDAPI alloc];
  v26 = [(NSURL *)self->_configFilePath path];
  v27 = [(NSURL *)self->_resourceFilePath path];
  v78 = [(SSRTriggerPhraseDetectorNDAPI *)v25 initWithConfigPath:v26 resourcePath:v27 phId:0];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v68 = v8;
  obj = v8;
  v28 = [obj countByEnumeratingWithState:&v82 objects:v106 count:16];
  if (!v28)
  {
    goto LABEL_44;
  }

  v29 = v28;
  v80 = *MEMORY[0x277CCA450];
  v81 = *v83;
  v75 = v9;
  v76 = v11;
  do
  {
    v30 = 0;
    v70 = v29;
    do
    {
      if (*v83 != v81)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v82 + 1) + 8 * v30);
      v32 = objc_autoreleasePoolPush();
      v33 = [v31 pathExtension];
      v34 = [v33 isEqualToString:@"wav"];

      if (v34)
      {
        [(SSRTriggerPhraseDetectorNDAPI *)v78 reset];
        v35 = [(SSRVoiceProfileRetrainerSAT *)self _processAudioFile:v31 withSATProcessor:v78];
        if (v35)
        {
          v36 = v35;
          v37 = [v31 path];
          [v11 setObject:v36 forKey:v37];
          goto LABEL_26;
        }

        v37 = [(SSRVoiceProfileRetrainerSAT *)self _processSuperVector:self->_superVector withSize:self->_superVectorSize withScorers:v77 processedAudioDurationMs:self->_processedAudioDurationMs];
        if (!v37)
        {
          v53 = MEMORY[0x277CCACA8];
          v54 = [v31 lastPathComponent];
          v55 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
          v43 = [v53 stringWithFormat:@"Failed to get scorecard for utterance %@ on profile %@", v54, v55];

          v56 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v89 = "[SSRVoiceProfileRetrainerSAT addUtterances:withPolicy:withCompletion:]";
            v90 = 2114;
            v91 = v43;
            _os_log_error_impl(&dword_225E12000, v56, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
          }

          v57 = MEMORY[0x277CCA9B8];
          v102 = @"reason";
          v103 = v43;
          v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v36 = [v57 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:v58];

          v59 = [v31 path];
          v11 = v76;
          [v76 setObject:v36 forKey:v59];

          v9 = v75;
          goto LABEL_25;
        }

        if (!v9 || (v9[2](v9, v31, v37), (v44 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v43 = [(NSURL *)self->_satModelFilePath URLByDeletingLastPathComponent];
          v45 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            log = v45;
            v71 = [v31 lastPathComponent];
            [(NSURL *)self->_satModelFilePath lastPathComponent];
            v47 = v46 = v43;
            v72 = [(SSRTriggerPhraseDetectorNDAPI *)v46 lastPathComponent];
            v73 = [(SSRTriggerPhraseDetectorNDAPI *)v46 URLByDeletingLastPathComponent];
            v48 = [v73 lastPathComponent];
            v49 = [(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount];
            *buf = 136316674;
            v89 = "[SSRVoiceProfileRetrainerSAT addUtterances:withPolicy:withCompletion:]";
            v90 = 2114;
            v91 = v71;
            v92 = 2114;
            v93 = v47;
            v94 = 2114;
            v95 = v72;
            v96 = 2114;
            v97 = v48;
            v50 = v48;
            v98 = 2048;
            v99 = v49;
            v100 = 2114;
            v101 = v37;
            _os_log_impl(&dword_225E12000, log, OS_LOG_TYPE_DEFAULT, "%s Adding %{public}@ to {%{public}@, %{public}@, %{public}@} as %lu vector with scoreCard %{public}@", buf, 0x48u);

            v9 = v75;
            v43 = v46;
            v29 = v70;
          }

          v51 = [(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount];
          [(SSRSpeakerRecognitionScorer *)self->_satScorer updateSAT];
          if ([(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount]- v51 == 1)
          {
            v52 = [v31 path];
            [v69 setObject:v37 forKey:v52];
            v36 = 0;
          }

          else
          {
            v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Reached max (%lu) of training utterances, Skipped SAT model update", -[SSRSpeakerRecognitionScorer getSATVectorCount](self->_satScorer, "getSATVectorCount")];
            v60 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v89 = "[SSRVoiceProfileRetrainerSAT addUtterances:withPolicy:withCompletion:]";
              v90 = 2114;
              v91 = v52;
              _os_log_error_impl(&dword_225E12000, v60, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
            }

            v61 = MEMORY[0x277CCA9B8];
            v86 = v80;
            v87 = v52;
            v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
            v36 = [v61 errorWithDomain:@"com.apple.speakerrecognition" code:739 userInfo:v62];

            v63 = [v31 path];
            [v76 setObject:v36 forKey:v63];

            v9 = v75;
          }

          v11 = v76;
          goto LABEL_25;
        }

        v36 = v44;
      }

      else
      {
        v38 = MEMORY[0x277CCACA8];
        v39 = [v31 path];
        v37 = [v38 stringWithFormat:@"Invalid file format %@ ", v39];

        v40 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v89 = "[SSRVoiceProfileRetrainerSAT addUtterances:withPolicy:withCompletion:]";
          v90 = 2114;
          v91 = v37;
          _os_log_error_impl(&dword_225E12000, v40, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
        }

        v41 = MEMORY[0x277CCA9B8];
        v104 = v80;
        v105 = v37;
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
        v36 = [v41 errorWithDomain:@"com.apple.speakerrecognition" code:729 userInfo:v42];
      }

      v43 = [v31 path];
      [v11 setObject:v36 forKey:v43];
LABEL_25:

LABEL_26:
      objc_autoreleasePoolPop(v32);
      ++v30;
    }

    while (v29 != v30);
    v64 = [obj countByEnumeratingWithState:&v82 objects:v106 count:16];
    v29 = v64;
  }

  while (v64);
LABEL_44:

  v10 = v67;
  if (v67)
  {
    (*(v67 + 2))(v67, 0, v69, v11);
  }

  v8 = v68;
  v14 = v66;
  v18 = v77;
LABEL_47:

LABEL_48:
LABEL_49:

  v65 = *MEMORY[0x277D85DE8];
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
      v14 = "[SSRVoiceProfileRetrainerSAT purgeLastSpeakerEmbedding]";
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
    v14 = "[SSRVoiceProfileRetrainerSAT purgeLastSpeakerEmbedding]";
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
    v9 = "[SSRVoiceProfileRetrainerSAT implicitTrainingRequired]";
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
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(SSRVoiceProfile *)self->_voiceProfile voiceProfileBasePath];
  v35 = 0;
  if (([v5 fileExistsAtPath:v6 isDirectory:&v35] & 1) == 0)
  {
    v7 = v35;
    if ((v35 & 1) == 0)
    {
      v21 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v37 = "[SSRVoiceProfileRetrainerSAT needsRetrainingWithAudioFiles:]";
        v38 = 2114;
        v39 = v6;
        v40 = 1026;
        LODWORD(v41) = v7;
        _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s ERR: Cannot find SAT Audio dir at %{public}@: isDir: %{public}d - Bailing out", buf, 0x1Cu);
      }

      goto LABEL_12;
    }
  }

  if (![(SSRSpeakerRecognitionScorer *)self->_satScorer satModelAvailable])
  {
    v17 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v37 = "[SSRVoiceProfileRetrainerSAT needsRetrainingWithAudioFiles:]";
    v18 = "%s SATNeedsRetraining(YES): satModelAvailable is not available!!";
    v19 = v17;
    v20 = 12;
LABEL_15:
    _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_16;
  }

  v8 = [(NSURL *)self->_satModelFilePath path];
  v9 = [v5 fileExistsAtPath:v8 isDirectory:0];

  if ((v9 & 1) == 0)
  {
    v23 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    satModelFilePath = self->_satModelFilePath;
    *buf = 136315394;
    v37 = "[SSRVoiceProfileRetrainerSAT needsRetrainingWithAudioFiles:]";
    v38 = 2114;
    v39 = satModelFilePath;
    v18 = "%s SATNeedsRetraining(YES): phsSATFile doesnt exist at: %{public}@.";
    v19 = v23;
    v20 = 22;
    goto LABEL_15;
  }

  v10 = [v4 count];
  v11 = [(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount];
  if (CSIsCommunalDevice())
  {
    goto LABEL_6;
  }

  maximumSpeakerVectors = self->_maximumSpeakerVectors;
  if (v10 <= maximumSpeakerVectors && v11 != v10)
  {
    v28 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      spIdType = self->_spIdType;
      v30 = v28;
      v31 = [SSRUtils stringForCSSpIdType:spIdType];
      *buf = 136316162;
      v37 = "[SSRVoiceProfileRetrainerSAT needsRetrainingWithAudioFiles:]";
      v38 = 2050;
      v39 = v10;
      v40 = 2050;
      v41 = v11;
      v42 = 2050;
      v43 = maximumSpeakerVectors;
      v44 = 2114;
      v45 = v31;
      v32 = "%s SATNeedsRetraining(YES): SpeakerVectors MISMATCH! (%{public}ld, %{public}ld, %{public}ld, %{public}@)";
LABEL_26:
      _os_log_impl(&dword_225E12000, v30, OS_LOG_TYPE_DEFAULT, v32, buf, 0x34u);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (v10 > maximumSpeakerVectors && v11 != maximumSpeakerVectors)
  {
    v33 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v34 = self->_spIdType;
      v30 = v33;
      v31 = [SSRUtils stringForCSSpIdType:v34];
      *buf = 136316162;
      v37 = "[SSRVoiceProfileRetrainerSAT needsRetrainingWithAudioFiles:]";
      v38 = 2050;
      v39 = v10;
      v40 = 2050;
      v41 = v11;
      v42 = 2050;
      v43 = maximumSpeakerVectors;
      v44 = 2114;
      v45 = v31;
      v32 = "%s SATNeedsRetraining(YES): SpeakerVectors Max MISMATCH! (%{public}ld, %{public}ld, %{public}ld, %{public}@)";
      goto LABEL_26;
    }

LABEL_16:
    v22 = 1;
    goto LABEL_17;
  }

LABEL_6:
  v12 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_maximumSpeakerVectors;
    v14 = self->_spIdType;
    v15 = v12;
    v16 = [SSRUtils stringForCSSpIdType:v14];
    *buf = 136316162;
    v37 = "[SSRVoiceProfileRetrainerSAT needsRetrainingWithAudioFiles:]";
    v38 = 2050;
    v39 = v10;
    v40 = 2050;
    v41 = v11;
    v42 = 2050;
    v43 = v13;
    v44 = 2114;
    v45 = v16;
    _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s SATNeedsRetraining(NO): audioFiles:%{public}ld, vectors:%{public}ld, max:%{public}ld, modelType: %{public}@", buf, 0x34u);
  }

LABEL_12:
  v22 = 0;
LABEL_17:

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [SSRUtils stringForSpeakerRecognizerType:2];
  v5 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
  v6 = [v3 stringWithFormat:@"{%@:%@}", v4, v5];

  return v6;
}

- (BOOL)resetModelForRetraining
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    satModelFilePath = self->_satModelFilePath;
    v9 = 136315394;
    v10 = "[SSRVoiceProfileRetrainerSAT resetModelForRetraining]";
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

- (SSRVoiceProfileRetrainerSAT)initWithVoiceRetrainingContext:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v40.receiver = self;
  v40.super_class = SSRVoiceProfileRetrainerSAT;
  v5 = [(SSRVoiceProfileRetrainerSAT *)&v40 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v4 modelsContext];
  v7 = [SSRUtils stringForSpeakerRecognizerType:2];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v34 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      v33 = 0;
      goto LABEL_14;
    }

    *buf = 136315138;
    v42 = "[SSRVoiceProfileRetrainerSAT initWithVoiceRetrainingContext:]";
    v35 = "%s SATModel Retraining context is nil! - Skipping";
LABEL_16:
    _os_log_error_impl(&dword_225E12000, v34, OS_LOG_TYPE_ERROR, v35, buf, 0xCu);
    goto LABEL_13;
  }

  if ([v4 forceRetrain])
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v38 = v9;
      v39 = [v8 voiceProfileModelFilePath];
      *buf = 136315394;
      v42 = "[SSRVoiceProfileRetrainerSAT initWithVoiceRetrainingContext:]";
      v43 = 2114;
      v44 = v39;
      _os_log_error_impl(&dword_225E12000, v38, OS_LOG_TYPE_ERROR, "%s Deleting model file at %{public}@", buf, 0x16u);
    }

    v10 = [v8 voiceProfileModelFilePath];
    v11 = [v10 path];
    v12 = [SSRUtils removeItemAtPath:v11];
  }

  v13 = [SSRSpeakerRecognitionScorer alloc];
  v14 = [v4 voiceProfile];
  v15 = [v14 profileID];
  v16 = [v8 voiceProfileModelFilePath];
  v17 = [v8 configFilePath];
  v18 = [v4 resourceFilePath];
  v19 = [(SSRSpeakerRecognitionScorer *)v13 initWithProfileID:v15 withModelFile:v16 withConfigFile:v17 withResourceFile:v18 withOffsetsType:0 forRetraining:1];
  satScorer = v5->_satScorer;
  v5->_satScorer = v19;

  if (!v5->_satScorer)
  {
    v34 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    v42 = "[SSRVoiceProfileRetrainerSAT initWithVoiceRetrainingContext:]";
    v35 = "%s ERR: Cannot create SAT Scorer";
    goto LABEL_16;
  }

  v21 = dispatch_queue_create("com.apple.corespeech.speakerretrain.satq", 0);
  queue = v5->_queue;
  v5->_queue = v21;

  v23 = [v8 configFilePath];
  configFilePath = v5->_configFilePath;
  v5->_configFilePath = v23;

  v25 = [v4 resourceFilePath];
  resourceFilePath = v5->_resourceFilePath;
  v5->_resourceFilePath = v25;

  v27 = [v8 voiceProfileModelFilePath];
  satModelFilePath = v5->_satModelFilePath;
  v5->_satModelFilePath = v27;

  v29 = [v4 voiceProfile];
  voiceProfile = v5->_voiceProfile;
  v5->_voiceProfile = v29;

  v31 = [v8 compareModelFilePaths];
  comparativeModels = v5->_comparativeModels;
  v5->_comparativeModels = v31;

  v5->_maximumSpeakerVectors = [v4 maxAllowedSpeakerVectors];
  v5->_spIdType = [v4 spIdType];

LABEL_9:
  v33 = v5;
LABEL_14:

  v36 = *MEMORY[0x277D85DE8];
  return v33;
}

@end