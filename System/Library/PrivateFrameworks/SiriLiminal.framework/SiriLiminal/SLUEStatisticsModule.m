@interface SLUEStatisticsModule
- (SLUEStatisticsModule)initWithConfig:(id)a3 error:(id *)a4;
- (id)getEncodedValue:(id)a3;
- (id)processInputFeatures:(id)a3;
- (void)dealloc;
@end

@implementation SLUEStatisticsModule

- (id)processInputFeatures:(id)a3
{
  v114 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v4 cohortType];
  v96 = self;
  v7 = [(SLUEStatisticsModule *)self getEncodedValue:v6];

  if (!v7)
  {
    v72 = 0;
    goto LABEL_53;
  }

  v8 = MEMORY[0x277CCABB0];
  v94 = v7;
  [v7 floatValue];
  v9 = [v8 numberWithFloat:?];
  [v5 addObject:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "requestCount")}];
  [v5 addObject:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "intendedCount")}];
  [v5 addObject:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "unintendedCount")}];
  [v5 addObject:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "buttonPressCount")}];
  [v5 addObject:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "voiceTriggerCount")}];
  [v5 addObject:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "voiceTriggerIntendedCount")}];
  [v5 addObject:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "voiceTriggerUnintendedCount")}];
  [v5 addObject:v16];

  v17 = MEMORY[0x277CCABB0];
  [v4 intendedRatio];
  v18 = [v17 numberWithFloat:?];
  [v5 addObject:v18];

  v19 = MEMORY[0x277CCABB0];
  [v4 voiceTriggerRequestRatio];
  v20 = [v19 numberWithFloat:?];
  [v5 addObject:v20];

  v21 = MEMORY[0x277CCABB0];
  [v4 voiceTriggerIntendedRatio];
  v22 = [v21 numberWithFloat:?];
  [v5 addObject:v22];

  v23 = MEMORY[0x277CCABB0];
  [v4 buttonPressRequestRatio];
  v24 = [v23 numberWithFloat:?];
  [v5 addObject:v24];

  v25 = MEMORY[0x277CCABB0];
  [v4 buttonPressIntendedRatio];
  v26 = [v25 numberWithFloat:?];
  [v5 addObject:v26];

  v27 = MEMORY[0x277CCABB0];
  v95 = v4;
  [v4 sdsdRetryCount];
  v28 = [v27 numberWithFloat:?];
  [v5 addObject:v28];

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v29 = v5;
  v30 = [v29 countByEnumeratingWithState:&v101 objects:v113 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v102;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v102 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = SLLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
        {
          v35 = *(*(&v101 + 1) + 8 * i);
          v36 = v34;
          [v35 floatValue];
          *buf = 136315394;
          v106 = "[SLUEStatisticsModule processInputFeatures:]";
          v107 = 2048;
          v108 = v37;
          _os_log_impl(&dword_26754E000, v36, OS_LOG_TYPE_INFO, "%s num from inputFeaturesArr is %f", buf, 0x16u);
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v101 objects:v113 count:16];
    }

    while (v31);
  }

  v38 = [(NSDictionary *)v96->_inputSpecs objectForKeyedSubscript:@"input_1"];
  v39 = [v38 multiArrayConstraint];
  [v39 shape];
  v40 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  v41 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v106 = "[SLUEStatisticsModule processInputFeatures:]";
    v107 = 2112;
    v108 = v40;
    _os_log_impl(&dword_26754E000, v41, OS_LOG_TYPE_INFO, "%s Input shape: %@", buf, 0x16u);
  }

  v42 = [v29 count];
  v43 = [*&v40 objectAtIndexedSubscript:1];
  v44 = [v43 unsignedIntValue];

  if (v42 != v44)
  {
    v75 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v86 = v75;
      *&v87 = COERCE_DOUBLE([v29 count]);
      *buf = 136315394;
      v106 = "[SLUEStatisticsModule processInputFeatures:]";
      v107 = 2048;
      v108 = *&v87;
      _os_log_error_impl(&dword_26754E000, v86, OS_LOG_TYPE_ERROR, "%s inputFeaturesArr shape %lu does not match input shape", buf, 0x16u);
    }

    v53 = 0;
    v72 = 0;
    v4 = v95;
    goto LABEL_52;
  }

  v45 = [objc_alloc(MEMORY[0x277CBFF48]) initWithScalars:v29 shape:&unk_2878A77D0 dataType:65568];
  if ([v45 count] >= 1)
  {
    v46 = 0;
    do
    {
      v47 = [v45 dataPointer];
      v48 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
      {
        v49 = *(v47 + 4 * v46);
        *buf = 136315394;
        v106 = "[SLUEStatisticsModule processInputFeatures:]";
        v107 = 2048;
        v108 = v49;
        _os_log_impl(&dword_26754E000, v48, OS_LOG_TYPE_INFO, "%s num from processedInputFeatures %f", buf, 0x16u);
      }

      ++v46;
    }

    while ([v45 count] > v46);
  }

  if (!v45)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create Input features multiarray"];
    v50 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v76 = SLLogContextFacilityCoreSpeech;
    v4 = v95;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v106 = "[SLUEStatisticsModule processInputFeatures:]";
      v107 = 2114;
      v108 = v50;
      _os_log_error_impl(&dword_26754E000, v76, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v53 = 0;
    v72 = 0;
    goto LABEL_51;
  }

  v111 = @"input_1";
  v112 = v45;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
  v50 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v100 = 0;
  v51 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:*&v50 error:&v100];
  v52 = v100;
  v53 = v52;
  v4 = v95;
  if (!v51 || v52)
  {
    v77 = MEMORY[0x277CCACA8];
    v78 = [v52 localizedDescription];
    [v77 stringWithFormat:@"Failed to create feature with error %@", v78];
    v73 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v79 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v106 = "[SLUEStatisticsModule processInputFeatures:]";
      v107 = 2114;
      v108 = v73;
      _os_log_error_impl(&dword_26754E000, v79, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v72 = 0;
    goto LABEL_50;
  }

  uesModel = v96->_uesModel;
  v99 = 0;
  v93 = v51;
  v55 = [(MLModel *)uesModel predictionFromFeatures:v51 error:&v99];
  v56 = v99;
  v53 = v56;
  v98 = *&v55;
  if (!v55 || v56)
  {
    v80 = MEMORY[0x277CCACA8];
    v81 = [v56 localizedDescription];
    [v80 stringWithFormat:@"Failed to get output with error %@", v81];
    v74 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v82 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v106 = "[SLUEStatisticsModule processInputFeatures:]";
      v107 = 2114;
      v108 = v74;
      _os_log_error_impl(&dword_26754E000, v82, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v72 = 0;
    v73 = v98;
    goto LABEL_49;
  }

  [v55 featureValueForName:v96->_outputNodeName];
  v90 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  [*&v90 multiArrayValue];
  v92 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v57 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v106 = "[SLUEStatisticsModule processInputFeatures:]";
    v107 = 2112;
    v108 = v92;
    _os_log_impl(&dword_26754E000, v57, OS_LOG_TYPE_DEFAULT, "%s output: %@", buf, 0x16u);
  }

  v91 = v50;
  v58 = [(NSDictionary *)v96->_outputSpecs objectForKeyedSubscript:v96->_outputNodeName];
  v59 = [v58 multiArrayConstraint];
  [v59 shape];
  *&v60 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  v61 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v106 = "[SLUEStatisticsModule processInputFeatures:]";
    v107 = 2112;
    v108 = *&v60;
    _os_log_impl(&dword_26754E000, v61, OS_LOG_TYPE_INFO, "%s Output shape: %@", buf, 0x16u);
  }

  v62 = [*&v92 shape];
  v97 = v60;
  v63 = [v62 isEqualToArray:v60];

  if (v63)
  {
    v64 = [*&v92 convert1dMLMultiArrayToNSArray];
    v65 = [v64 firstObject];
    [v65 floatValue];
    v67 = v66;

    v68 = SLLogContextFacilityCoreSpeech;
    v69 = v92;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v106 = "[SLUEStatisticsModule processInputFeatures:]";
      v107 = 2048;
      v108 = v67;
      _os_log_impl(&dword_26754E000, v68, OS_LOG_TYPE_INFO, "%s Score is %f", buf, 0x16u);
    }

    v70 = [SLUEStatisticsModuleResult alloc];
    *&v71 = v67;
    v72 = [(SLUEStatisticsModuleResult *)v70 initWithScore:v71];
  }

  else
  {
    v83 = SLLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v72 = 0;
      v73 = v98;
      v74 = v90;
      v69 = v92;
      goto LABEL_48;
    }

    v88 = v83;
    v69 = v92;
    [*&v92 shape];
    v89 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 136315650;
    v106 = "[SLUEStatisticsModule processInputFeatures:]";
    v107 = 2112;
    v108 = v89;
    v109 = 2112;
    v110 = v60;
    _os_log_error_impl(&dword_26754E000, v88, OS_LOG_TYPE_ERROR, "%s Output shape %@ does not match expected shape %@", buf, 0x20u);

    v72 = 0;
  }

  v73 = v98;
  v74 = v90;
