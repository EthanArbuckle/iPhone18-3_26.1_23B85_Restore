@interface VTVoiceProfileRetrainer
- (BOOL)_updatePruningCookie:(id)a3;
- (BOOL)pruneVoiceProfileIfNecessary;
- (VTVoiceProfileRetrainer)initWithAnalyzer:(id)a3 languageCode:(id)a4 modelType:(unint64_t)a5 configPath:(id)a6 resourcePath:(id)a7;
- (double)_computeSamplingMSEForUtts:(id)a3 withBeforeScores:(id)a4;
- (id)_analyzeEnrollmentUtts:(id)a3 thresholdTrigger:(double)a4 thresholdSAT:(double)a5 thresholdTDSR:(double)a6 isUpdatingModel:(BOOL)a7 extraUtts:(id *)a8 discardUtts:(id *)a9 psrTimeout:(BOOL *)a10;
- (id)_getLastPruningCookie;
- (unint64_t)_deleteUtterances:(id)a3;
- (void)dealloc;
- (void)retrainSATModelWithCompletion:(id)a3;
- (void)textDependentSpeakerRecognizer:(id)a3 failedWithError:(id)a4;
- (void)textDependentSpeakerRecognizer:(id)a3 hasSatScore:(float)a4;
@end

@implementation VTVoiceProfileRetrainer

- (void)textDependentSpeakerRecognizer:(id)a3 failedWithError:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    satRetrainingTdSr = self->_satRetrainingTdSr;
    v15 = 138543874;
    v16 = v6;
    v17 = 2114;
    v18 = satRetrainingTdSr;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "tdSR: %{public}@, _tdSrForSatRetraining:%{public}@, ERROR: %{public}@", &v15, 0x20u);
  }

  v10 = self->_satRetrainingTdSr;
  if (v10 == v6)
  {
    [(VTTextDependentSpeakerRecognizer *)v10 deleteExistingSATModel];
    v12 = self->_satRetrainingTdSr;
    self->_satRetrainingTdSr = 0;

    v13 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_223A31000, v13, OS_LOG_TYPE_DEFAULT, "VTTextDependentSpeakerRecognizer failed with Error during RETRAINING", &v15, 2u);
    }

    v14 = +[VTAggregator sharedAggregator];
    [v14 logTdPsrFailedDuringSATRetraining];
  }

  else
  {
    v11 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "ERR: VTTextDependentSpeakerRecognizer failed for unmanaged TD-SR instance!!!", &v15, 2u);
    }
  }
}

- (void)textDependentSpeakerRecognizer:(id)a3 hasSatScore:(float)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v6;
    v11 = 2050;
    v12 = a4;
    _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "textDependentSpeakerRecognizer:hasSatScore: %{public}@: %{public}f, signalling now", &v9, 0x16u);
  }

  if (self->_satRetrainingTdSr == v6)
  {
    self->_retrainTDSRScore = a4;
    dispatch_semaphore_signal(self->_satRetrainingTdSrSemaphore);
  }

  else
  {
    v8 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "ERR: textDependentSpeakerRecognizer called for unmanaged TD-SR instance: %{public}@", &v9, 0xCu);
    }
  }
}

