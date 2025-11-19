@interface SLUresMitigator
- (SLUresMitigator)initWithConfig:(id)a3 bnnsIrPath:(id)a4 error:(id *)a5;
- (id)_processInputFeats:(id)a3;
- (void)_createInputOriginThresholdMap:(id)a3;
- (void)dealloc;
- (void)processInputFeats:(id)a3 completion:(id)a4;
@end

@implementation SLUresMitigator

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SLUresMitigator dealloc]";
    _os_log_impl(&dword_26754E000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = SLUresMitigator;
  [(SLUresMitigator *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)_processInputFeats:(id)a3
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 speechPackage];

  if (v5)
  {
    v6 = [v4 speechPackage];
    v7 = [SLASRFeatureExtractor extractASRFaturesFrom:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 inputOrigin];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    inputOpsMap = self->_inputOpsMap;
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __38__SLUresMitigator__processInputFeats___block_invoke;
    v77[3] = &unk_279C0EBC0;
    v11 = v7;
    v78 = v11;
    v12 = v4;
    v79 = v12;
    v52 = v9;
    v80 = v52;
    [(NSDictionary *)inputOpsMap enumerateKeysAndObjectsUsingBlock:v77];
    uresModel = self->_uresModel;
    v76 = 0;
    v14 = [(CSFModelComputeBackend *)uresModel predictOutputWithInputs:v52 errOut:&v76];
    v15 = v76;
    v51 = v15;
    if (!v14 || v15)
    {
      v43 = MEMORY[0x277CCACA8];
      v44 = [v15 localizedDescription];
      v45 = [v43 stringWithFormat:@"Failed to get output with error %@", v44];

      v46 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *v89 = 136315394;
        *&v89[4] = "[SLUresMitigator _processInputFeats:]";
        *&v89[12] = 2114;
        *&v89[14] = v45;
        _os_log_error_impl(&dword_26754E000, v46, OS_LOG_TYPE_ERROR, "%s %{public}@", v89, 0x16u);
      }

      v41 = 0;
    }

    else
    {
      *v89 = 0;
      *&v89[8] = v89;
      *&v89[16] = 0x2020000000;
      v90 = 0;
      v72 = 0;
      v73 = &v72;
      v74 = 0x2020000000;
      v75 = 0;
      v68 = 0;
      v69 = &v68;
      v70 = 0x2020000000;
      v71 = -1082130432;
      v64 = 0;
      v65 = &v64;
      v66 = 0x2020000000;
      v67 = -1082130432;
      v60 = 0;
      v61 = &v60;
      v62 = 0x2020000000;
      v63 = 0;
      outputMap = self->_outputMap;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __38__SLUresMitigator__processInputFeats___block_invoke_359;
      v53[3] = &unk_279C0EBE8;
      v54 = v14;
      v55 = v89;
      v56 = &v60;
      v57 = &v72;
      v58 = &v68;
      v59 = &v64;
      [(NSDictionary *)outputMap enumerateKeysAndObjectsUsingBlock:v53];
      thresholdMap = self->_thresholdMap;
      v18 = [v12 inputOrigin];
      v50 = [(NSMutableDictionary *)thresholdMap objectForKeyedSubscript:v18];

      if (v50)
      {
        [v50 floatValue];
        v20 = v19;
        v69[6] = v19;
        *(v73 + 24) = *(*&v89[8] + 24) < v19;
        v21 = SLLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v86 = "[SLUresMitigator _processInputFeats:]";
          v87 = 2048;
          v88 = v20;
          _os_log_impl(&dword_26754E000, v21, OS_LOG_TYPE_DEFAULT, "%s Using software configured threshold: %.3f", buf, 0x16u);
        }
      }

      if (*(v73 + 24))
      {
        v22 = @"requestMitigated";
      }

      else
      {
        v22 = @"requestNotMitigated";
      }

      v49 = v22;
      v83[0] = @"score";
      LODWORD(v23) = *(*&v89[8] + 24);
      v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
      v84[0] = v24;
      v84[1] = v49;
      v83[1] = @"decision";
      v83[2] = @"decisionValue";
      v25 = [MEMORY[0x277CCABB0] numberWithDouble:v61[3]];
      v84[2] = v25;
      v83[3] = @"threshold";
      *&v26 = v69[6];
      v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
      v84[3] = v27;
      v83[4] = @"speakerIDthreshold";
      LODWORD(v28) = *(v65 + 6);
      v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
      v83[5] = @"assetVersion";
      version = self->_version;
      v84[4] = v29;
      v84[5] = version;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:6];

      v81[0] = @"numAsrRecords";
      v32 = MEMORY[0x277CCABB0];
      v33 = [v11 latticePathMaxScores];
      v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "count")}];
      v82[0] = v34;
      v81[1] = @"numTokensTopPath";
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "topLatticePathTokenCount")}];
      v82[1] = v35;
      v81[2] = @"trailingSilenceDuration";
      v36 = MEMORY[0x277CCABB0];
      [v11 trailingSilence];
      v37 = [v36 numberWithFloat:?];
      v82[2] = v37;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:3];

      v39 = [SLUresMitigatorResult alloc];
      LODWORD(v40) = *(*&v89[8] + 24);
      v41 = [(SLUresMitigatorResult *)v39 initWithScore:*(v73 + 24) decision:v31 decisionLevel:v38 detailedResults:v40 extractedFeats:v61[3]];

      _Block_object_dispose(&v60, 8);
      _Block_object_dispose(&v64, 8);
      _Block_object_dispose(&v68, 8);
      _Block_object_dispose(&v72, 8);
      _Block_object_dispose(v89, 8);
    }
  }

  else
  {
    v42 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *v89 = 136315394;
      *&v89[4] = "[SLUresMitigator _processInputFeats:]";
      *&v89[12] = 2114;
      *&v89[14] = @"Missing input origin";
      _os_log_error_impl(&dword_26754E000, v42, OS_LOG_TYPE_ERROR, "%s %{public}@", v89, 0x16u);
    }

    v41 = 0;
  }

  v47 = *MEMORY[0x277D85DE8];

  return v41;
}

