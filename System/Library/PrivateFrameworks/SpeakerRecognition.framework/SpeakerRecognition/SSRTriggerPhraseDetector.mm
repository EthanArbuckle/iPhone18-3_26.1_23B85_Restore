@interface SSRTriggerPhraseDetector
+ (id)filterVTAudioFiles:(id)files withLocale:(id)locale withAsset:(id)asset;
- (SSRTriggerPhraseDetector)initWithLocale:(id)locale asset:(id)asset;
- (void)computeTriggerConfidenceForAudio:(id)audio withCompletion:(id)completion;
@end

@implementation SSRTriggerPhraseDetector

- (void)computeTriggerConfidenceForAudio:(id)audio withCompletion:(id)completion
{
  v77[1] = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  completionCopy = completion;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__2435;
  v62 = __Block_byref_object_dispose__2436;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__2435;
  v56 = __Block_byref_object_dispose__2436;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__2435;
  v50 = __Block_byref_object_dispose__2436;
  v51 = 0;
  [(SSRTriggerPhraseDetectorNDAPI *)self->_detectorNDAPI reset];
  [(SSRTriggerPhraseDetectorQuasar *)self->_detectorQuasar reset];
  v8 = MEMORY[0x277D01970];
  v9 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    lastPathComponent = [audioCopy lastPathComponent];
    *buf = 136315394;
    v65 = "[SSRTriggerPhraseDetector computeTriggerConfidenceForAudio:withCompletion:]";
    v66 = 2114;
    v67 = lastPathComponent;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Processing %{public}@ for trigger word detection", buf, 0x16u);
  }

  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0xFFFFFFFFLL;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 0;
  [MEMORY[0x277D01748] lpcmInt16ASBD];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __76__SSRTriggerPhraseDetector_computeTriggerConfidenceForAudio_withCompletion___block_invoke;
  v36 = &unk_2785782C8;
  v11 = audioCopy;
  v39 = &v46;
  v40 = v45;
  v41 = v44;
  v42 = &v52;
  v37 = v11;
  selfCopy = self;
  v43 = &v58;
  [SSRUtils streamAudioFromFileUrl:v11 audioStreamBasicDescriptor:buf samplesPerStreamChunk:640 audioDataAvailableHandler:&v33];
  v12 = v47[5];
  if (v12 == 0.0)
  {
    if (!self->_detectorNDAPI || v59[5])
    {
      if (!self->_detectorQuasar || (v14 = v53[5]) != 0 && ([v14 objectForKeyedSubscript:@"best_score"], v15 = objc_claimAutoreleasedReturnValue(), v16 = v15 == 0, v15, !v16))
      {
        v17 = [v53[5] objectForKeyedSubscript:@"best_score"];
        [v17 floatValue];
        v19 = v18;

        [v59[5] bestScore];
        v21 = v20;
        v22 = v20 + (self->_recognizerScoreScaleFactor * v19);
        v23 = *v8;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent2 = [v11 lastPathComponent];
          *buf = 136316162;
          v65 = "[SSRTriggerPhraseDetector computeTriggerConfidenceForAudio:withCompletion:]";
          v66 = 2114;
          v67 = lastPathComponent2;
          v68 = 2050;
          v69 = v22;
          v70 = 2050;
          v71 = v21;
          v72 = 2050;
          v73 = v19;
          _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Best trigger score for %{public}@ is %{public}f (%{public}f, %{public}f)", buf, 0x34u);
        }

        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0, v22);
        }

        goto LABEL_24;
      }

      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Quasar: missing best_score for %@", v11, v33, v34, v35, v36];
      v26 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v65 = "[SSRTriggerPhraseDetector computeTriggerConfidenceForAudio:withCompletion:]";
        v66 = 2114;
        v67 = v25;
        _os_log_error_impl(&dword_225E12000, v26, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
        if (!completionCopy)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }

      if (completionCopy)
      {
LABEL_18:
        v27 = MEMORY[0x277CCA9B8];
        v74 = *MEMORY[0x277CCA450];
        v75 = v25;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v29 = [v27 errorWithDomain:@"com.apple.speakerrecognition" code:112 userInfo:v28];
        (completionCopy)[2](completionCopy, v29, -1000.0);
LABEL_22:
      }