- (id)_analyzeEnrollmentUtts:(id)a3 thresholdTrigger:(double)a4 thresholdSAT:(double)a5 thresholdTDSR:(double)a6 isUpdatingModel:(BOOL)a7 extraUtts:(id *)a8 discardUtts:(id *)a9 psrTimeout:(BOOL *)a10
{
  v89 = a7;
  v127 = *MEMORY[0x277D85DE8];
  v13 = a3;
  inPropertyData = 0x40CF400000000000;
  v112 = xmmword_223B13210;
  v113 = xmmword_223B13220;
  v93 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v92 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v107 objects:v126 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = 0x277CBE000;
    v19 = *v108;
    *&v16 = 134349824;
    v88 = v16;
    v98 = v14;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v108 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v107 + 1) + 8 * i);
        if (v21 != 0.0)
        {
          outExtAudioFile = 0;
          inAudioFile = 0;
          if (AudioFileOpenURL([*(v18 + 3008) URLWithString:*&v21], kAudioFileReadPermission, 0, &inAudioFile))
          {
            goto LABEL_14;
          }

          if (ExtAudioFileWrapAudioFileID(inAudioFile, 0, &outExtAudioFile))
          {
            AudioFileClose(inAudioFile);
LABEL_14:
            inAudioFile = 0;
LABEL_15:
            v22 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v115 = v21;
              _os_log_impl(&dword_223A31000, v22, OS_LOG_TYPE_DEFAULT, "Audio file at %{public}@ cannot be open, skipping...", buf, 0xCu);
            }

            continue;
          }

          if (!inAudioFile)
          {
            goto LABEL_15;
          }

          v104 = 0;
          memset(outPropertyData, 0, sizeof(outPropertyData));
          ioPropertyDataSize = 40;
          ExtAudioFileGetProperty(outExtAudioFile, 0x66666D74u, &ioPropertyDataSize, outPropertyData);
          ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, &inPropertyData);
          v99 = [MEMORY[0x277CBEB28] dataWithLength:2048];
          v23 = [v99 mutableBytes];
          *&ioData.mNumberBuffers = 1;
          *&ioData.mBuffers[0].mNumberChannels = 0x80000000001;
          ioData.mBuffers[0].mData = v23;
          satRetrainingTdSr = self->_satRetrainingTdSr;
          if (satRetrainingTdSr)
          {
            [(VTTextDependentSpeakerRecognizer *)satRetrainingTdSr resetForNewRequest];
            v25 = dispatch_semaphore_create(0);
            satRetrainingTdSrSemaphore = self->_satRetrainingTdSrSemaphore;
            self->_satRetrainingTdSrSemaphore = v25;
          }

          v27 = 0;
          for (j = 0; ; j += ioData.mBuffers[0].mDataByteSize)
          {
            ioNumberFrames = 1024;
            v30 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, &ioData);
            if (v30)
            {
              break;
            }

            if (!ioNumberFrames)
            {
              [(VTTextDependentSpeakerRecognizer *)self->_satRetrainingTdSr endAudio];
              if (self->_satRetrainingTdSr)
              {
                v39 = [MEMORY[0x277CBEAA8] date];
                v40 = dispatch_time(0, 1000000000);
                *&v41 = COERCE_DOUBLE(dispatch_semaphore_wait(self->_satRetrainingTdSrSemaphore, v40));
                v96 = [MEMORY[0x277CBEAA8] date];
                v97 = v39;
                [v96 timeIntervalSinceDate:v39];
                v43 = v42 * 1000.0;
                v44 = VTLogContextFacilityVoiceTrigger;
                if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                {
                  v45 = self->_satRetrainingTdSr;
                  v46 = v44;
                  [(VTTextDependentSpeakerRecognizer *)v45 lastRequestSatScore];
                  *buf = 134349568;
                  v115 = *&v41;
                  v116 = 2050;
                  v117 = v43;
                  v118 = 2050;
                  v119 = v47;
                  _os_log_impl(&dword_223A31000, v46, OS_LOG_TYPE_DEFAULT, "TDSR:: Retraining: Done Waiting with timedOut=%{public}ld, tdPsrSATRetrainingWaitTimeMs: %{public}fms, _lastTdSpeakerRecognizerSATScore=%{public}f", buf, 0x20u);
                }

                v48 = v41 == 0;
                v49 = +[VTAggregator sharedAggregator];
                v50 = v49;
                if (*&v41 == 0.0)
                {
                  [v49 logTdPsrSATRetrainingWaitTimeMs:v43];
                }

                else
                {
                  [v49 logTdPsrSATRetrainingTimedOut];

                  if (a10)
                  {
                    *a10 = 1;
                  }
                }

                if (v27)
                {
LABEL_41:
                  v54 = [(VTAnalyzerNDAPI *)self->_analyzer getSuperVectorWithEndPoint:v27->var2, v88];
                  if (v54 && v54->var0 && v54->var1)
                  {
                    v55 = [VTAnalyzerNDAPI analyzeSAT:"analyzeSAT:size:" size:?];
                    if (v55)
                    {
                      p_var0 = &v55->var0;
                      var0 = v55->var0;
                      v58 = self->_satRetrainingTdSr;
                      if (v58)
                      {
                        [(VTTextDependentSpeakerRecognizer *)v58 getCombinationWeight];
                      }

                      else
                      {
                        v59 = 0.0;
                      }

                      v63 = var0;
                      retrainTDSRScore = self->_retrainTDSRScore;
                      v65 = v59 * retrainTDSRScore + (1.0 - v59) * var0;
                      if (v27->var4 < a4)
                      {
LABEL_56:
                        v66 = [MEMORY[0x277CCABB0] numberWithDouble:v65];
                        [v95 setObject:v66 forKey:*&v21];

                        if (v48)
                        {
                          goto LABEL_71;
                        }

                        goto LABEL_70;
                      }

                      if (!self->_satRetrainingTdSr)
                      {
                        if (*p_var0 < a5)
                        {
                          goto LABEL_56;
                        }

                        goto LABEL_64;
                      }

                      if (v48)
                      {
                        if (retrainTDSRScore < self->_retrainThresholdTDSR && v65 < a5)
                        {
                          goto LABEL_56;
                        }

LABEL_64:
                        v67 = [MEMORY[0x277CCABB0] numberWithDouble:v65];
                        [v93 setObject:v67 forKey:*&v21];

                        v68 = VTLogContextFacilityVoiceTrigger;
                        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                        {
                          v69 = *p_var0;
                          v70 = self->_retrainTDSRScore;
                          *buf = 138543874;
                          v115 = v21;
                          v116 = 2050;
                          v117 = v69;
                          v118 = 2050;
                          v119 = v70;
                          _os_log_impl(&dword_223A31000, v68, OS_LOG_TYPE_DEFAULT, "Analyze of %{public}@ is successful with SAT score of %{public}.3f, uttSATScore=%{public}.3f", buf, 0x20u);
                        }

                        if (v89)
                        {
                          v71 = [(VTAnalyzerNDAPI *)self->_analyzer getSATVectorCount];
                          [(VTAnalyzerNDAPI *)self->_analyzer updateSAT];
                          v72 = self->_satRetrainingTdSr;
                          if (v48)
                          {
                            [(VTTextDependentSpeakerRecognizer *)v72 updateSAT];
                          }

                          else
                          {
                            [(VTTextDependentSpeakerRecognizer *)v72 deleteExistingSATModel];
                            v82 = self->_satRetrainingTdSr;
                            self->_satRetrainingTdSr = 0;
                          }

                          if ([(VTAnalyzerNDAPI *)self->_analyzer getSATVectorCount]- v71 != 1)
                          {
                            v83 = VTLogContextFacilityVoiceTrigger;
                            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 0;
                              _os_log_error_impl(&dword_223A31000, v83, OS_LOG_TYPE_ERROR, "ERR: Reached maximum number of training utterances, skipping updating model", buf, 2u);
                            }

                            v84 = [MEMORY[0x277CCABB0] numberWithDouble:v65];
                            [v92 setObject:v84 forKey:*&v21];

                            [v93 removeObjectForKey:*&v21];
                          }
                        }
                      }

                      else
                      {
                        v73 = [MEMORY[0x277CCABB0] numberWithDouble:v65];
                        [v95 setObject:v73 forKey:*&v21];

LABEL_70:
                        [(VTTextDependentSpeakerRecognizer *)self->_satRetrainingTdSr deleteExistingSATModel];
                        v74 = self->_satRetrainingTdSr;
                        self->_satRetrainingTdSr = 0;

LABEL_71:
                        v75 = self->_satRetrainingTdSr;
                        v76 = VTLogContextFacilityVoiceTrigger;
                        v77 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR);
                        if (v75)
                        {
                          if (v77)
                          {
                            var4 = v27->var4;
                            retrainThresholdTDSR = self->_retrainThresholdTDSR;
                            v79 = self->_retrainTDSRScore;
                            *buf = 134350336;
                            v115 = var4;
                            v116 = 2050;
                            v117 = a4;
                            v118 = 2050;
                            v119 = v79;
                            v120 = 2050;
                            v121 = retrainThresholdTDSR;
                            v122 = 2050;
                            v123 = v65;
                            v124 = 2050;
                            v125 = a5;
                            _os_log_error_impl(&dword_223A31000, v76, OS_LOG_TYPE_ERROR, "ERR: Utterance failed in retraining - triggerCondition:%{public}.3f(%{public}.3f) tdsr:%{public}.3f(%{public}.3f) combined:%{public}.3f(%{public}.3f)", buf, 0x3Eu);
                          }
                        }

                        else if (v77)
                        {
                          v81 = v27->var4;
                          *buf = v88;
                          v115 = v81;
                          v116 = 2050;
                          v117 = a4;
                          v118 = 2050;
                          v119 = v63;
                          v120 = 2050;
                          v121 = a5;
                          _os_log_error_impl(&dword_223A31000, v76, OS_LOG_TYPE_ERROR, "ERR: Utterance failed in retraining - triggerCondition:%{public}.3f(%{public}.3f) sat:%{public}.3f(%{public}.3f)", buf, 0x2Au);
                        }
                      }
                    }

                    else
                    {
                      [v95 setObject:&unk_2837155B8 forKey:*&v21];
                      v62 = VTLogContextFacilityVoiceTrigger;
                      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543362;
                        v115 = v21;
                        _os_log_error_impl(&dword_223A31000, v62, OS_LOG_TYPE_ERROR, "ERR: Analyze of %{public}@ failed with SAT score as nil!!!", buf, 0xCu);
                      }
                    }

LABEL_50:
                    [(VTAnalyzerNDAPI *)self->_analyzer reset];
                    v61 = VTLogContextFacilityVoiceTrigger;
                    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543618;
                      v115 = v21;
                      v116 = 1026;
                      LODWORD(v117) = j;
                      v36 = v61;
                      v37 = "Processed file %{public}@... analyzed %{public}d bytes";
                      v38 = 18;
                      goto LABEL_5;
                    }

                    goto LABEL_6;
                  }

                  [v95 setObject:&unk_2837155B8 forKey:*&v21];
                  v60 = VTLogContextFacilityVoiceTrigger;
                  if (!os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_50;
                  }

                  *buf = 0;
                  v52 = v60;
                  v53 = "Failed to get supervector during retraining, skipping...";