void __38__SLUresMitigator__processInputFeats___block_invoke(id *a1, void *a2, void *a3)
{
  v69[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"numAsrRecords"])
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [a1[4] latticePathMaxScores];
    v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    v69[0] = v9;
    v10 = MEMORY[0x277CBEA60];
    v11 = v69;
LABEL_3:
    v12 = [v10 arrayWithObjects:v11 count:1];

LABEL_4:
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"topPathScores"])
  {
    v13 = [a1[4] topLatticePathScores];
  }

  else if ([v5 isEqualToString:@"latticeMaxScores"])
  {
    v13 = [a1[4] latticePathMaxScores];
  }

  else if ([v5 isEqualToString:@"latticeMinScores"])
  {
    v13 = [a1[4] latticePathMinScores];
  }

  else if ([v5 isEqualToString:@"latticeMeanScores"])
  {
    v13 = [a1[4] latticePathMeanScores];
  }

  else
  {
    if (![v5 isEqualToString:@"latticeVarScores"])
    {
      if ([v5 isEqualToString:@"topPathNumTokens"])
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1[4], "topLatticePathTokenCount")}];
        v68 = v8;
        v27 = MEMORY[0x277CBEA60];
        v28 = &v68;
      }

      else
      {
        if ([v5 isEqualToString:@"acousticFTMScore"])
        {
          v29 = MEMORY[0x277CCABB0];
          v8 = [a1[5] acousticFTMScores];
          [v8 floatValue];
          v9 = [v29 numberWithFloat:?];
          v67 = v9;
          v10 = MEMORY[0x277CBEA60];
          v11 = &v67;
          goto LABEL_3;
        }

        if ([v5 isEqualToString:@"lrnnScores"])
        {
          v8 = [a1[5] lrnnScore];
          v66 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v66;
        }

        else if ([v5 isEqualToString:@"lrnnThreshold"])
        {
          v8 = [a1[5] lrnnThreshold];
          v65 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v65;
        }

        else if ([v5 isEqualToString:@"snr"])
        {
          v30 = MEMORY[0x277CCABB0];
          [a1[4] snr];
          v8 = [v30 numberWithFloat:?];
          v64 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v64;
        }

        else if ([v5 isEqualToString:@"trailingSilence"])
        {
          v31 = MEMORY[0x277CCABB0];
          [a1[4] trailingSilence];
          v8 = [v31 numberWithFloat:?];
          v63 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v63;
        }

        else if ([v5 isEqualToString:@"inputOrigin"])
        {
          v8 = [a1[5] inputOrigin];
          v62 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v62;
        }

        else if ([v5 isEqualToString:@"timeFromPrevQuery"])
        {
          v32 = MEMORY[0x277CCABB0];
          [a1[5] timeSinceLastQuery];
          v8 = [v32 numberWithDouble:?];
          v61 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v61;
        }

        else if ([v5 isEqualToString:@"speakerIdScore"])
        {
          v8 = [a1[5] speakerIDScore];
          v60 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v60;
        }

        else if ([v5 isEqualToString:@"airpodsConnectedState"])
        {
          v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "isAirpodsConnected")}];
          v59 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v59;
        }

        else if ([v5 isEqualToString:@"boronActivityScore"])
        {
          v8 = [a1[5] boronScore];
          v58 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v58;
        }

        else if ([v5 isEqualToString:@"acousticSpeechActivityScore"])
        {
          v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "didDetectSpeechActivity")}];
          v57 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v57;
        }

        else if ([v5 isEqualToString:@"attSiriPrevOutputState"])
        {
          v8 = [a1[5] prevStageOutput];
          v56 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v56;
        }

        else if ([v5 isEqualToString:@"multiModalDecisionStage"])
        {
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1[5], "decisionStage")}];
          v55 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v55;
        }

        else if ([v5 isEqualToString:@"eosLikelihood"])
        {
          v8 = [a1[5] eosLikelihood];
          v54 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v54;
        }

        else if ([v5 isEqualToString:@"visualGazeScore"])
        {
          v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "didDetectGazeAtOrb")}];
          v53 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v53;
        }

        else if ([v5 isEqualToString:@"visualAttentionScore"])
        {
          v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "didDetectAttention")}];
          v52 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v52;
        }

        else if ([v5 isEqualToString:@"visualSpeechActivityScore"])
        {
          v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "didDetectVisualActivity")}];
          v51 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v51;
        }

        else if ([v5 isEqualToString:@"nldaScore"])
        {
          v8 = [a1[5] nldaScore];
          v50 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v50;
        }

        else if ([v5 isEqualToString:@"confidenceScoreASR"])
        {
          v8 = [a1[5] confidenceScore];
          v49 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v49;
        }

        else if ([v5 isEqualToString:@"checkerScore"])
        {
          v8 = [a1[5] checkerScore];
          v48 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v48;
        }

        else if ([v5 isEqualToString:@"phsScore"])
        {
          v8 = [a1[5] phsScore];
          v47 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v47;
        }

        else if ([v5 isEqualToString:@"embeddingScore"])
        {
          v8 = [a1[5] embeddingScore];
          v46 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v46;
        }

        else if ([v5 isEqualToString:@"externalLrnnScale"])
        {
          v8 = [a1[5] externalLrnnScale];
          v45 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v45;
        }

        else if ([v5 isEqualToString:@"externalLrnnOffset"])
        {
          v8 = [a1[5] externalLrnnOffset];
          v44 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v44;
        }

        else if ([v5 isEqualToString:@"conversationalNldaScore"])
        {
          v8 = [a1[5] conversationalNldaScore];
          v43 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v43;
        }

        else
        {
          if (![v5 isEqualToString:@"conversational"])
          {
            v41 = &unk_2878A77B8;
            v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
            goto LABEL_15;
          }

          v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "isConversational")}];
          v42 = v8;
          v27 = MEMORY[0x277CBEA60];
          v28 = &v42;
        }
      }

      v12 = [v27 arrayWithObjects:v28 count:1];
      goto LABEL_4;
    }

    v13 = [a1[4] latticePathVarScores];
  }