LABEL_23:

      goto LABEL_24;
    }

    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"NDAPI: missing best_score for %@", v11, v33, v34, v35, v36];
    v30 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v65 = "[SSRTriggerPhraseDetector computeTriggerConfidenceForAudio:withCompletion:]";
      v66 = 2114;
      v67 = v25;
      _os_log_error_impl(&dword_225E12000, v30, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_23;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_23;
    }

    v31 = MEMORY[0x277CCA9B8];
    v76 = *MEMORY[0x277CCA450];
    v77[0] = v25;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:&v76 count:1];
    v29 = [v31 errorWithDomain:@"com.apple.speakerrecognition" code:112 userInfo:v28];
    (completionCopy)[2](completionCopy, v29, -1000.0);
    goto LABEL_22;
  }

  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v65 = "[SSRTriggerPhraseDetector computeTriggerConfidenceForAudio:withCompletion:]";
    v66 = 2114;
    v67 = v11;
    v68 = 2114;
    v69 = v12;
    _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: Failed processing %{public}@ with error %{public}@", buf, 0x20u);
    if (!completionCopy)
    {
      goto LABEL_24;
    }

    goto LABEL_6;
  }

  if (completionCopy)
  {
LABEL_6:
    completionCopy[2](completionCopy, *(v47 + 5), -1000.0);
  }

LABEL_24:

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  v32 = *MEMORY[0x277D85DE8];
}