LABEL_49:
                  _os_log_impl(&dword_223A31000, v52, OS_LOG_TYPE_DEFAULT, v53, buf, 2u);
                  goto LABEL_50;
                }
              }

              else
              {
                v48 = 1;
                if (v27)
                {
                  goto LABEL_41;
                }
              }

              [v95 setObject:&unk_2837155B8 forKey:{*&v21, v88}];
              v51 = VTLogContextFacilityVoiceTrigger;
              if (!os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_50;
              }

              *buf = 0;
              v52 = v51;
              v53 = "Utterance does not seem to contain trigger phrase - no triggerData";
              goto LABEL_49;
            }

            mData = ioData.mBuffers[0].mData;
            v32 = ioData.mBuffers[0].mDataByteSize >> 1;
            [(VTAnalyzerNDAPI *)self->_analyzer analyzeWavData:ioData.mBuffers[0].mData length:v32];
            v33 = self->_satRetrainingTdSr;
            if (v33)
            {
              [(VTTextDependentSpeakerRecognizer *)v33 processAudio:mData numSamples:v32];
            }

            v29 = [(VTAnalyzerNDAPI *)self->_analyzer getAnalyzedResult:0, v88];
            if (v29)
            {
              v27 = v29;
            }
          }

          v34 = v30;
          v35 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67240192;
            LODWORD(v115) = v34;
            v36 = v35;
            v37 = "Error reading audio file: %{public}d, skipping...";
            v38 = 8;
LABEL_5:
            _os_log_impl(&dword_223A31000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, v38);
          }

LABEL_6:
          AudioFileClose(inAudioFile);

          v14 = v98;
          v18 = 0x277CBE000uLL;
        }
      }

      v17 = [v14 countByEnumeratingWithState:&v107 objects:v126 count:16];
    }

    while (v17);
  }

  if (a8)
  {
    v85 = v92;
    *a8 = v92;
  }

  v86 = v95;
  if (a9)
  {
    v86 = v95;
    *a9 = v86;
  }

  return v93;
}

- (unint64_t)_deleteUtterances:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v31;
    *&v4 = 138543362;
    v26 = v4;
    v8 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        if (v10)
        {
          v11 = [*(*(&v30 + 1) + 8 * i) stringByDeletingPathExtension];
          v12 = [v11 stringByAppendingPathExtension:@"json"];

          v13 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v26;
            v35 = v10;
            _os_log_impl(&dword_223A31000, v13, OS_LOG_TYPE_DEFAULT, "Deleting %{public}@", buf, 0xCu);
          }

          v14 = v8;
          v15 = [*(v8 + 2560) defaultManager];
          v29 = 0;
          [v15 removeItemAtPath:v10 error:&v29];
          v16 = v29;

          if (v16)
          {
            v17 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
            {
              v18 = v17;
              v19 = [v16 localizedDescription];
              *buf = 138543618;
              v35 = v10;
              v36 = 2114;
              v37 = v19;
              _os_log_impl(&dword_223A31000, v18, OS_LOG_TYPE_DEFAULT, "Couldn't delete training utterance at path %{public}@ %{public}@", buf, 0x16u);
            }
          }

          v8 = v14;
          v20 = [*(v14 + 2560) defaultManager];
          v28 = v16;
          [v20 removeItemAtPath:v12 error:&v28];
          v21 = v28;

          if (v21)
          {
            v22 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
            {
              v23 = v22;
              v24 = [v21 localizedDescription];
              *buf = 138543618;
              v35 = v12;
              v36 = 2114;
              v37 = v24;
              _os_log_impl(&dword_223A31000, v23, OS_LOG_TYPE_DEFAULT, "Couldn't delete training utterance at path %{public}@ %{public}@", buf, 0x16u);
            }
          }

          ++v6;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)_computeSamplingMSEForUtts:(id)a3 withBeforeScores:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(VTVoiceProfileRetrainer *)self _analyzeEnrollmentUtts:v6 thresholdTrigger:0 thresholdSAT:0 thresholdTDSR:0 isUpdatingModel:0 extraUtts:-INFINITY discardUtts:-INFINITY psrTimeout:-INFINITY];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v38;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        if (v16)
        {
          v17 = [v7 objectForKey:*(*(&v37 + 1) + 8 * i)];
          [v17 doubleValue];
          v19 = v18;
          v20 = [v8 objectForKey:v16];
          [v20 doubleValue];
          v22 = v19 - v21;

          v23 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v23;
            v25 = [v7 objectForKey:v16];
            [v25 doubleValue];
            v27 = v26;
            [v8 objectForKey:v16];
            v36 = v12;
            v28 = v11;
            v29 = v13;
            v30 = v8;
            v31 = v7;
            v33 = v32 = v9;
            [v33 doubleValue];
            *buf = 138544130;
            v42 = v16;
            v43 = 2050;
            v44 = v27;
            v45 = 2050;
            v46 = v34;
            v47 = 2050;
            v48 = v22;
            _os_log_impl(&dword_223A31000, v24, OS_LOG_TYPE_DEFAULT, "Error for %{public}@: %{public}.3f - %{public}.3f = %{public}.3f", buf, 0x2Au);

            v9 = v32;
            v7 = v31;
            v8 = v30;
            v13 = v29;
            v11 = v28;
            v12 = v36;
          }

          v14 = v14 + v22 * v22;
          ++v12;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v11);

    if (v12)
    {
      v14 = v14 / v12;
    }
  }

  else
  {

    v14 = 0.0;
  }

  return v14;
}

