@interface SSRVoiceProfilePruner
- (id)_retrainVoiceProfile:(id)a3 withAsset:(id)a4;
- (unint64_t)_deleteUtterances:(id)a3;
- (void)_getScoresForAudio:(id)a3 withController:(id)a4 withDetector:(id)a5 forProfile:(id)a6 withCompletion:(id)a7;
- (void)pruneVoiceProfile:(id)a3 forSpIdType:(unint64_t)a4 withAsset:(id)a5;
@end

@implementation SSRVoiceProfilePruner

- (unint64_t)_deleteUtterances:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    v8 = MEMORY[0x277D01970];
    do
    {
      v18 = v6;
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v19 + 1) + 8 * i) path];
        v11 = [v10 stringByDeletingPathExtension];
        v12 = [v11 stringByAppendingPathExtension:@"json"];

        v13 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v24 = "[SSRVoiceProfilePruner _deleteUtterances:]";
          v25 = 2114;
          v26 = v10;
          _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Deleting %{public}@", buf, 0x16u);
        }

        v14 = [SSRUtils removeItemAtPath:v10];
        v15 = [SSRUtils removeItemAtPath:v12];
      }

      v6 = v18 + v5;
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_retrainVoiceProfile:(id)a3 withAsset:(id)a4
{
  v45[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v27 = a4;
  v6 = +[SSRVoiceProfileManager sharedInstance];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__5164;
  v36 = __Block_byref_object_dispose__5165;
  v37 = 0;
  v44[0] = @"SSRVoiceRetrainingVoiceProfile";
  v44[1] = @"SSRVoiceRetrainingPayloadProfile";
  v45[0] = v5;
  v45[1] = MEMORY[0x277CBEC28];
  v44[2] = @"SSRVoiceRetrainingAsset";
  v45[2] = v27;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];
  v8 = [SSRVoiceProfileRetrainingContext alloc];
  v9 = (v33 + 5);
  obj = v33[5];
  v10 = [(SSRVoiceProfileRetrainingContext *)v8 initWithVoiceRetrainingContext:v7 error:&obj];
  objc_storeStrong(v9, obj);
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = [MEMORY[0x277CBEAA8] date];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __56__SSRVoiceProfilePruner__retrainVoiceProfile_withAsset___block_invoke;
  v28[3] = &unk_2785789C8;
  v30 = &v32;
  v13 = v11;
  v29 = v13;
  [v6 triggerRetrainingVoiceProfile:v5 withContext:v10 withCompletion:v28];
  v14 = dispatch_time(0, 12000000000);
  v15 = dispatch_group_wait(v13, v14);
  v16 = [MEMORY[0x277CBEAA8] date];
  [v16 timeIntervalSinceDate:v12];
  if (v15)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Pruner: Timeout (%fms) waiting for retraining - Bailing out", v17 * 1000.0];
    v19 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "[SSRVoiceProfilePruner _retrainVoiceProfile:withAsset:]";
      v42 = 2114;
      v43 = v18;
      _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v38 = @"reason";
    v39 = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v22 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:707 userInfo:v21];
    v23 = v33[5];
    v33[5] = v22;
  }

  v24 = v33[5];

  _Block_object_dispose(&v32, 8);
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