LABEL_48:
  v50 = v91;

LABEL_49:
  v51 = v93;
LABEL_50:

LABEL_51:
LABEL_52:
  v7 = v94;

LABEL_53:
  v84 = *MEMORY[0x277D85DE8];

  return v72;
}

- (id)getEncodedValue:(id)a3
{
  v3 = a3;
  v4 = [[SLUEStatisticsCohortTypeEncoding alloc] initWithDefaults];
  v5 = [(SLUEStatisticsCohortTypeEncoding *)v4 rawValueEncoded];
  if (v5)
  {
    v6 = [(SLUEStatisticsCohortTypeEncoding *)v4 rawValueEncoded];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(SLUEStatisticsCohortTypeEncoding *)v4 rawValueEncoded];
      v5 = [v8 objectForKeyedSubscript:v3];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SLUEStatisticsModule dealloc]";
    _os_log_impl(&dword_26754E000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = SLUEStatisticsModule;
  [(SLUEStatisticsModule *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (SLUEStatisticsModule)initWithConfig:(id)a3 error:(id *)a4
{
  v60[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v50.receiver = self;
  v50.super_class = SLUEStatisticsModule;
  v7 = [(SLUEStatisticsModule *)&v50 init];
  if (!v7)
  {
    goto LABEL_29;
  }

  if (SLLogInitIfNeeded_once != -1)
  {
    dispatch_once(&SLLogInitIfNeeded_once, &__block_literal_global);
  }

  v8 = [MEMORY[0x277D01778] decodeJsonFromFile:v6];
  if (!v8)
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing config for User Engagement Stats model %@", 0];
    v30 = MEMORY[0x277CCA9B8];
    v59 = @"reason";
    v60[0] = v29;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    v32 = [v30 errorWithDomain:@"com.apple.sl" code:118 userInfo:v31];

    v33 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v56 = "[SLUEStatisticsModule initWithConfig:error:]";
      v57 = 2112;
      v58 = v29;
      _os_log_error_impl(&dword_26754E000, v33, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      if (v32)
      {
        goto LABEL_20;
      }
    }

    else if (v32)
    {
LABEL_20:
      if (a4)
      {
        v37 = v32;
        *a4 = v32;
      }

      goto LABEL_23;
    }
  }

  v9 = [v8 objectForKeyedSubscript:@"outputNodeName"];
  v10 = v9;
  if (v9)
  {
    v9 = [v8 objectForKeyedSubscript:@"outputNodeName"];
  }

  outputNodeName = v7->_outputNodeName;
  v7->_outputNodeName = v9;

  if (!v7->_outputNodeName)
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing output name for EUS %@", v8];
    v34 = MEMORY[0x277CCA9B8];
    v53 = @"reason";
    v54 = v29;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v32 = [v34 errorWithDomain:@"com.apple.sl" code:118 userInfo:v35];

    v36 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v56 = "[SLUEStatisticsModule initWithConfig:error:]";
      v57 = 2112;
      v58 = v29;
      _os_log_error_impl(&dword_26754E000, v36, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      if (v32)
      {
        goto LABEL_20;
      }
    }

    else if (v32)
    {
      goto LABEL_20;
    }
  }

  v12 = [v6 stringByDeletingLastPathComponent];
  v13 = [v8 objectForKeyedSubscript:@"modelFile"];
  v14 = [v12 stringByAppendingPathComponent:v13];

  v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14];
  v16 = objc_alloc_init(MEMORY[0x277CBFF38]);
  [v16 setComputeUnits:0];
  v49 = 0;
  v17 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v15 configuration:v16 error:&v49];
  v18 = v49;
  uesModel = v7->_uesModel;
  v7->_uesModel = v17;

  v20 = v7->_uesModel;
  if (v20 && !v18)
  {
    goto LABEL_28;
  }

  v47 = a4;
  v48 = v12;
  v21 = MEMORY[0x277CCACA8];
  v22 = [v18 localizedDescription];
  v23 = [v21 stringWithFormat:@"Unable to create model with error %@", v22];

  v24 = MEMORY[0x277CCA9B8];
  v51 = @"reason";
  v52 = v23;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v26 = [v24 errorWithDomain:@"com.apple.sl" code:118 userInfo:v25];

  v27 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v56 = "[SLUEStatisticsModule initWithConfig:error:]";
    v57 = 2114;
    v58 = v23;
    _os_log_error_impl(&dword_26754E000, v27, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    if (v26)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  if (!v26)
  {
LABEL_27:

    v20 = v7->_uesModel;
    v12 = v48;
LABEL_28:
    v39 = [(MLModel *)v20 modelDescription];
    v40 = [v39 inputDescriptionsByName];
    inputSpecs = v7->_inputSpecs;
    v7->_inputSpecs = v40;

    v42 = [(MLModel *)v7->_uesModel modelDescription];
    v43 = [v42 outputDescriptionsByName];
    outputSpecs = v7->_outputSpecs;
    v7->_outputSpecs = v43;

LABEL_29:
    v38 = v7;
    goto LABEL_30;
  }

LABEL_12:
  if (v47)
  {
    v28 = v26;
    *v47 = v26;
  }

LABEL_23:
  v38 = 0;
LABEL_30:

  v45 = *MEMORY[0x277D85DE8];
  return v38;
}

@end