- (BOOL)_updatePruningCookie:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [VTSpeakerIdUtilities getProfileVersionFilePathForLanguageCode:self->_languageCode];
  v33 = 0;
  if ([v5 fileExistsAtPath:v6 isDirectory:&v33])
  {
    if (v33)
    {
      v7 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v35 = v6;
        v8 = "ERR: %{public}@ is a directory - Bailing out";
LABEL_7:
        _os_log_error_impl(&dword_223A31000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
    v32 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v9 options:0 error:&v32];
    v11 = v32;
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      v13 = v11;
      v14 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v35 = v6;
        v36 = 2112;
        v37 = v13;
        _os_log_error_impl(&dword_223A31000, v14, OS_LOG_TYPE_ERROR, "ERR: Could not read existing %@ file: err: %@", buf, 0x16u);
      }

      goto LABEL_15;
    }

    v17 = [v10 mutableCopy];
    [v17 setObject:v4 forKeyedSubscript:@"VoiceProfilePruningCookie"];
    v18 = MEMORY[0x277CCAAA0];
    v19 = [v17 copy];
    v31 = 0;
    v20 = [v18 dataWithJSONObject:v19 options:1 error:&v31];
    v21 = v31;

    if (!v20 || v21)
    {
      v26 = VTLogContextFacilityVoiceTrigger;
      if (!os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 138412546;
      v35 = v10;
      v36 = 2112;
      v37 = v21;
      v27 = "ERR: error updating updatedVoiceProfileJsonData from: %@, err: %@";
    }

    else
    {
      v30 = 0;
      v22 = [v5 removeItemAtPath:v6 error:&v30];
      v23 = v30;
      v21 = v23;
      if (v22)
      {
        v29 = v23;
        v24 = [v20 writeToFile:v6 options:0 error:&v29];
        v25 = v29;

        if (v24 && !v25)
        {
          v15 = 1;
LABEL_32:

          goto LABEL_16;
        }

        v28 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v35 = v6;
          v36 = 2112;
          v37 = v25;
          _os_log_error_impl(&dword_223A31000, v28, OS_LOG_TYPE_ERROR, "ERR: Error writing voice profile version file at: %@, err:%@", buf, 0x16u);
        }

        v21 = v25;
LABEL_31:

        v15 = 0;
        goto LABEL_32;
      }

      v26 = VTLogContextFacilityVoiceTrigger;
      if (!os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 138412546;
      v35 = v6;
      v36 = 2112;
      v37 = v21;
      v27 = "ERR: error removing voice profile version file at: %@, err: %@";
    }

    _os_log_error_impl(&dword_223A31000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);
    goto LABEL_31;
  }

  v7 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v35 = v6;
    v8 = "ERR: %{public}@ doesn't exist - Bailing out";
    goto LABEL_7;
  }

LABEL_15:
  v15 = 0;
LABEL_16:

  return v15;
}