void __76__SSRTriggerPhraseDetector_computeTriggerConfidenceForAudio_withCompletion___block_invoke(void *a1, uint64_t a2, int a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (v8)
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v25 = a1[4];
      *buf = 136315394;
      v28 = "[SSRTriggerPhraseDetector computeTriggerConfidenceForAudio:withCompletion:]_block_invoke";
      v29 = 2112;
      v30 = v25;
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Failed to read file: %@", buf, 0x16u);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a4);
  }

  else if (a3)
  {
    v10 = *(*(a1[8] + 8) + 24);
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    *(*(a1[7] + 8) + 24) = ((v10 / v11) * 1000.0);
    v12 = [*(a1[5] + 24) endAudio];
    v13 = *(a1[9] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    v16 = [v15 length];
    [MEMORY[0x277D01748] lpcmInt16ASBD];
    v17 = v16 / v26;
    *(*(a1[8] + 8) + 24) += v17;
    v18 = [*(a1[5] + 16) analyzeWavData:v15 numSamples:v17];
    v19 = *(a1[10] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = [*(a1[5] + 24) analyzeWavData:v15 numSamples:v17];
    v22 = *(a1[9] + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (SSRTriggerPhraseDetector)initWithLocale:(id)locale asset:(id)asset
{
  v33 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  assetCopy = asset;
  v28.receiver = self;
  v28.super_class = SSRTriggerPhraseDetector;
  v8 = [(SSRTriggerPhraseDetector *)&v28 init];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = [MEMORY[0x277D01958] decodeConfigFrom:assetCopy forFirstPassSource:0];
  resourcePath = [assetCopy resourcePath];
  v11 = [SSRTriggerPhraseDetectorNDAPI alloc];
  keywordDetectorNDAPIConfigFilePath = [assetCopy keywordDetectorNDAPIConfigFilePath];
  v13 = [(SSRTriggerPhraseDetectorNDAPI *)v11 initWithConfigPath:keywordDetectorNDAPIConfigFilePath resourcePath:resourcePath phId:0];
  detectorNDAPI = v8->_detectorNDAPI;
  v8->_detectorNDAPI = v13;

  if ([MEMORY[0x277D018F8] supportPremiumModel])
  {
    if ([v9 useRecognizerCombination])
    {
      v15 = [SSRTriggerPhraseDetectorQuasar alloc];
      keywordDetectorQuasarConfigFilePath = [assetCopy keywordDetectorQuasarConfigFilePath];
      v17 = [(SSRTriggerPhraseDetectorQuasar *)v15 initWithLocale:localeCopy configPath:keywordDetectorQuasarConfigFilePath resourcePath:resourcePath];
      detectorQuasar = v8->_detectorQuasar;
      v8->_detectorQuasar = v17;

      phraseConfigs = [v9 phraseConfigs];
      firstObject = [phraseConfigs firstObject];
      [firstObject recognizerScoreScaleFactor];
      v8->_recognizerScoreScaleFactor = v21;

      v22 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
      {
        recognizerScoreScaleFactor = v8->_recognizerScoreScaleFactor;
        *buf = 136315394;
        v30 = "[SSRTriggerPhraseDetector initWithLocale:asset:]";
        v31 = 2048;
        v32 = recognizerScoreScaleFactor;
        _os_log_debug_impl(&dword_225E12000, v22, OS_LOG_TYPE_DEBUG, "%s Using recognizer scale factor: %f for phrase detector", buf, 0x16u);
      }
    }
  }

  if (v8->_detectorQuasar || v8->_detectorNDAPI)
  {

LABEL_9:
    v23 = v8;
    goto LABEL_10;
  }

  v26 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v30 = "[SSRTriggerPhraseDetector initWithLocale:asset:]";
    _os_log_error_impl(&dword_225E12000, v26, OS_LOG_TYPE_ERROR, "%s ERR: Failed to create trigger phrase detectors", buf, 0xCu);
  }

  v23 = 0;
LABEL_10:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (id)filterVTAudioFiles:(id)files withLocale:(id)locale withAsset:(id)asset
{
  v50 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  localeCopy = locale;
  assetCopy = asset;
  v27 = [[SSRTriggerPhraseDetector alloc] initWithLocale:localeCopy asset:assetCopy];
  v24 = filesCopy;
  v25 = localeCopy;
  if (v27)
  {
    v29 = [filesCopy mutableCopy];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = filesCopy;
    v9 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (v9)
    {
      v10 = *v36;
      do
      {
        v11 = 0;
        do
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v35 + 1) + 8 * v11);
          *v45 = 0;
          *&v45[8] = v45;
          *&v45[16] = 0x3032000000;
          v46 = __Block_byref_object_copy__2435;
          v47 = __Block_byref_object_dispose__2436;
          v48 = 0;
          v31 = 0;
          v32 = &v31;
          v33 = 0x2020000000;
          v34 = -8388608;
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __68__SSRTriggerPhraseDetector_filterVTAudioFiles_withLocale_withAsset___block_invoke;
          v30[3] = &unk_2785789A0;
          v30[4] = v45;
          v30[5] = &v31;
          [(SSRTriggerPhraseDetector *)v27 computeTriggerConfidenceForAudio:v12 withCompletion:v30];
          if (*(*&v45[8] + 40))
          {
            v13 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [v12 lastPathComponent];
              v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v19 = *(*&v45[8] + 40);
              *buf = 136315650;
              v40 = "+[SSRTriggerPhraseDetector filterVTAudioFiles:withLocale:withAsset:]";
              v41 = 2114;
              v42 = v18;
              v43 = 2114;
              v44 = v19;
              _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: Failed in trigger processing %{public}@ with %{public}@", buf, 0x20u);
            }

            [v29 removeObject:v12];
          }

          [assetCopy satVTImplicitThreshold];
          v15 = v14;
          v16 = v32[6];
          if (v16 < v14)
          {
            v17 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v40 = "+[SSRTriggerPhraseDetector filterVTAudioFiles:withLocale:withAsset:]";
              v41 = 2050;
              v42 = v16;
              v43 = 2048;
              v44 = v15;
              _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Trigger Score %{public}f not satisfied implicit VT threshold %f", buf, 0x20u);
            }

            [v29 removeObject:v12];
          }

          _Block_object_dispose(&v31, 8);
          _Block_object_dispose(v45, 8);

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
      }

      while (v9);
    }

    if ([v29 count])
    {
      v20 = [v29 copy];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v21 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *v45 = 136315650;
      *&v45[4] = "+[SSRTriggerPhraseDetector filterVTAudioFiles:withLocale:withAsset:]";
      *&v45[12] = 2114;
      *&v45[14] = localeCopy;
      *&v45[22] = 2114;
      v46 = assetCopy;
      _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s ERR: Failed to create TriggerPhraseDetector in %{public}@ with %{public}@", v45, 0x20u);
    }

    v20 = filesCopy;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

void __68__SSRTriggerPhraseDetector_filterVTAudioFiles_withLocale_withAsset___block_invoke(uint64_t a1, void *a2, float a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

@end