void __56__SSRVoiceProfilePruner__retrainVoiceProfile_withAsset___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)_getScoresForAudio:(id)a3 withController:(id)a4 withDetector:(id)a5 forProfile:(id)a6 withCompletion:(id)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v41 = a5;
  v13 = a6;
  v14 = a7;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__5164;
  v50 = __Block_byref_object_dispose__5165;
  v51 = 0;
  [MEMORY[0x277D01748] lpcmInt16ASBD];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __98__SSRVoiceProfilePruner__getScoresForAudio_withController_withDetector_forProfile_withCompletion___block_invoke;
  v43[3] = &unk_278578CE8;
  v45 = &v46;
  v15 = v12;
  v44 = v15;
  [SSRUtils streamAudioFromFileUrl:v11 audioStreamBasicDescriptor:buf samplesPerStreamChunk:640 audioDataAvailableHandler:v43];
  if (!v47[5])
  {
    v17 = [v15 getLatestSpeakerInfo];
    if (!v17)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get scoreCard - Bailing out"];
      v19 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[SSRVoiceProfilePruner _getScoresForAudio:withController:withDetector:forProfile:withCompletion:]";
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v58 = @"reason";
      v59 = v18;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v22 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:111 userInfo:v21];
      v23 = v47[5];
      v47[5] = v22;

      if (v14)
      {
        v14[2](v14, v47[5], -INFINITY, -INFINITY, -INFINITY, -INFINITY);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LODWORD(v61) = -8388608;
    v24 = [v17 objectForKeyedSubscript:@"spIdKnownUserScores"];
    if (v24)
    {
      v25 = [v13 profileID];
      v26 = [v24 objectForKeyedSubscript:v25];
      [v26 floatValue];
    }

    v27 = [v17 objectForKeyedSubscript:@"spIdKnownUserPSRExpScores"];
    if (v27)
    {
      v28 = [v13 profileID];
      v29 = [v27 objectForKeyedSubscript:v28];
      [v29 floatValue];
    }

    v30 = [v17 objectForKeyedSubscript:@"spIdKnownUserSATExpScores"];
    if (v30)
    {
      v31 = [v13 profileID];
      v32 = [v30 objectForKeyedSubscript:v31];
      [v32 floatValue];
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __98__SSRVoiceProfilePruner__getScoresForAudio_withController_withDetector_forProfile_withCompletion___block_invoke_24;
    v42[3] = &unk_2785789A0;
    v42[4] = &v46;
    v42[5] = buf;
    [v41 computeTriggerConfidenceForAudio:v11 withCompletion:v42];
    if (v47[5])
    {
      v33 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v39 = [v11 lastPathComponent];
        v40 = v47[5];
        *v52 = 136315650;
        v53 = "[SSRVoiceProfilePruner _getScoresForAudio:withController:withDetector:forProfile:withCompletion:]";
        v54 = 2114;
        v55 = v39;
        v56 = 2114;
        v57 = v40;
        _os_log_error_impl(&dword_225E12000, v33, OS_LOG_TYPE_ERROR, "%s ERR: Failed in trigger processing %{public}@ with %{public}@", v52, 0x20u);
      }

      if (!v14)
      {
        goto LABEL_26;
      }

      v34 = v47[5];
    }

    else
    {
      if (!v14)
      {
LABEL_26:

        _Block_object_dispose(buf, 8);
        goto LABEL_27;
      }

      v34 = 0;
      v35 = *(*&buf[8] + 24);
    }

    (v14[2])(v14, v34);
    goto LABEL_26;
  }

  v16 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v37 = [v11 lastPathComponent];
    v38 = v47[5];
    *buf = 136315650;
    *&buf[4] = "[SSRVoiceProfilePruner _getScoresForAudio:withController:withDetector:forProfile:withCompletion:]";
    *&buf[12] = 2114;
    *&buf[14] = v37;
    *&buf[22] = 2114;
    v61 = v38;
    _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s ERR: Failed in processing %{public}@ with %{public}@", buf, 0x20u);
  }

  if (v14)
  {
    v14[2](v14, v47[5], -INFINITY, -INFINITY, -INFINITY, -INFINITY);
  }

LABEL_27:

  _Block_object_dispose(&v46, 8);
  v36 = *MEMORY[0x277D85DE8];
}

void __98__SSRVoiceProfilePruner__getScoresForAudio_withController_withDetector_forProfile_withCompletion___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else if (a3)
  {
    [*(a1 + 32) endAudio];
  }

  else
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    [*(a1 + 32) processAudio:v8 withNumberOfSamples:{objc_msgSend(v8, "length") >> 1}];
  }
}