- (id)_getLastPruningCookie
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [VTSpeakerIdUtilities getProfileVersionFilePathForLanguageCode:self->_languageCode];
  v14 = 0;
  if (![v3 fileExistsAtPath:v4 isDirectory:&v14] || (v14 & 1) != 0)
  {
    v5 = 0;
    goto LABEL_4;
  }

  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4];
  v13 = 0;
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v13];
  v9 = v13;
  if (v5)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {

LABEL_4:
    v6 = [v5 objectForKeyedSubscript:@"VoiceProfilePruningCookie"];

    if (v6)
    {
      v6 = [v5 objectForKeyedSubscript:@"VoiceProfilePruningCookie"];
    }

    goto LABEL_6;
  }

  v11 = v9;
  v12 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v11;
    _os_log_error_impl(&dword_223A31000, v12, OS_LOG_TYPE_ERROR, "Could not read existing %@ file: err: %@", buf, 0x16u);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (BOOL)pruneVoiceProfileIfNecessary
{
  v130 = *MEMORY[0x277D85DE8];
  v95 = [MEMORY[0x277CBEB18] arrayWithCapacity:28];
  v98 = [VTUtilities getAssetHashFromConfigPath:self->_configPath];
  v97 = [VTSpeakerIdUtilities getSATDirectoryForModelType:self->_modelType forLanguageCode:self->_languageCode];
  v100 = [VTSpeakerIdUtilities getExplicitEnrollmentUtterancesForType:1 forLanguageCode:self->_languageCode];
  v99 = [VTSpeakerIdUtilities getSortedImplicitEnrollmentUtterancesForType:1 forLanguageCode:self->_languageCode];
  v96 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_numRetentionUtterances];
  v3 = [(VTVoiceProfileRetrainer *)self _getLastPruningCookie];
  v4 = [(VTAnalyzerNDAPI *)self->_analyzer getVoiceProfilePruningCookie];
  v121 = 0;
  v117 = 0;
  v118 = &v117;
  v119 = 0x2020000000;
  v120 = 0;
  v5 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v123 = v4;
    v124 = 2114;
    v125 = v3;
    _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "Voice Profile pruning cookie from Asset %{public}@ lastCookie %{public}@", buf, 0x16u);
  }

  if (v4)
  {
    if (v3)
    {
      v6 = [v3 isEqualToString:v4];
      v7 = VTLogContextFacilityVoiceTrigger;
      if (v6)
      {
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v8 = "Already pruned voice profile - Bailing out";
LABEL_10:
          _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
          goto LABEL_55;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v7 = VTLogContextFacilityVoiceTrigger;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v123 = v100;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Explicit utterances %{public}@", buf, 0xCu);
      v7 = VTLogContextFacilityVoiceTrigger;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Implicit sorted utterances:", buf, 2u);
    }

    [v99 enumerateObjectsUsingBlock:&__block_literal_global_4388];
    if (v100)
    {
      if ([v100 count] <= 3)
      {
        v9 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_223A31000, v9, OS_LOG_TYPE_ERROR, "ERR: Low explicit utterances - Bailing out", buf, 2u);
        }

        v10 = +[VTAggregator sharedAggregator];
        [v10 logVoiceProfilePruningFailureWithReasonCode:2];

        if ([(VTVoiceProfileRetrainer *)self _updatePruningCookie:v4])
        {
          goto LABEL_55;
        }

        v11 = VTLogContextFacilityVoiceTrigger;
        if (!os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_55;
        }

        *buf = 0;
        goto LABEL_50;
      }

      if (v99 && [v99 count] > self->_numRetentionUtterances)
      {
        if ([VTSpeakerIdUtilities deleteExistingSATModelForLanguageCode:self->_languageCode])
        {
          v91 = [VTSpeakerIdUtilities getSpeakerModelPathForType:1 withLanguageCode:self->_languageCode withConfigPath:self->_configPath createDirectory:1];
          [(VTAnalyzerNDAPI *)self->_analyzer initializeSAT:v91];
          v14 = [[VTTextDependentSpeakerRecognizer alloc] initWithResourcePath:self->_resourcePath satDirectory:v97 assetHash:v98 shouldCreateModelDir:1 delegate:self];
          satRetrainingTdSr = self->_satRetrainingTdSr;
          self->_satRetrainingTdSr = v14;

          [(VTTextDependentSpeakerRecognizer *)self->_satRetrainingTdSr deleteExistingSATModel];
          v16 = [[VTTextDependentSpeakerRecognizer alloc] initWithResourcePath:self->_resourcePath satDirectory:v97 assetHash:v98 shouldCreateModelDir:1 delegate:self];
          v17 = self->_satRetrainingTdSr;
          self->_satRetrainingTdSr = v16;

          v18 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            v19 = self->_satRetrainingTdSr;
            *buf = 138543362;
            v123 = v19;
            _os_log_impl(&dword_223A31000, v18, OS_LOG_TYPE_DEFAULT, "TDSR:: Created _tdSrForSatRetraining: %{public}@", buf, 0xCu);
            v18 = VTLogContextFacilityVoiceTrigger;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_223A31000, v18, OS_LOG_TYPE_DEFAULT, "Pruning::----------------------------- 1st RUN on explicit---------------------------------------", buf, 2u);
          }

          v20 = [(VTVoiceProfileRetrainer *)self _analyzeEnrollmentUtts:v100 thresholdTrigger:1 thresholdSAT:0 thresholdTDSR:0 isUpdatingModel:&v121 extraUtts:-INFINITY discardUtts:-INFINITY psrTimeout:-INFINITY];
          v21 = v20;
          if (v121 == 1)
          {
            v22 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_223A31000, v22, OS_LOG_TYPE_ERROR, "ERR: TDPSR timeout in voice profile pruning, Bailing out", buf, 2u);
            }

            v23 = +[VTAggregator sharedAggregator];
            [v23 logVoiceProfilePruningFailureWithReasonCode:5];

            if (![VTSpeakerIdUtilities deleteExistingSATModelForLanguageCode:self->_languageCode])
            {
              v24 = VTLogContextFacilityVoiceTrigger;
              if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_223A31000, v24, OS_LOG_TYPE_ERROR, "ERR: Cannot delete invalidated spk model", buf, 2u);
              }
            }

            [(VTTextDependentSpeakerRecognizer *)self->_satRetrainingTdSr deleteExistingSATModel];
            if (![(VTVoiceProfileRetrainer *)self _updatePruningCookie:v4])
            {
              v25 = VTLogContextFacilityVoiceTrigger;
              if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_223A31000, v25, OS_LOG_TYPE_ERROR, "ERR: Failed updating pruning cookie", buf, 2u);
              }
            }

            v26 = 0;
            v27 = 0;
          }

          else
          {
            *(v118 + 6) = 0;
            v116[0] = MEMORY[0x277D85DD0];
            v116[1] = 3221225472;
            v116[2] = __55__VTVoiceProfileRetrainer_pruneVoiceProfileIfNecessary__block_invoke_13;
            v116[3] = &unk_2784EC9F0;
            v116[4] = &v117;
            [v20 enumerateKeysAndObjectsUsingBlock:v116];

            v37 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_223A31000, v37, OS_LOG_TYPE_DEFAULT, "Pruning::----------------------------- 2nd RUN on explicit---------------------------------------", buf, 2u);
            }

            retrainThresholdTrigger = self->_retrainThresholdTrigger;
            retrainExplicitUttThresholdSAT = self->_retrainExplicitUttThresholdSAT;
            retrainExplicitUttThresholdTDSR = self->_retrainExplicitUttThresholdTDSR;
            v115 = 0;
            v41 = [(VTVoiceProfileRetrainer *)self _analyzeEnrollmentUtts:v100 thresholdTrigger:0 thresholdSAT:0 thresholdTDSR:&v115 isUpdatingModel:&v121 extraUtts:retrainThresholdTrigger discardUtts:retrainExplicitUttThresholdSAT psrTimeout:retrainExplicitUttThresholdTDSR];
            v27 = v115;
            *(v118 + 6) = 0;
            v112[0] = MEMORY[0x277D85DD0];
            v112[1] = 3221225472;
            v112[2] = __55__VTVoiceProfileRetrainer_pruneVoiceProfileIfNecessary__block_invoke_15;
            v112[3] = &unk_2784ECA18;
            v114 = &v117;
            v21 = v41;
            v113 = v21;
            [v21 enumerateKeysAndObjectsUsingBlock:v112];
            if (v121 == 1)
            {
              v42 = VTLogContextFacilityVoiceTrigger;
              if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_223A31000, v42, OS_LOG_TYPE_ERROR, "ERR: TDPSR timeout in voice profile pruning, Bailing out", buf, 2u);
              }

              v43 = +[VTAggregator sharedAggregator];
              [v43 logVoiceProfilePruningFailureWithReasonCode:5];

              if (![VTSpeakerIdUtilities deleteExistingSATModelForLanguageCode:self->_languageCode])
              {
                v44 = VTLogContextFacilityVoiceTrigger;
                if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_223A31000, v44, OS_LOG_TYPE_ERROR, "ERR: Cannot delete invalidated spk model", buf, 2u);
                }
              }

              [(VTTextDependentSpeakerRecognizer *)self->_satRetrainingTdSr deleteExistingSATModel];
              if (![(VTVoiceProfileRetrainer *)self _updatePruningCookie:v4])
              {
                v45 = VTLogContextFacilityVoiceTrigger;
                if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_223A31000, v45, OS_LOG_TYPE_ERROR, "ERR: Failed updating pruning cookie", buf, 2u);
                }
              }
            }

            else
            {
              if (!v27 || ![v27 count])
              {

                v50 = VTLogContextFacilityVoiceTrigger;
                if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_223A31000, v50, OS_LOG_TYPE_DEFAULT, "Pruning::----------------------------- Implicit selection ---------------------------------------", buf, 2u);
                }

                v51 = self->_retrainThresholdTrigger;
                retrainThresholdSAT = self->_retrainThresholdSAT;
                retrainThresholdTDSR = self->_retrainThresholdTDSR;
                v107 = 0;
                v108 = 0;
                v54 = [(VTVoiceProfileRetrainer *)self _analyzeEnrollmentUtts:v99 thresholdTrigger:0 thresholdSAT:&v108 thresholdTDSR:&v107 isUpdatingModel:&v121 extraUtts:v51 discardUtts:retrainThresholdSAT psrTimeout:retrainThresholdTDSR];
                v32 = v108;
                v26 = v107;
                *(v118 + 6) = 0;
                v104[0] = MEMORY[0x277D85DD0];
                v104[1] = 3221225472;
                v104[2] = __55__VTVoiceProfileRetrainer_pruneVoiceProfileIfNecessary__block_invoke_21;
                v104[3] = &unk_2784ECA18;
                v106 = &v117;
                v34 = v54;
                v105 = v34;
                [v34 enumerateKeysAndObjectsUsingBlock:v104];
                if (v121 != 1)
                {
                  if ([v32 count])
                  {
                    [v32 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_24];
                    v59 = [v32 allKeys];
                    [(VTVoiceProfileRetrainer *)self _deleteUtterances:v59];
                  }

                  v33 = [v34 allKeys];

                  v60 = VTLogContextFacilityVoiceTrigger;
                  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_223A31000, v60, OS_LOG_TYPE_DEFAULT, "Pruning::----------------------------- Implicit sampling ---------------------------------------", buf, 2u);
                  }

                  v61 = [v33 count];
                  numRetentionUtterances = self->_numRetentionUtterances;
                  v86 = (v61 - 1 + numRetentionUtterances) / numRetentionUtterances;
                  if (!__CFADD__(v61 - 1, numRetentionUtterances))
                  {
                    v87 = [v100 count];
                    loga = 0;
                    v85 = numRetentionUtterances + 5;
                    for (i = -1; ; i = v88 - 1)
                    {
                      v88 = i;
                      if ([v33 count] <= loga)
                      {
                        break;
                      }

                      if (loga % v86)
                      {
                        v64 = [v33 objectAtIndexedSubscript:?];
                        [v95 addObject:v64];
                      }

                      else
                      {
                        ++v87;
                      }

                      v65 = [v33 count];
                      if (v85 > v87 && v85 - v87 >= v88 + v65)
                      {
                        break;
                      }

                      loga = (loga + 1);
                    }
                  }

                  v66 = VTLogContextFacilityVoiceTrigger;
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                  {
                    logb = v66;
                    v89 = [v33 count];
                    v67 = self->_numRetentionUtterances;
                    v68 = [v95 count];
                    *buf = 134349824;
                    v123 = v89;
                    v124 = 2050;
                    v125 = v86;
                    v126 = 2050;
                    v127 = v67;
                    v128 = 2050;
                    v129 = v68;
                    v66 = logb;
                    _os_log_impl(&dword_223A31000, logb, OS_LOG_TYPE_DEFAULT, "Utterance selection totalImplicit: %{public}lu selectionIndex: %{public}lu retentionCount: %{public}lu deleteCount: %{public}lu ", buf, 0x2Au);
                  }

                  if (v95 && [v95 count])
                  {
                    v69 = [MEMORY[0x277CBEB58] setWithArray:v33];
                    v90 = [MEMORY[0x277CBEB98] setWithArray:v95];
                    [v69 minusSet:v90];
                    log = [v69 allObjects];
                  }

                  else
                  {
                    log = v33;
                    v69 = v96;
                  }

                  v70 = VTLogContextFacilityVoiceTrigger;
                  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_223A31000, v70, OS_LOG_TYPE_DEFAULT, "Pruning::----------------------------- Implicit adding ---------------------------------------", buf, 2u);
                  }

                  v71 = [(VTVoiceProfileRetrainer *)self _analyzeEnrollmentUtts:log thresholdTrigger:1 thresholdSAT:0 thresholdTDSR:0 isUpdatingModel:0 extraUtts:-INFINITY discardUtts:-INFINITY psrTimeout:-INFINITY];
                  [(VTVoiceProfileRetrainer *)self _computeSamplingMSEForUtts:v95 withBeforeScores:v34];
                  v73 = v72;
                  v74 = +[VTAggregator sharedAggregator];
                  [v74 logProfileUpdateScoreMSE:v73];

                  v75 = VTLogContextFacilityVoiceTrigger;
                  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_223A31000, v75, OS_LOG_TYPE_DEFAULT, "Pruning::----------------------------- Implicit deletion ---------------------------------------", buf, 2u);
                  }

                  if ([v26 count])
                  {
                    *(v118 + 6) = 0;
                    v101[0] = MEMORY[0x277D85DD0];
                    v101[1] = 3221225472;
                    v101[2] = __55__VTVoiceProfileRetrainer_pruneVoiceProfileIfNecessary__block_invoke_27;
                    v101[3] = &unk_2784ECA18;
                    v103 = &v117;
                    v76 = v26;
                    v102 = v76;
                    [v76 enumerateKeysAndObjectsUsingBlock:v101];
                    v77 = [v76 allKeys];
                    [(VTVoiceProfileRetrainer *)self _deleteUtterances:v77];
                  }

                  v78 = +[VTAggregator sharedAggregator];
                  [v78 logProfileUpdateNumDiscardedUttsPHS:{objc_msgSend(v26, "count")}];

                  if ([v95 count])
                  {
                    v79 = VTLogContextFacilityVoiceTrigger;
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                    {
                      v80 = [v95 count];
                      *buf = 134218242;
                      v123 = v80;
                      v124 = 2114;
                      v125 = v95;
                      _os_log_impl(&dword_223A31000, v79, OS_LOG_TYPE_DEFAULT, "Deleting implicit utterances(%lu) - %{public}@", buf, 0x16u);
                    }

                    [(VTVoiceProfileRetrainer *)self _deleteUtterances:v95];
                  }

                  v81 = +[VTAggregator sharedAggregator];
                  [v81 logProfileUpdateNumPrunedUttsPHS:{objc_msgSend(v95, "count")}];

                  v82 = +[VTAggregator sharedAggregator];
                  [v82 logProfileUpdateNumRetainedUttsPHS:{-[NSObject count](log, "count")}];

                  if (![(VTVoiceProfileRetrainer *)self _updatePruningCookie:v4])
                  {
                    v83 = VTLogContextFacilityVoiceTrigger;
                    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_223A31000, v83, OS_LOG_TYPE_ERROR, "ERR: Failed updating pruning cookie", buf, 2u);
                    }
                  }

                  if (![VTSpeakerIdUtilities deleteExistingSATModelForLanguageCode:self->_languageCode])
                  {
                    v84 = VTLogContextFacilityVoiceTrigger;
                    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_223A31000, v84, OS_LOG_TYPE_ERROR, "ERR: Cannot delete invalidated spk model", buf, 2u);
                    }
                  }

                  [(VTTextDependentSpeakerRecognizer *)self->_satRetrainingTdSr deleteExistingSATModel];
                  goto LABEL_82;
                }

                v55 = VTLogContextFacilityVoiceTrigger;
                if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_223A31000, v55, OS_LOG_TYPE_ERROR, "ERR: TDPSR timeout in voice profile pruning, Bailing out", buf, 2u);
                }

                v56 = +[VTAggregator sharedAggregator];
                [v56 logVoiceProfilePruningFailureWithReasonCode:6];

                if (![VTSpeakerIdUtilities deleteExistingSATModelForLanguageCode:self->_languageCode])
                {
                  v57 = VTLogContextFacilityVoiceTrigger;
                  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_223A31000, v57, OS_LOG_TYPE_ERROR, "ERR: Cannot delete invalidated spk model", buf, 2u);
                  }
                }

                [(VTTextDependentSpeakerRecognizer *)self->_satRetrainingTdSr deleteExistingSATModel];
                if (![(VTVoiceProfileRetrainer *)self _updatePruningCookie:v4])
                {
                  v58 = VTLogContextFacilityVoiceTrigger;
                  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_223A31000, v58, OS_LOG_TYPE_ERROR, "ERR: Failed updating pruning cookie", buf, 2u);
                  }
                }

                v21 = v105;