LABEL_15:
  v12 = v13;
LABEL_16:
  v14 = [v6 valueForKey:@"name"];
  v15 = [v6 valueForKey:@"shape"];

  v16 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v12 firstObject];
    *buf = 136315650;
    v36 = "[SLUresMitigator _processInputFeats:]_block_invoke";
    v37 = 2114;
    v38 = v14;
    v39 = 2114;
    v40 = v18;
    _os_log_impl(&dword_26754E000, v17, OS_LOG_TYPE_DEFAULT, "%s AttFeature: %{public}@ --> %{public}@", buf, 0x20u);
  }

  if (v12)
  {
    v19 = [MEMORY[0x277D01790] propertyWithShape:v15 dataType:1];
    v20 = objc_alloc(MEMORY[0x277D01750]);
    v34 = v12;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    v33 = 0;
    v22 = [v20 initWithInputArray:v21 name:v14 properties:v19 errOut:&v33];
    v23 = v33;

    if (!v22 || v23)
    {
      v25 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v36 = "[SLUresMitigator _processInputFeats:]_block_invoke";
        v37 = 2112;
        v38 = v23;
        v39 = 2114;
        v40 = v14;
        _os_log_error_impl(&dword_26754E000, v25, OS_LOG_TYPE_ERROR, "%s Failed to convert array to MLMultiArray with error: %@, not using feature %{public}@ for inference", buf, 0x20u);
      }
    }

    else
    {
      [a1[6] setObject:v22 forKey:v14];
    }
  }

  else
  {
    v24 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[SLUresMitigator _processInputFeats:]_block_invoke";
      v37 = 2114;
      v38 = v14;
      _os_log_error_impl(&dword_26754E000, v24, OS_LOG_TYPE_ERROR, "%s Value for feature: %{public}@ isn't set, abort model run", buf, 0x16u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __38__SLUresMitigator__processInputFeats___block_invoke_359(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 valueForKey:@"name"];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v8 = [v7 convertDataToArray];

  v9 = [MEMORY[0x277D01770] getRankOfTensor:v8];
  if (v9 > 0)
  {
    v10 = [v8 firstObject];
    v11 = v10;
    if (v9 == 2)
    {
      v12 = [v10 firstObject];

      v11 = v12;
    }

    if ([v5 isEqualToString:@"mitigatorScore"])
    {
      [v11 floatValue];
      v14 = *(a1 + 40);
    }

    else
    {
      if ([v5 isEqualToString:@"mitigatorDecision"])
      {
        [v11 doubleValue];
        *(*(*(a1 + 48) + 8) + 24) = v17;
        if (*(*(*(a1 + 48) + 8) + 24) < 2.22044605e-16)
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }

        goto LABEL_7;
      }

      if ([v5 isEqualToString:@"mitigatorThreshold"])
      {
        [v11 floatValue];
        v14 = *(a1 + 64);
      }

      else
      {
        if (![v5 isEqualToString:@"speakerIDThreshold"])
        {
          goto LABEL_7;
        }

        [v11 floatValue];
        v14 = *(a1 + 72);
      }
    }

    *(*(v14 + 8) + 24) = v13;
LABEL_7:

    goto LABEL_10;
  }

  v15 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[SLUresMitigator _processInputFeats:]_block_invoke";
    v20 = 2048;
    v21 = v9;
    _os_log_impl(&dword_26754E000, v15, OS_LOG_TYPE_DEFAULT, "%s Invalid output shape: %lu", &v18, 0x16u);
  }

LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_createInputOriginThresholdMap:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  thresholdMap = self->_thresholdMap;
  self->_thresholdMap = v5;

  if (v4)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__SLUresMitigator__createInputOriginThresholdMap___block_invoke;
    v10[3] = &unk_279C0EB98;
    v10[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v10];
    v7 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_thresholdMap;
      *buf = 136315394;
      v12 = "[SLUresMitigator _createInputOriginThresholdMap:]";
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_26754E000, v7, OS_LOG_TYPE_DEFAULT, "%s Threshold map: %{public}@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __50__SLUresMitigator__createInputOriginThresholdMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"threshold"];
  v8 = [v6 objectForKeyedSubscript:@"modelIndex"];

  if (v8 && v7)
  {
    [*(*(a1 + 32) + 32) setObject:v7 forKey:v8];
  }

  else
  {
    v9 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[SLUresMitigator _createInputOriginThresholdMap:]_block_invoke";
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_26754E000, v9, OS_LOG_TYPE_ERROR, "%s Invalid config for %{public}@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)processInputFeats:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  v9 = a3;
  v10 = os_signpost_id_generate(v8);
  v11 = *v7;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26754E000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "UresMitigator_ProcessFeats", &unk_2675B2B36, buf, 2u);
  }

  v13 = [(SLUresMitigator *)self _processInputFeats:v9];

  v14 = *v7;
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_26754E000, v15, OS_SIGNPOST_INTERVAL_END, v10, "UresMitigator_ProcessFeats", &unk_2675B2B36, v16, 2u);
  }

  if (v6)
  {
    v6[2](v6, v13);
  }
}