void __98__SSRVoiceProfilePruner__getScoresForAudio_withController_withDetector_forProfile_withCompletion___block_invoke_24(uint64_t a1, void *a2, float a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

- (void)pruneVoiceProfile:(id)a3 forSpIdType:(unint64_t)a4 withAsset:(id)a5
{
  v198[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (CSIsIOS())
  {
    if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v10 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
        v185 = 1026;
        *v186 = a4;
        v11 = "%s Called with explicit spId type %{public}d - Bailing out";
        v12 = v10;
        v13 = 18;
LABEL_7:
        _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    v15 = [SSRLoggingAggregator alloc];
    v16 = [v8 locale];
    v17 = [v9 configVersion];
    v146 = [(SSRLoggingAggregator *)v15 initWithEvent:@"pruning" locale:v16 configVersion:v17];

    v143 = [MEMORY[0x277CBEB18] arrayWithCapacity:28];
    v145 = [v8 getExplicitEnrollmentUtterancesForType:1];
    v144 = [v8 getImplicitEnrollmentUtterancesForType:1];
    v141 = [v9 pruningNumRetentionUtterance];
    v18 = [v8 pruningCookie];
    v19 = [v9 voiceProfilePruningCookie];
    [v9 pruningThresholdPSR];
    v21 = v20;
    [v9 pruningThresholdSAT];
    v23 = v22;
    [v9 pruningExplicitUttThresholdPSR];
    v25 = v24;
    [v9 pruningExplicitUttThresholdSAT];
    v27 = v26;
    [v9 satVTImplicitThreshold];
    v29 = v28;
    v30 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
      v185 = 2114;
      *v186 = v19;
      *&v186[8] = 2114;
      *&v186[10] = v18;
      _os_log_impl(&dword_225E12000, v30, OS_LOG_TYPE_DEFAULT, "%s Voice Profile pruning cookie from Asset %{public}@ lastCookie %{public}@", buf, 0x20u);
    }

    if (v19)
    {
      if (!v18 || ![v18 isEqualToString:v19])
      {
        v33 = [v8 updatePruningCookie:v19];
        v34 = *MEMORY[0x277D01970];
        if (v33)
        {
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
            v185 = 2114;
            *v186 = v145;
            *&v186[8] = 2114;
            *&v186[10] = v144;
            _os_log_impl(&dword_225E12000, v34, OS_LOG_TYPE_DEFAULT, "%s Explicit utterances: %{public}@, Implicit utterances: %{public}@", buf, 0x20u);
          }

          if (v145)
          {
            if ([v145 count] > 3)
            {
              if (v144 && [v144 count])
              {
                v37 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                  _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s Pruning(1)::----------------------------- Retrain profile to create explicit model ---------------------------------------", buf, 0xCu);
                }

                v38 = [(SSRVoiceProfilePruner *)self _retrainVoiceProfile:v8 withAsset:v9];
                if (v38)
                {
                  v39 = *MEMORY[0x277D01970];
                  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                    v185 = 2114;
                    *v186 = v38;
                    _os_log_error_impl(&dword_225E12000, v39, OS_LOG_TYPE_ERROR, "%s ERR: creating pruning voice profile failed with %{public}@", buf, 0x16u);
                  }

                  [(SSRLoggingAggregator *)v146 setVoiceProfilePruningFailureReasonCode:5];
                  [(SSRLoggingAggregator *)v146 pushAnalytics];
                }

                else
                {
                  v198[0] = &unk_283933918;
                  v197[0] = @"SSRSpeakerRecognitionStyle";
                  v197[1] = @"SSRSpeakerRecognitionProfileArray";
                  v196 = v8;
                  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v196 count:1];
                  v198[1] = v42;
                  v197[2] = @"SSRSpeakerRecognitionAsset";
                  v198[2] = v9;
                  v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v198 forKeys:v197 count:3];

                  v175 = 0;
                  v176 = &v175;
                  v177 = 0x3032000000;
                  v178 = __Block_byref_object_copy__5164;
                  v179 = __Block_byref_object_dispose__5165;
                  v180 = 0;
                  v43 = [SSRSpeakerRecognitionContext alloc];
                  v44 = (v176 + 5);
                  obj = v176[5];
                  v136 = [(SSRSpeakerRecognitionContext *)v43 initWithVoiceRecognitionContext:v122 error:&obj];
                  objc_storeStrong(v44, obj);
                  v45 = v176[5];
                  if (v45 || !v136)
                  {
                    v74 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                      v185 = 2114;
                      *v186 = v45;
                      _os_log_error_impl(&dword_225E12000, v74, OS_LOG_TYPE_ERROR, "%s ERR: Failed to create SSR context with error %{public}@ - Bailing out", buf, 0x16u);
                    }

                    v142 = 0;
                    v138 = 0;
                  }

                  else
                  {
                    v46 = [SSRSpeakerRecognitionController alloc];
                    v47 = (v176 + 5);
                    v173 = v176[5];
                    v140 = [(SSRSpeakerRecognitionController *)v46 initWithContext:v136 withDelegate:self error:&v173];
                    objc_storeStrong(v47, v173);
                    v48 = [SSRTriggerPhraseDetector alloc];
                    v49 = [v8 locale];
                    v135 = [(SSRTriggerPhraseDetector *)v48 initWithLocale:v49 asset:v9];

                    v50 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                      _os_log_impl(&dword_225E12000, v50, OS_LOG_TYPE_DEFAULT, "%s Pruning(2)::----------------------------- Check Explicit Utterance scores ---------------------------------------", buf, 0xCu);
                    }

                    v171 = 0u;
                    v172 = 0u;
                    v169 = 0u;
                    v170 = 0u;
                    v125 = v145;
                    v51 = [v125 countByEnumeratingWithState:&v169 objects:v195 count:16];
                    if (v51)
                    {
                      log = 0;
                      v126 = 0;
                      v132 = *v170;
                      *&v52 = 136315138;
                      v118 = v52;
                      while (2)
                      {
                        v53 = 0;
                        v128 = v51;
                        do
                        {
                          if (*v170 != v132)
                          {
                            objc_enumerationMutation(v125);
                          }

                          v54 = *(*(&v169 + 1) + 8 * v53);
                          v165 = 0;
                          v166 = &v165;
                          v167 = 0x2020000000;
                          v168 = -8388608;
                          v161 = 0;
                          v162 = &v161;
                          v163 = 0x2020000000;
                          v164 = -8388608;
                          v157 = 0;
                          v158 = &v157;
                          v159 = 0x2020000000;
                          v160 = -8388608;
                          v153 = 0;
                          v154 = &v153;
                          v155 = 0x2020000000;
                          v156 = -8388608;
                          v55 = [(SSRSpeakerRecognitionController *)v140 resetWithContext:v136, v118];
                          v152[0] = MEMORY[0x277D85DD0];
                          v152[1] = 3221225472;
                          v152[2] = __65__SSRVoiceProfilePruner_pruneVoiceProfile_forSpIdType_withAsset___block_invoke;
                          v152[3] = &unk_278578970;
                          v152[4] = &v175;
                          v152[5] = &v165;
                          v152[6] = &v161;
                          v152[7] = &v157;
                          v152[8] = &v153;
                          [(SSRVoiceProfilePruner *)self _getScoresForAudio:v54 withController:v140 withDetector:v135 forProfile:v8 withCompletion:v152];
                          v137 = v176[5];
                          if (v137)
                          {
                            v57 = *MEMORY[0x277D01970];
                            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                            {
                              *buf = v118;
                              v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                              _os_log_error_impl(&dword_225E12000, v57, OS_LOG_TYPE_ERROR, "%s ERR: ScoreCard is nil in voice profile pruning - Bailing out", buf, 0xCu);
                            }

                            [(SSRLoggingAggregator *)v146 setVoiceProfilePruningFailureReasonCode:6];
                            [(SSRLoggingAggregator *)v146 pushAnalytics];
                          }

                          else
                          {
                            v58 = v166[6];
                            if (v58 <= 0.0 || v58 <= v27 || (v59 = v162[6], v59 <= 0.0) || v59 <= v25)
                            {
                              LODWORD(v56) = *(v158 + 6);
                              [(SSRLoggingAggregator *)v146 appendVoiceProfileFailedExplicitUtteranceScoreWith:v56];
                              v67 = *MEMORY[0x277D01970];
                              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                              {
                                v68 = [v54 lastPathComponent];
                                v69 = v154[6];
                                v70 = v166[6];
                                v71 = v162[6];
                                v72 = *(v158 + 6);
                                *buf = 136317442;
                                v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                                v185 = 1026;
                                *v186 = v126;
                                *&v186[4] = 2114;
                                *&v186[6] = v68;
                                *&v186[14] = 2050;
                                *&v186[16] = v69;
                                *&v186[24] = 2050;
                                *&v186[26] = v29;
                                *&v186[34] = 2050;
                                *&v186[36] = v70;
                                v187 = 2050;
                                v188 = v27;
                                v189 = 2050;
                                v190 = v71;
                                v191 = 2050;
                                v192 = v25;
                                v193 = 2050;
                                v194 = v72;
                                _os_log_error_impl(&dword_225E12000, v67, OS_LOG_TYPE_ERROR, "%s Low Score Explicit utterance[%{public}d]: %{public}@ --> T:(%{public}.3f, %{public}.3f) S:(%{public}.3f, %{public}.3f) P:(%{public}.3f, %{public}.3f) C:%{public}.3f", buf, 0x62u);
                              }

                              log = 1;
                            }

                            else
                            {
                              v60 = *MEMORY[0x277D01970];
                              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                              {
                                v61 = [v54 lastPathComponent];
                                v62 = v154[6];
                                v63 = v166[6];
                                v64 = v162[6];
                                v65 = *(v158 + 6);
                                *buf = 136317442;
                                v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                                v185 = 1026;
                                *v186 = v126;
                                *&v186[4] = 2114;
                                *&v186[6] = v61;
                                *&v186[14] = 2050;
                                *&v186[16] = v62;
                                *&v186[24] = 2050;
                                *&v186[26] = v29;
                                *&v186[34] = 2050;
                                *&v186[36] = v63;
                                v187 = 2050;
                                v188 = v27;
                                v189 = 2050;
                                v190 = v64;
                                v191 = 2050;
                                v192 = v25;
                                v193 = 2050;
                                v194 = v65;
                                _os_log_impl(&dword_225E12000, v60, OS_LOG_TYPE_DEFAULT, "%s Explicit utterance[%{public}d]: %{public}@ --> T:(%{public}.3f, %{public}.3f) S:(%{public}.3f, %{public}.3f) P:(%{public}.3f(%{public}.3f) C:%{public}.3f", buf, 0x62u);
                              }

                              LODWORD(v66) = *(v158 + 6);
                              [(SSRLoggingAggregator *)v146 appendVoiceProfileExplicitUtteranceScoreWith:v66];
                            }

                            ++v126;
                          }

                          _Block_object_dispose(&v153, 8);
                          _Block_object_dispose(&v157, 8);
                          _Block_object_dispose(&v161, 8);
                          _Block_object_dispose(&v165, 8);
                          if (v137)
                          {
LABEL_107:

LABEL_108:
                            v142 = 0;
                            v138 = 0;
                            goto LABEL_109;
                          }

                          ++v53;
                        }

                        while (v128 != v53);
                        v51 = [v125 countByEnumeratingWithState:&v169 objects:v195 count:16];
                        if (v51)
                        {
                          continue;
                        }

                        break;
                      }

                      if (log)
                      {
                        v73 = *MEMORY[0x277D01970];
                        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                        {
                          *buf = v118;
                          v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                          _os_log_error_impl(&dword_225E12000, v73, OS_LOG_TYPE_ERROR, "%s ERR: Detected explicit utterances with lower scores, Bailing out", buf, 0xCu);
                        }

                        [(SSRLoggingAggregator *)v146 setVoiceProfilePruningFailureReasonCode:4];
                        [(SSRLoggingAggregator *)v146 pushAnalytics];
                        goto LABEL_108;
                      }
                    }

                    else
                    {
                    }

                    v75 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                      _os_log_impl(&dword_225E12000, v75, OS_LOG_TYPE_DEFAULT, "%s Pruning(3)::----------------------------- Implicit selection ---------------------------------------", buf, 0xCu);
                    }

                    v150 = 0u;
                    v151 = 0u;
                    v148 = 0u;
                    v149 = 0u;
                    v120 = v144;
                    v76 = [v120 countByEnumeratingWithState:&v148 objects:v182 count:16];
                    if (v76)
                    {
                      v121 = 0;
                      loga = 0;
                      v130 = *v149;
                      *&v77 = 136315138;
                      v119 = v77;
                      while (2)
                      {
                        v78 = 0;
                        v127 = v76;
                        do
                        {
                          if (*v149 != v130)
                          {
                            objc_enumerationMutation(v120);
                          }

                          v79 = *(*(&v148 + 1) + 8 * v78);
                          v165 = 0;
                          v166 = &v165;
                          v167 = 0x2020000000;
                          v168 = -8388608;
                          v161 = 0;
                          v162 = &v161;
                          v163 = 0x2020000000;
                          v164 = -8388608;
                          v157 = 0;
                          v158 = &v157;
                          v159 = 0x2020000000;
                          v160 = -8388608;
                          v153 = 0;
                          v154 = &v153;
                          v155 = 0x2020000000;
                          v156 = -8388608;
                          v80 = [(SSRSpeakerRecognitionController *)v140 resetWithContext:v136, v119];
                          v147[0] = MEMORY[0x277D85DD0];
                          v147[1] = 3221225472;
                          v147[2] = __65__SSRVoiceProfilePruner_pruneVoiceProfile_forSpIdType_withAsset___block_invoke_9;
                          v147[3] = &unk_278578970;
                          v147[4] = &v175;
                          v147[5] = &v165;
                          v147[6] = &v161;
                          v147[7] = &v157;
                          v147[8] = &v153;
                          [(SSRVoiceProfilePruner *)self _getScoresForAudio:v79 withController:v140 withDetector:v135 forProfile:v8 withCompletion:v147];
                          v133 = v79;
                          v139 = v176[5];
                          if (v139)
                          {
                            v81 = *MEMORY[0x277D01970];
                            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                            {
                              *buf = v119;
                              v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                              _os_log_error_impl(&dword_225E12000, v81, OS_LOG_TYPE_ERROR, "%s ERR: ScoreCard is nil in voice profile pruning - Bailing out", buf, 0xCu);
                            }

                            [(SSRLoggingAggregator *)v146 setVoiceProfilePruningFailureReasonCode:6];
                            [(SSRLoggingAggregator *)v146 pushAnalytics];
                          }

                          else
                          {
                            if (v154[6] <= v29 || (v82 = v166[6], v82 <= 0.0) || v82 <= v23 || (v83 = v162[6], v83 <= 0.0) || v83 <= v21)
                            {
                              v91 = *MEMORY[0x277D01970];
                              if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                              {
                                v94 = [v133 lastPathComponent];
                                v95 = v154[6];
                                v96 = v166[6];
                                v97 = v162[6];
                                v98 = *(v158 + 6);
                                *buf = 136317442;
                                v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                                v185 = 1026;
                                *v186 = loga;
                                *&v186[4] = 2114;
                                *&v186[6] = v94;
                                *&v186[14] = 2050;
                                *&v186[16] = v95;
                                *&v186[24] = 2050;
                                *&v186[26] = v29;
                                *&v186[34] = 2050;
                                *&v186[36] = v96;
                                v187 = 2050;
                                v188 = v23;
                                v189 = 2050;
                                v190 = v97;
                                v191 = 2050;
                                v192 = v21;
                                v193 = 2050;
                                v194 = v98;
                                _os_log_error_impl(&dword_225E12000, v91, OS_LOG_TYPE_ERROR, "%s Deleting low Score Implicit utterance[%{public}d]: %{public}@ --> T:(%{public}.3f, %{public}.3f) S:(%{public}.3f, %{public}.3f) P:(%{public}.3f, %{public}.3f) C:%{public}.3f", buf, 0x62u);
                              }

                              LODWORD(v92) = *(v158 + 6);
                              [(SSRLoggingAggregator *)v146 appendVoiceProfileDiscardedImplicitUtteranceScoreWith:v92];
                              v181 = v133;
                              v93 = [MEMORY[0x277CBEA60] arrayWithObjects:&v181 count:1];
                              [(SSRVoiceProfilePruner *)self _deleteUtterances:v93];

                              ++v121;
                            }

                            else
                            {
                              v84 = *MEMORY[0x277D01970];
                              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                              {
                                v85 = [v133 lastPathComponent];
                                v86 = v154[6];
                                v87 = v166[6];
                                v88 = v162[6];
                                v89 = *(v158 + 6);
                                *buf = 136317442;
                                v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                                v185 = 1026;
                                *v186 = loga;
                                *&v186[4] = 2114;
                                *&v186[6] = v85;
                                *&v186[14] = 2050;
                                *&v186[16] = v86;
                                *&v186[24] = 2050;
                                *&v186[26] = v29;
                                *&v186[34] = 2050;
                                *&v186[36] = v87;
                                v187 = 2050;
                                v188 = v23;
                                v189 = 2050;
                                v190 = v88;
                                v191 = 2050;
                                v192 = v21;
                                v193 = 2050;
                                v194 = v89;
                                _os_log_impl(&dword_225E12000, v84, OS_LOG_TYPE_DEFAULT, "%s Implicit utterance[%{public}d]: %{public}@ --> T:(%{public}.3f, %{public}.3f) S:(%{public}.3f, %{public}.3f) P:(%{public}.3f, %{public}.3f) C:%{public}.3f", buf, 0x62u);
                              }

                              LODWORD(v90) = *(v158 + 6);
                              [(SSRLoggingAggregator *)v146 appendVoiceProfileImplicitUtteranceScoreWith:v90];
                            }

                            ++loga;
                          }

                          _Block_object_dispose(&v153, 8);
                          _Block_object_dispose(&v157, 8);
                          _Block_object_dispose(&v161, 8);
                          _Block_object_dispose(&v165, 8);
                          if (v139)
                          {
                            v125 = v120;
                            goto LABEL_107;
                          }

                          ++v78;
                        }

                        while (v127 != v78);
                        v76 = [v120 countByEnumeratingWithState:&v148 objects:v182 count:16];
                        if (v76)
                        {
                          continue;
                        }

                        break;
                      }

                      v99 = v121;
                    }

                    else
                    {
                      v99 = 0;
                    }

                    [(SSRLoggingAggregator *)v146 setVoiceProfileDiscardedUtteranceCount:v99];
                    v100 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                      _os_log_impl(&dword_225E12000, v100, OS_LOG_TYPE_DEFAULT, "%s Pruning(4)::----------------------------- Implicit sampling ---------------------------------------", buf, 0xCu);
                    }

                    v138 = [v8 getImplicitEnrollmentUtterancesForType:a4];
                    v101 = v141 + [v138 count] - 1;
                    v131 = v101 / v141;
                    if (v141 <= v101)
                    {
                      v134 = [v125 count];
                      v114 = 0;
                      v129 = v141 + 5;
                      for (i = -1; v114 < [v138 count]; --i)
                      {
                        if (v114 % v131)
                        {
                          v116 = [v138 objectAtIndexedSubscript:v114];
                          [v143 addObject:v116];
                        }

                        else
                        {
                          ++v134;
                        }

                        v117 = [v138 count];
                        if (v129 > v134 && i + v117 <= v129 - v134)
                        {
                          break;
                        }

                        ++v114;
                      }
                    }

                    v102 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                    {
                      v103 = [v138 count];
                      v104 = [v143 count];
                      *buf = 136316162;
                      v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                      v185 = 2050;
                      *v186 = v103;
                      *&v186[8] = 2050;
                      *&v186[10] = v131;
                      *&v186[18] = 2050;
                      *&v186[20] = v141;
                      *&v186[28] = 2050;
                      *&v186[30] = v104;
                      _os_log_impl(&dword_225E12000, v102, OS_LOG_TYPE_DEFAULT, "%s Utterance selection totalImplicit: %{public}lu selectionIndex: %{public}lu retentionCount: %{public}lu deleteCount: %{public}lu ", buf, 0x34u);
                    }

                    if (v143 && [v143 count])
                    {
                      v105 = [MEMORY[0x277CBEB58] setWithArray:v138];
                      v106 = [MEMORY[0x277CBEB98] setWithArray:v143];
                      [v105 minusSet:v106];
                      v142 = [v105 allObjects];
                    }

                    else
                    {
                      v142 = v138;
                    }

                    v107 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                    {
                      v108 = [v143 count];
                      *buf = 136315650;
                      v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                      v185 = 2048;
                      *v186 = v108;
                      *&v186[8] = 2114;
                      *&v186[10] = v143;
                      _os_log_impl(&dword_225E12000, v107, OS_LOG_TYPE_DEFAULT, "%s Deleting implicit utterances(%lu) - %{public}@", buf, 0x20u);
                    }

                    [(SSRVoiceProfilePruner *)self _deleteUtterances:v143];
                    -[SSRLoggingAggregator setVoiceProfilePrunedUtteranceCount:](v146, "setVoiceProfilePrunedUtteranceCount:", [v143 count]);
                    -[SSRLoggingAggregator setVoiceProfileRetainedUtteranceCount:](v146, "setVoiceProfileRetainedUtteranceCount:", [v142 count]);
                    v109 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                      _os_log_impl(&dword_225E12000, v109, OS_LOG_TYPE_DEFAULT, "%s Pruning(5)::----------------------------- Retrain the voice profile ---------------------------------------", buf, 0xCu);
                    }

                    v110 = [(SSRVoiceProfilePruner *)self _retrainVoiceProfile:v8 withAsset:v9];
                    v111 = v176[5];
                    v176[5] = v110;

                    v112 = v176[5];
                    if (v112)
                    {
                      v113 = *MEMORY[0x277D01970];
                      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315394;
                        v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                        v185 = 2114;
                        *v186 = v112;
                        _os_log_error_impl(&dword_225E12000, v113, OS_LOG_TYPE_ERROR, "%s ERR: creating pruning voice profile failed with %{public}@", buf, 0x16u);
                      }

                      [(SSRLoggingAggregator *)v146 setVoiceProfilePruningFailureReasonCode:7];
                    }

                    [(SSRLoggingAggregator *)v146 pushAnalytics];