LABEL_81:

                v33 = 0;
                log = v96;
LABEL_82:

                v35 = 1;
                v96 = log;
                goto LABEL_56;
              }

              v46 = VTLogContextFacilityVoiceTrigger;
              if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v123 = v27;
                _os_log_error_impl(&dword_223A31000, v46, OS_LOG_TYPE_ERROR, "ERR: Detected explicit utterances with lower scores, bailing out - %{public}@", buf, 0xCu);
              }

              v47 = +[VTAggregator sharedAggregator];
              [v47 logVoiceProfilePruningFailureWithReasonCode:4];

              *(v118 + 6) = 0;
              v109[0] = MEMORY[0x277D85DD0];
              v109[1] = 3221225472;
              v109[2] = __55__VTVoiceProfileRetrainer_pruneVoiceProfileIfNecessary__block_invoke_20;
              v109[3] = &unk_2784ECA18;
              v111 = &v117;
              v110 = v27;
              [v110 enumerateKeysAndObjectsUsingBlock:v109];
              if (![VTSpeakerIdUtilities deleteExistingSATModelForLanguageCode:self->_languageCode])
              {
                v48 = VTLogContextFacilityVoiceTrigger;
                if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_223A31000, v48, OS_LOG_TYPE_ERROR, "ERR: Cannot delete invalidated spk model", buf, 2u);
                }
              }

              [(VTTextDependentSpeakerRecognizer *)self->_satRetrainingTdSr deleteExistingSATModel];
              if (![(VTVoiceProfileRetrainer *)self _updatePruningCookie:v4])
              {
                v49 = VTLogContextFacilityVoiceTrigger;
                if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_223A31000, v49, OS_LOG_TYPE_ERROR, "ERR: Failed updating pruning cookie", buf, 2u);
                }
              }
            }

            v26 = 0;
          }

          v32 = 0;
          v34 = 0;
          goto LABEL_81;
        }

        v30 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_223A31000, v30, OS_LOG_TYPE_ERROR, "ERR: Cannot delete invalidated spk model", buf, 2u);
        }

        v31 = +[VTAggregator sharedAggregator];
        [v31 logVoiceProfilePruningFailureWithReasonCode:7];

        if ([(VTVoiceProfileRetrainer *)self _updatePruningCookie:v4])
        {
          goto LABEL_55;
        }

        v11 = VTLogContextFacilityVoiceTrigger;
        if (!os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_55;
        }

        *buf = 0;
      }

      else
      {
        v28 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_223A31000, v28, OS_LOG_TYPE_DEFAULT, "Low implicit utterances - Bailing out", buf, 2u);
        }

        v29 = +[VTAggregator sharedAggregator];
        [v29 logVoiceProfilePruningFailureWithReasonCode:3];

        if ([(VTVoiceProfileRetrainer *)self _updatePruningCookie:v4])
        {
          goto LABEL_55;
        }

        v11 = VTLogContextFacilityVoiceTrigger;
        if (!os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_55;
        }

        *buf = 0;
      }
    }

    else
    {
      v12 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_223A31000, v12, OS_LOG_TYPE_ERROR, "ERR: No explicit utterances!!! - Bailing out", buf, 2u);
      }

      v13 = +[VTAggregator sharedAggregator];
      [v13 logVoiceProfilePruningFailureWithReasonCode:1];

      if ([(VTVoiceProfileRetrainer *)self _updatePruningCookie:v4])
      {
        goto LABEL_55;
      }

      v11 = VTLogContextFacilityVoiceTrigger;
      if (!os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      *buf = 0;
    }