- (SLUresMitigator)initWithConfig:(id)a3 bnnsIrPath:(id)a4 error:(id *)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v51.receiver = self;
  v51.super_class = SLUresMitigator;
  v10 = [(SLUresMitigator *)&v51 init];
  if (!v10)
  {
LABEL_25:
    v20 = v10;
    goto LABEL_26;
  }

  if (SLLogInitIfNeeded_once != -1)
  {
    dispatch_once(&SLLogInitIfNeeded_once, &__block_literal_global);
  }

  v11 = MEMORY[0x277CEF0E8];
  v12 = os_signpost_id_generate(*MEMORY[0x277CEF0E8]);
  v13 = *v11;
  v14 = v13;
  v15 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26754E000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "UresMitigator_Create", &unk_2675B2B36, buf, 2u);
  }

  v50 = 0;
  v16 = [[SLUresMitigatorConfigDecoder alloc] initWithConfigFile:v8 errOut:&v50];
  v17 = v50;
  if (v17)
  {
    v18 = v17;
    v19 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v55 = "[SLUresMitigator initWithConfig:bnnsIrPath:error:]";
      v56 = 2112;
      v57 = v18;
      _os_log_error_impl(&dword_26754E000, v19, OS_LOG_TYPE_ERROR, "%s SLUresMitigator config init with error: %@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  v21 = [(SLUresMitigatorConfigDecoder *)v16 getModelFile];
  if (v9)
  {
    v22 = v9;

    v21 = v22;
  }

  v48 = [(SLUresMitigatorConfigDecoder *)v16 getBnnsIrWeightFile];
  v49 = 0;
  v23 = [MEMORY[0x277D01768] provideComputeBackendWithModelFile:v21 separateWeight:? error:?];
  v24 = v49;
  uresModel = v10->_uresModel;
  v10->_uresModel = v23;

  if (v10->_uresModel)
  {
    v26 = 0;
    if (!v24)
    {
LABEL_21:
      v34 = [(SLUresMitigatorConfigDecoder *)v16 getVersion];
      version = v10->_version;
      v10->_version = v34;

      v36 = [(SLUresMitigatorConfigDecoder *)v16 getInputOpsMap];
      inputOpsMap = v10->_inputOpsMap;
      v10->_inputOpsMap = v36;

      v38 = [(SLUresMitigatorConfigDecoder *)v16 getOutputMap];
      outputMap = v10->_outputMap;
      v10->_outputMap = v38;

      v40 = [(SLUresMitigatorConfigDecoder *)v16 getSupportedInputOrigins];
      [(SLUresMitigator *)v10 _createInputOriginThresholdMap:v40];

      v41 = *MEMORY[0x277CEF0E8];
      v42 = v41;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26754E000, v42, OS_SIGNPOST_INTERVAL_END, v12, "UresMitigator_Create", &unk_2675B2B36, buf, 2u);
      }

      goto LABEL_25;
    }
  }

  v45 = v12;
  v46 = v21;
  v27 = MEMORY[0x277CCACA8];
  v28 = [v24 localizedDescription];
  v29 = [v27 stringWithFormat:@"Unable to create model with error %@", v28];

  v30 = MEMORY[0x277CCA9B8];
  v52 = @"reason";
  v53 = v29;
  v47 = v29;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v26 = [v30 errorWithDomain:@"com.apple.sl" code:106 userInfo:v31];

  v32 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v55 = "[SLUresMitigator initWithConfig:bnnsIrPath:error:]";
    v56 = 2114;
    v57 = v29;
    _os_log_error_impl(&dword_26754E000, v32, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
  }

  v21 = v46;
  if (!a5)
  {

    v12 = v45;
    goto LABEL_21;
  }

  v33 = v26;
  *a5 = v26;

LABEL_11:
  v20 = 0;
LABEL_26:

  v43 = *MEMORY[0x277D85DE8];
  return v20;
}

@end