LABEL_109:
                  }

                  _Block_object_dispose(&v175, 8);
                }
              }

              else
              {
                v40 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                  _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Zero implicit utterances - Bailing out", buf, 0xCu);
                }

                [(SSRLoggingAggregator *)v146 setVoiceProfilePruningFailureReasonCode:3];
                [(SSRLoggingAggregator *)v146 pushAnalytics];
              }
            }

            else
            {
              v35 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                _os_log_error_impl(&dword_225E12000, v35, OS_LOG_TYPE_ERROR, "%s ERR: Low explicit utterances - Bailing out", buf, 0xCu);
              }

              [(SSRLoggingAggregator *)v146 setVoiceProfilePruningFailureReasonCode:2];
              [(SSRLoggingAggregator *)v146 pushAnalytics];
            }
          }

          else
          {
            v36 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
              _os_log_error_impl(&dword_225E12000, v36, OS_LOG_TYPE_ERROR, "%s ERR: No explicit utterances!!! - Bailing out", buf, 0xCu);
            }

            [(SSRLoggingAggregator *)v146 setVoiceProfilePruningFailureReasonCode:1];
            [(SSRLoggingAggregator *)v146 pushAnalytics];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
          _os_log_error_impl(&dword_225E12000, v34, OS_LOG_TYPE_ERROR, "%s ERR: Failed updating pruning cookie", buf, 0xCu);
        }

        goto LABEL_42;
      }

      v31 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
        v32 = "%s Already pruned voice profile - Bailing out";