LABEL_50:
    _os_log_error_impl(&dword_223A31000, v11, OS_LOG_TYPE_ERROR, "ERR: Failed updating pruning cookie", buf, 2u);
    goto LABEL_55;
  }

  v7 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v8 = "Pruning cookie unavailable from asset - Bailing out";
    goto LABEL_10;
  }

LABEL_55:
  v26 = 0;
  v27 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
LABEL_56:
  _Block_object_dispose(&v117, 8);

  return v35;
}

void __55__VTVoiceProfileRetrainer_pruneVoiceProfileIfNecessary__block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v8 = v6;
    v9 = a3;
    v10 = [a2 lastPathComponent];
    [v9 floatValue];
    v12 = v11;

    v13[0] = 67240706;
    v13[1] = v7;
    v14 = 2114;
    v15 = v10;
    v16 = 2050;
    v17 = v12;
    _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "Created Model with explicit utterance(%{public}d): %{public}@ --> %{public}.3f", v13, 0x1Cu);
  }

  ++*(*(*(a1 + 32) + 8) + 24);
}

void __55__VTVoiceProfileRetrainer_pruneVoiceProfileIfNecessary__block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"profileUpdateExplicitUttScore", *(*(*(a1 + 40) + 8) + 24)];
  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(*(a1 + 40) + 8) + 24);
    v10 = v8;
    v11 = [v5 lastPathComponent];
    [v6 floatValue];
    *buf = 67240706;
    v17 = v9;
    v18 = 2114;
    v19 = v11;
    v20 = 2050;
    v21 = v12;
    _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "Explicit utterance(%{public}d): %{public}@ --> %{public}.3f", buf, 0x1Cu);
  }

  v13 = +[VTAggregator sharedAggregator];
  v14 = [*(a1 + 32) objectForKeyedSubscript:v5];
  [v14 floatValue];
  [v13 logProfileUpdateUtt:v7 withScore:v15];

  ++*(*(*(a1 + 40) + 8) + 24);
}

void __55__VTVoiceProfileRetrainer_pruneVoiceProfileIfNecessary__block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"profileUpdateFailedExplicitUttScore", *(*(*(a1 + 40) + 8) + 24)];
  v8 = +[VTAggregator sharedAggregator];
  v9 = [*(a1 + 32) objectForKeyedSubscript:v5];
  [v9 floatValue];
  [v8 logProfileUpdateUtt:v7 withScore:v10];

  v11 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    v12 = *(*(*(a1 + 40) + 8) + 24);
    v13 = v11;
    v14 = [v5 lastPathComponent];
    [v6 floatValue];
    *buf = 67240706;
    v17 = v12;
    v18 = 2114;
    v19 = v14;
    v20 = 2050;
    v21 = v15;
    _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "Low Score Explicit utterance(%{public}d): %{public}@ --> %{public}.3f", buf, 0x1Cu);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

void __55__VTVoiceProfileRetrainer_pruneVoiceProfileIfNecessary__block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"profileUpdateImplicitUttScore", *(*(*(a1 + 40) + 8) + 24)];
  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(*(a1 + 40) + 8) + 24);
    v10 = v8;
    v11 = [v5 lastPathComponent];
    [v6 floatValue];
    *buf = 67240706;
    v17 = v9;
    v18 = 2114;
    v19 = v11;
    v20 = 2050;
    v21 = v12;
    _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "Implicit utterance(%{public}d): %{public}@ --> %{public}.3f", buf, 0x1Cu);
  }

  v13 = +[VTAggregator sharedAggregator];
  v14 = [*(a1 + 32) objectForKeyedSubscript:v5];
  [v14 floatValue];
  [v13 logProfileUpdateUtt:v7 withScore:v15];

  ++*(*(*(a1 + 40) + 8) + 24);
}

void __55__VTVoiceProfileRetrainer_pruneVoiceProfileIfNecessary__block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = a3;
    v9 = [v5 lastPathComponent];
    [v8 floatValue];
    v11 = v10;

    *buf = 138543618;
    v17 = v9;
    v18 = 2050;
    v19 = v11;
    _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Discarding low score implicit utterance %{public}@ --> %{public}.3f", buf, 0x16u);
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"profileUpdateFailedExplicitUttScore", *(*(*(a1 + 40) + 8) + 24)];
  v13 = +[VTAggregator sharedAggregator];
  v14 = [*(a1 + 32) objectForKeyedSubscript:v5];
  [v14 floatValue];
  [v13 logProfileUpdateUtt:v12 withScore:v15];

  ++*(*(*(a1 + 40) + 8) + 24);
}