LABEL_25:
        _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 0xCu);
      }
    }

    else
    {
      v31 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
        v32 = "%s Pruning cookie unavailable from asset - Bailing out";
        goto LABEL_25;
      }
    }

LABEL_42:

    goto LABEL_43;
  }

  v14 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v184 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
    v11 = "%s ";
    v12 = v14;
    v13 = 12;
    goto LABEL_7;
  }

LABEL_43:

  v41 = *MEMORY[0x277D85DE8];
}

void __65__SSRVoiceProfilePruner_pruneVoiceProfile_forSpIdType_withAsset___block_invoke(void *a1, void *a2, float a3, float a4, float a5, float a6)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v12 = a2;
  *(*(a1[5] + 8) + 24) = a4;
  *(*(a1[6] + 8) + 24) = a5;
  *(*(a1[7] + 8) + 24) = a6;
  *(*(a1[8] + 8) + 24) = a3;
}

void __65__SSRVoiceProfilePruner_pruneVoiceProfile_forSpIdType_withAsset___block_invoke_9(void *a1, void *a2, float a3, float a4, float a5, float a6)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v12 = a2;
  *(*(a1[5] + 8) + 24) = a4;
  *(*(a1[6] + 8) + 24) = a5;
  *(*(a1[7] + 8) + 24) = a6;
  *(*(a1[8] + 8) + 24) = a3;
}

@end