void __55__VTVoiceProfileRetrainer_pruneVoiceProfileIfNecessary__block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = a3;
    v8 = [a2 lastPathComponent];
    [v7 floatValue];
    v10 = v9;

    v11 = 138543618;
    v12 = v8;
    v13 = 2050;
    v14 = v10;
    _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "Discarding extra implicit utterance %{public}@ with score %{public}.3f", &v11, 0x16u);
  }
}

void __55__VTVoiceProfileRetrainer_pruneVoiceProfileIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 stringByDeletingPathExtension];
  v4 = [v3 stringByAppendingPathExtension:@"json"];

  v5 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v2 lastPathComponent];
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v4];
    v9 = [VTUtteranceMetadataManager recordedTimeStampOfFile:v8];
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ recorded on %{public}@", &v10, 0x16u);
  }
}

- (void)retrainSATModelWithCompletion:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [VTUtilities getAssetHashFromConfigPath:self->_configPath];
  v6 = [VTSpeakerIdUtilities getSATDirectoryForModelType:self->_modelType forLanguageCode:self->_languageCode];
  v7 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Retraining SAT speaker models with previous enrollment data", &v29, 2u);
  }

  v8 = [VTSpeakerIdUtilities getSpeakerModelPathForType:self->_modelType withLanguageCode:self->_languageCode withConfigPath:self->_configPath createDirectory:1];
  [(VTAnalyzerNDAPI *)self->_analyzer initializeSAT:v8];
  v9 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    analyzer = self->_analyzer;
    v11 = v9;
    v12 = [(VTAnalyzerNDAPI *)analyzer getSATVectorCount];
    v29 = 67240192;
    LODWORD(v30) = v12;
    _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "re-initializeSAT after removing old invalidSATModel: %{public}d", &v29, 8u);
  }

  v13 = [[VTTextDependentSpeakerRecognizer alloc] initWithResourcePath:self->_resourcePath satDirectory:v6 assetHash:v5 shouldCreateModelDir:1 delegate:self];
  satRetrainingTdSr = self->_satRetrainingTdSr;
  self->_satRetrainingTdSr = v13;

  v15 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_satRetrainingTdSr;
    v29 = 138543362;
    v30 = v16;
    _os_log_impl(&dword_223A31000, v15, OS_LOG_TYPE_DEFAULT, "TDSR:: Created _tdSrForSatRetraining: %{public}@", &v29, 0xCu);
  }

  v17 = [VTSpeakerIdUtilities getSortedEnrollmentUtterancesForType:self->_modelType forLanguageCode:self->_languageCode];
  v18 = [(VTVoiceProfileRetrainer *)self _analyzeEnrollmentUtts:v17 thresholdTrigger:1 thresholdSAT:0 thresholdTDSR:0 isUpdatingModel:0 extraUtts:-INFINITY discardUtts:-INFINITY psrTimeout:-INFINITY];
  v19 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138543362;
    v30 = v18;
    _os_log_impl(&dword_223A31000, v19, OS_LOG_TYPE_DEFAULT, "Retraining results - %{public}@ utterances were successfully enrolled", &v29, 0xCu);
    v19 = VTLogContextFacilityVoiceTrigger;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->_satRetrainingTdSr;
    v21 = v19;
    v22 = [(VTTextDependentSpeakerRecognizer *)v20 tdPsrCanProcessRequest];
    v29 = 138543618;
    v30 = v20;
    v31 = 1026;
    v32 = v22;
    _os_log_impl(&dword_223A31000, v21, OS_LOG_TYPE_DEFAULT, "TDSR:: _satRetrainingTdSr: %{public}@, _satRetrainingTdSr.tdPsrCanProcessRequest: %{public}d", &v29, 0x12u);
  }

  v23 = self->_satRetrainingTdSr;
  if (v23)
  {
    v24 = [(VTTextDependentSpeakerRecognizer *)v23 tdPsrCanProcessRequest];
    v25 = VTLogContextFacilityVoiceTrigger;
    if (v24)
    {
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_satRetrainingTdSr;
        v29 = 138543362;
        v30 = v26;
        _os_log_impl(&dword_223A31000, v25, OS_LOG_TYPE_DEFAULT, "TDSR:: _satRetrainingTdSr Success. _satRetrainingTdSr: %{public}@", &v29, 0xCu);
      }

      v27 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    v25 = VTLogContextFacilityVoiceTrigger;
  }

  v28 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  v27 = 0;
  if (v28)
  {
    LOWORD(v29) = 0;
    _os_log_impl(&dword_223A31000, v25, OS_LOG_TYPE_DEFAULT, "TDSR:: _satRetrainingTdSr FAILED.", &v29, 2u);
    v27 = 0;
  }

LABEL_19:
  if (v4)
  {
    v4[2](v4, 1, v27);
  }
}

- (void)dealloc
{
  [(VTTextDependentSpeakerRecognizer *)self->_satRetrainingTdSr endAudio];
  satRetrainingTdSr = self->_satRetrainingTdSr;
  self->_satRetrainingTdSr = 0;

  v4.receiver = self;
  v4.super_class = VTVoiceProfileRetrainer;
  [(VTVoiceProfileRetrainer *)&v4 dealloc];
}

- (VTVoiceProfileRetrainer)initWithAnalyzer:(id)a3 languageCode:(id)a4 modelType:(unint64_t)a5 configPath:(id)a6 resourcePath:(id)a7
{
  v32 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = VTVoiceProfileRetrainer;
  v17 = [(VTVoiceProfileRetrainer *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_analyzer, a3);
    objc_storeStrong(&v18->_languageCode, a4);
    v18->_modelType = a5;
    objc_storeStrong(&v18->_configPath, a6);
    objc_storeStrong(&v18->_resourcePath, a7);
    [v13 getRetrainThresholdTrigger];
    v18->_retrainThresholdTrigger = v19;
    [v13 getRetrainExplicitUttThresholdSAT];
    v18->_retrainExplicitUttThresholdSAT = v20;
    [v13 getRetrainExplicitUttThresholdTDSR];
    v18->_retrainExplicitUttThresholdTDSR = v21;
    [v13 getRetrainThresholdSAT];
    v18->_retrainThresholdSAT = v22;
    [v13 getRetrainThresholdTDSR];
    v18->_retrainThresholdTDSR = v23;
    v18->_numRetentionUtterances = [v13 getVoiceProfilePruningNumRetentionUtterances];
    v24 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      languageCode = v18->_languageCode;
      *buf = 134218242;
      v29 = a5;
      v30 = 2112;
      v31 = languageCode;
      _os_log_impl(&dword_223A31000, v24, OS_LOG_TYPE_DEFAULT, "Retrainer intialized for %lu on %@", buf, 0x16u);
    }
  }

  return v18;
}

@end