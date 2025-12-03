@interface AXPhoenixClassifierConfiguration
- (AXPhoenixClassifierConfiguration)init;
- (AXPhoenixClassifierConfiguration)initWithDictionary:(id)dictionary missingKeys:(id)keys;
- (id)toDictionary;
- (void)_initializeKeys;
- (void)_parseFromDictionary:(id)dictionary missingKeys:(id)keys;
- (void)_setDefaultConfiguration;
@end

@implementation AXPhoenixClassifierConfiguration

- (AXPhoenixClassifierConfiguration)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AXPhoenixClassifierConfiguration;
  v6 = [(AXPhoenixClassifierConfiguration *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(AXPhoenixClassifierConfiguration *)v6 _initializeKeys];
    [(AXPhoenixClassifierConfiguration *)v6 _setDefaultConfiguration];
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (AXPhoenixClassifierConfiguration)initWithDictionary:(id)dictionary missingKeys:(id)keys
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v9 = 0;
  objc_storeStrong(&v9, keys);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AXPhoenixClassifierConfiguration;
  selfCopy = [(AXPhoenixClassifierConfiguration *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(AXPhoenixClassifierConfiguration *)selfCopy _initializeKeys];
    [(AXPhoenixClassifierConfiguration *)selfCopy _parseFromDictionary:location[0] missingKeys:v9];
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)_initializeKeys
{
  [(AXPhoenixClassifierConfiguration *)self setDataKey:@"data"];
  [(AXPhoenixClassifierConfiguration *)self setAccelerometerSampleRateInHzKey:@"accelerometerSampleRateInHz"];
  [(AXPhoenixClassifierConfiguration *)self setMaxAccelerationBufferSizeKey:@"maxAccelerationBufferSize"];
  [(AXPhoenixClassifierConfiguration *)self setPolicyKey:@"policy"];
  [(AXPhoenixClassifierConfiguration *)self setPredictionConfidenceThresholdKey:@"predictionConfidenceThreshold"];
  [(AXPhoenixClassifierConfiguration *)self setMinDurationBetweenTriggersInSecondsKey:@"minDurationBetweenTriggersInSeconds"];
  [(AXPhoenixClassifierConfiguration *)self setMaxPredictionBufferSizeKey:@"maxPredictionBufferSize"];
  [(AXPhoenixClassifierConfiguration *)self setModelPredictionRateInHzKey:@"modelPredictionRateInHz"];
  [(AXPhoenixClassifierConfiguration *)self setPredictionCountThresholdsKey:@"predictionCountThresholds"];
  [(AXPhoenixClassifierConfiguration *)self setDoubleTapPolicyKey:@"doubleTapPolicy"];
  [(AXPhoenixClassifierConfiguration *)self setTripleTapPolicyKey:@"tripleTapPolicy"];
  [(AXPhoenixClassifierConfiguration *)self setGeneralPolicyKey:@"generalPolicy"];
  [(AXPhoenixClassifierConfiguration *)self setPredictionClassNoneKey:@"none"];
  [(AXPhoenixClassifierConfiguration *)self setPredictionClassDoubleTapKey:@"doubleTap"];
  [(AXPhoenixClassifierConfiguration *)self setPredictionClassTripleTapKey:@"tripleTap"];
}

- (void)_setDefaultConfiguration
{
  selfCopy = self;
  v4[1] = a2;
  [(AXPhoenixClassifierConfiguration *)self setAccelerometerSampleRateInHz:100];
  [(AXPhoenixClassifierConfiguration *)selfCopy setMaxAccelerationBufferSize:250];
  v4[0] = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  [v4[0] setObject:? atIndexedSubscript:?];
  [v4[0] setObject:&unk_287037BA0 atIndexedSubscript:?];
  [v4[0] setObject:? atIndexedSubscript:?];
  [(AXPhoenixClassifierConfiguration *)selfCopy setGeneralPolicyThresholds:v4[0]];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  [v3 setObject:&unk_287037B88 atIndexedSubscript:0];
  [v3 setObject:&unk_287037BB8 atIndexedSubscript:1];
  [(AXPhoenixClassifierConfiguration *)selfCopy setDoubleTapPolicyThresholds:v3];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  [v2 setObject:&unk_287037B88 atIndexedSubscript:0];
  [v2 setObject:&unk_287037BB8 atIndexedSubscript:1];
  [(AXPhoenixClassifierConfiguration *)selfCopy setTripleTapPolicyThresholds:v2];
  [(AXPhoenixClassifierConfiguration *)selfCopy setPredictionConfidenceThreshold:0.95];
  [(AXPhoenixClassifierConfiguration *)selfCopy setMinDurationBetweenTriggersInSeconds:2];
  [(AXPhoenixClassifierConfiguration *)selfCopy setMaxPredictionBufferSize:8];
  [(AXPhoenixClassifierConfiguration *)selfCopy setModelPredictionRateInHz:10];
  objc_storeStrong(&v2, 0);
  objc_storeStrong(&v3, 0);
  objc_storeStrong(v4, 0);
}

- (void)_parseFromDictionary:(id)dictionary missingKeys:(id)keys
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v138 = 0;
  objc_storeStrong(&v138, keys);
  v127 = location[0];
  dataKey = [(AXPhoenixClassifierConfiguration *)selfCopy dataKey];
  v137 = [v127 objectForKey:?];
  MEMORY[0x277D82BD8](dataKey);
  if (v137)
  {
    accelerometerSampleRateInHzKey = [(AXPhoenixClassifierConfiguration *)selfCopy accelerometerSampleRateInHzKey];
    v125 = [v137 objectForKey:?];
    MEMORY[0x277D82BD8](v125);
    MEMORY[0x277D82BD8](accelerometerSampleRateInHzKey);
    if (v125)
    {
      v121 = selfCopy;
      accelerometerSampleRateInHzKey2 = [(AXPhoenixClassifierConfiguration *)selfCopy accelerometerSampleRateInHzKey];
      v122 = [v137 objectForKey:?];
      -[AXPhoenixClassifierConfiguration setAccelerometerSampleRateInHz:](v121, "setAccelerometerSampleRateInHz:", [v122 unsignedIntegerValue]);
      MEMORY[0x277D82BD8](v122);
      MEMORY[0x277D82BD8](accelerometerSampleRateInHzKey2);
    }

    else
    {
      v119 = v138;
      accelerometerSampleRateInHzKey3 = [(AXPhoenixClassifierConfiguration *)selfCopy accelerometerSampleRateInHzKey];
      [v119 addObject:?];
      MEMORY[0x277D82BD8](accelerometerSampleRateInHzKey3);
    }

    maxAccelerationBufferSizeKey = [(AXPhoenixClassifierConfiguration *)selfCopy maxAccelerationBufferSizeKey];
    v118 = [v137 objectForKey:?];
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](maxAccelerationBufferSizeKey);
    if (v118)
    {
      v114 = selfCopy;
      maxAccelerationBufferSizeKey2 = [(AXPhoenixClassifierConfiguration *)selfCopy maxAccelerationBufferSizeKey];
      v115 = [v137 objectForKey:?];
      -[AXPhoenixClassifierConfiguration setMaxAccelerationBufferSize:](v114, "setMaxAccelerationBufferSize:", [v115 unsignedIntegerValue]);
      MEMORY[0x277D82BD8](v115);
      MEMORY[0x277D82BD8](maxAccelerationBufferSizeKey2);
    }

    else
    {
      v112 = v138;
      maxAccelerationBufferSizeKey3 = [(AXPhoenixClassifierConfiguration *)selfCopy maxAccelerationBufferSizeKey];
      [v112 addObject:?];
      MEMORY[0x277D82BD8](maxAccelerationBufferSizeKey3);
    }
  }

  else
  {
    v110 = v138;
    dataKey2 = [(AXPhoenixClassifierConfiguration *)selfCopy dataKey];
    [v110 addObject:?];
    MEMORY[0x277D82BD8](dataKey2);
  }

  v108 = location[0];
  policyKey = [(AXPhoenixClassifierConfiguration *)selfCopy policyKey];
  v136 = [v108 objectForKey:?];
  MEMORY[0x277D82BD8](policyKey);
  if (v136)
  {
    modelPredictionRateInHzKey = [(AXPhoenixClassifierConfiguration *)selfCopy modelPredictionRateInHzKey];
    v107 = [v136 objectForKey:?];
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](modelPredictionRateInHzKey);
    if (v107)
    {
      v103 = selfCopy;
      modelPredictionRateInHzKey2 = [(AXPhoenixClassifierConfiguration *)selfCopy modelPredictionRateInHzKey];
      v104 = [v136 objectForKey:?];
      -[AXPhoenixClassifierConfiguration setModelPredictionRateInHz:](v103, "setModelPredictionRateInHz:", [v104 unsignedIntegerValue]);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](modelPredictionRateInHzKey2);
    }

    else
    {
      v101 = v138;
      modelPredictionRateInHzKey3 = [(AXPhoenixClassifierConfiguration *)selfCopy modelPredictionRateInHzKey];
      [v101 addObject:?];
      MEMORY[0x277D82BD8](modelPredictionRateInHzKey3);
    }

    maxPredictionBufferSizeKey = [(AXPhoenixClassifierConfiguration *)selfCopy maxPredictionBufferSizeKey];
    v100 = [v136 objectForKey:?];
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](maxPredictionBufferSizeKey);
    if (v100)
    {
      v96 = selfCopy;
      maxPredictionBufferSizeKey2 = [(AXPhoenixClassifierConfiguration *)selfCopy maxPredictionBufferSizeKey];
      v97 = [v136 objectForKey:?];
      -[AXPhoenixClassifierConfiguration setMaxPredictionBufferSize:](v96, "setMaxPredictionBufferSize:", [v97 unsignedIntegerValue]);
      MEMORY[0x277D82BD8](v97);
      MEMORY[0x277D82BD8](maxPredictionBufferSizeKey2);
    }

    else
    {
      v94 = v138;
      maxPredictionBufferSizeKey3 = [(AXPhoenixClassifierConfiguration *)selfCopy maxPredictionBufferSizeKey];
      [v94 addObject:?];
      MEMORY[0x277D82BD8](maxPredictionBufferSizeKey3);
    }

    minDurationBetweenTriggersInSecondsKey = [(AXPhoenixClassifierConfiguration *)selfCopy minDurationBetweenTriggersInSecondsKey];
    v93 = [v136 objectForKey:?];
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](minDurationBetweenTriggersInSecondsKey);
    if (v93)
    {
      v89 = selfCopy;
      minDurationBetweenTriggersInSecondsKey2 = [(AXPhoenixClassifierConfiguration *)selfCopy minDurationBetweenTriggersInSecondsKey];
      v90 = [v136 objectForKey:?];
      -[AXPhoenixClassifierConfiguration setMinDurationBetweenTriggersInSeconds:](v89, "setMinDurationBetweenTriggersInSeconds:", [v90 unsignedIntegerValue]);
      MEMORY[0x277D82BD8](v90);
      MEMORY[0x277D82BD8](minDurationBetweenTriggersInSecondsKey2);
    }

    else
    {
      v87 = v138;
      minDurationBetweenTriggersInSecondsKey3 = [(AXPhoenixClassifierConfiguration *)selfCopy minDurationBetweenTriggersInSecondsKey];
      [v87 addObject:?];
      MEMORY[0x277D82BD8](minDurationBetweenTriggersInSecondsKey3);
    }

    predictionConfidenceThresholdKey = [(AXPhoenixClassifierConfiguration *)selfCopy predictionConfidenceThresholdKey];
    v86 = [v136 objectForKey:?];
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](predictionConfidenceThresholdKey);
    if (v86)
    {
      v82 = selfCopy;
      predictionConfidenceThresholdKey2 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionConfidenceThresholdKey];
      v83 = [v136 objectForKey:?];
      [v83 doubleValue];
      [(AXPhoenixClassifierConfiguration *)v82 setPredictionConfidenceThreshold:?];
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](predictionConfidenceThresholdKey2);
    }

    else
    {
      v80 = v138;
      predictionConfidenceThresholdKey3 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionConfidenceThresholdKey];
      [v80 addObject:?];
      MEMORY[0x277D82BD8](predictionConfidenceThresholdKey3);
    }

    predictionCountThresholdsKey = [(AXPhoenixClassifierConfiguration *)selfCopy predictionCountThresholdsKey];
    v135 = [v136 objectForKey:?];
    MEMORY[0x277D82BD8](predictionCountThresholdsKey);
    if (v135)
    {
      doubleTapPolicyKey = [(AXPhoenixClassifierConfiguration *)selfCopy doubleTapPolicyKey];
      v134 = [v135 objectForKey:?];
      MEMORY[0x277D82BD8](doubleTapPolicyKey);
      if (v134)
      {
        v74 = MEMORY[0x277CBEB18];
        doubleTapPolicyThresholds = [(AXPhoenixClassifierConfiguration *)selfCopy doubleTapPolicyThresholds];
        v133 = [v74 arrayWithArray:?];
        MEMORY[0x277D82BD8](doubleTapPolicyThresholds);
        predictionClassNoneKey = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassNoneKey];
        v77 = [v134 objectForKey:?];
        MEMORY[0x277D82BD8](v77);
        MEMORY[0x277D82BD8](predictionClassNoneKey);
        if (v77)
        {
          v70 = MEMORY[0x277CCABB0];
          predictionClassNoneKey2 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassNoneKey];
          v72 = [v134 objectForKey:?];
          v71 = [v70 numberWithUnsignedInteger:{objc_msgSend(v72, "unsignedIntegerValue")}];
          [v133 setObject:? atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v71);
          MEMORY[0x277D82BD8](v72);
          MEMORY[0x277D82BD8](predictionClassNoneKey2);
        }

        else
        {
          v68 = v138;
          predictionClassNoneKey3 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassNoneKey];
          [v68 addObject:?];
          MEMORY[0x277D82BD8](predictionClassNoneKey3);
        }

        predictionClassDoubleTapKey = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassDoubleTapKey];
        v67 = [v134 objectForKey:?];
        MEMORY[0x277D82BD8](v67);
        MEMORY[0x277D82BD8](predictionClassDoubleTapKey);
        if (v67)
        {
          v62 = MEMORY[0x277CCABB0];
          predictionClassDoubleTapKey2 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassDoubleTapKey];
          v64 = [v134 objectForKey:?];
          v63 = [v62 numberWithUnsignedInteger:{objc_msgSend(v64, "unsignedIntegerValue")}];
          [v133 setObject:? atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v63);
          MEMORY[0x277D82BD8](v64);
          MEMORY[0x277D82BD8](predictionClassDoubleTapKey2);
        }

        else
        {
          v60 = v138;
          predictionClassDoubleTapKey3 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassDoubleTapKey];
          [v60 addObject:?];
          MEMORY[0x277D82BD8](predictionClassDoubleTapKey3);
        }

        [(AXPhoenixClassifierConfiguration *)selfCopy setDoubleTapPolicyThresholds:v133];
        objc_storeStrong(&v133, 0);
      }

      else
      {
        v58 = v138;
        doubleTapPolicyKey2 = [(AXPhoenixClassifierConfiguration *)selfCopy doubleTapPolicyKey];
        [v58 addObject:?];
        MEMORY[0x277D82BD8](doubleTapPolicyKey2);
      }

      v56 = v135;
      tripleTapPolicyKey = [(AXPhoenixClassifierConfiguration *)selfCopy tripleTapPolicyKey];
      v132 = [v56 objectForKey:?];
      MEMORY[0x277D82BD8](tripleTapPolicyKey);
      if (v132)
      {
        v52 = MEMORY[0x277CBEB18];
        tripleTapPolicyThresholds = [(AXPhoenixClassifierConfiguration *)selfCopy tripleTapPolicyThresholds];
        v131 = [v52 arrayWithArray:?];
        MEMORY[0x277D82BD8](tripleTapPolicyThresholds);
        predictionClassNoneKey4 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassNoneKey];
        v55 = [v132 objectForKey:?];
        MEMORY[0x277D82BD8](v55);
        MEMORY[0x277D82BD8](predictionClassNoneKey4);
        if (v55)
        {
          v48 = MEMORY[0x277CCABB0];
          predictionClassNoneKey5 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassNoneKey];
          v50 = [v132 objectForKey:?];
          v49 = [v48 numberWithUnsignedInteger:{objc_msgSend(v50, "unsignedIntegerValue")}];
          [v131 setObject:? atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v49);
          MEMORY[0x277D82BD8](v50);
          MEMORY[0x277D82BD8](predictionClassNoneKey5);
        }

        else
        {
          v46 = v138;
          predictionClassNoneKey6 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassNoneKey];
          [v46 addObject:?];
          MEMORY[0x277D82BD8](predictionClassNoneKey6);
        }

        predictionClassTripleTapKey = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassTripleTapKey];
        v45 = [v132 objectForKey:?];
        MEMORY[0x277D82BD8](v45);
        MEMORY[0x277D82BD8](predictionClassTripleTapKey);
        if (v45)
        {
          v40 = MEMORY[0x277CCABB0];
          predictionClassTripleTapKey2 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassTripleTapKey];
          v42 = [v132 objectForKey:?];
          v41 = [v40 numberWithUnsignedInteger:{objc_msgSend(v42, "unsignedIntegerValue")}];
          [v131 setObject:? atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v41);
          MEMORY[0x277D82BD8](v42);
          MEMORY[0x277D82BD8](predictionClassTripleTapKey2);
        }

        else
        {
          v38 = v138;
          predictionClassTripleTapKey3 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassTripleTapKey];
          [v38 addObject:?];
          MEMORY[0x277D82BD8](predictionClassTripleTapKey3);
        }

        [(AXPhoenixClassifierConfiguration *)selfCopy setTripleTapPolicyThresholds:v131];
        objc_storeStrong(&v131, 0);
      }

      else
      {
        v36 = v138;
        tripleTapPolicyKey2 = [(AXPhoenixClassifierConfiguration *)selfCopy tripleTapPolicyKey];
        [v36 addObject:?];
        MEMORY[0x277D82BD8](tripleTapPolicyKey2);
      }

      v34 = v135;
      generalPolicyKey = [(AXPhoenixClassifierConfiguration *)selfCopy generalPolicyKey];
      v130 = [v34 objectForKey:?];
      MEMORY[0x277D82BD8](generalPolicyKey);
      if (v130)
      {
        v30 = MEMORY[0x277CBEB18];
        generalPolicyThresholds = [(AXPhoenixClassifierConfiguration *)selfCopy generalPolicyThresholds];
        v129 = [v30 arrayWithArray:?];
        MEMORY[0x277D82BD8](generalPolicyThresholds);
        predictionClassNoneKey7 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassNoneKey];
        v33 = [v130 objectForKey:?];
        MEMORY[0x277D82BD8](v33);
        MEMORY[0x277D82BD8](predictionClassNoneKey7);
        if (v33)
        {
          v26 = MEMORY[0x277CCABB0];
          predictionClassNoneKey8 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassNoneKey];
          v28 = [v130 objectForKey:?];
          v27 = [v26 numberWithUnsignedInteger:{objc_msgSend(v28, "unsignedIntegerValue")}];
          [v129 setObject:? atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v27);
          MEMORY[0x277D82BD8](v28);
          MEMORY[0x277D82BD8](predictionClassNoneKey8);
        }

        else
        {
          v24 = v138;
          predictionClassNoneKey9 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassNoneKey];
          [v24 addObject:?];
          MEMORY[0x277D82BD8](predictionClassNoneKey9);
        }

        predictionClassDoubleTapKey4 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassDoubleTapKey];
        v23 = [v130 objectForKey:?];
        MEMORY[0x277D82BD8](v23);
        MEMORY[0x277D82BD8](predictionClassDoubleTapKey4);
        if (v23)
        {
          v18 = MEMORY[0x277CCABB0];
          predictionClassDoubleTapKey5 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassDoubleTapKey];
          v20 = [v130 objectForKey:?];
          v19 = [v18 numberWithUnsignedInteger:{objc_msgSend(v20, "unsignedIntegerValue")}];
          [v129 setObject:? atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v19);
          MEMORY[0x277D82BD8](v20);
          MEMORY[0x277D82BD8](predictionClassDoubleTapKey5);
        }

        else
        {
          v16 = v138;
          predictionClassDoubleTapKey6 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassDoubleTapKey];
          [v16 addObject:?];
          MEMORY[0x277D82BD8](predictionClassDoubleTapKey6);
        }

        predictionClassTripleTapKey4 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassTripleTapKey];
        v15 = [v130 objectForKey:?];
        MEMORY[0x277D82BD8](v15);
        MEMORY[0x277D82BD8](predictionClassTripleTapKey4);
        if (v15)
        {
          v10 = MEMORY[0x277CCABB0];
          predictionClassTripleTapKey5 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassTripleTapKey];
          v12 = [v130 objectForKey:?];
          v11 = [v10 numberWithUnsignedInteger:{objc_msgSend(v12, "unsignedIntegerValue")}];
          [v129 setObject:? atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v11);
          MEMORY[0x277D82BD8](v12);
          MEMORY[0x277D82BD8](predictionClassTripleTapKey5);
        }

        else
        {
          v8 = v138;
          predictionClassTripleTapKey6 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionClassTripleTapKey];
          [v8 addObject:?];
          MEMORY[0x277D82BD8](predictionClassTripleTapKey6);
        }

        [(AXPhoenixClassifierConfiguration *)selfCopy setGeneralPolicyThresholds:v129];
        objc_storeStrong(&v129, 0);
      }

      else
      {
        v6 = v138;
        generalPolicyKey2 = [(AXPhoenixClassifierConfiguration *)selfCopy generalPolicyKey];
        [v6 addObject:?];
        MEMORY[0x277D82BD8](generalPolicyKey2);
      }

      objc_storeStrong(&v130, 0);
      objc_storeStrong(&v132, 0);
      objc_storeStrong(&v134, 0);
    }

    else
    {
      v4 = v138;
      predictionCountThresholdsKey2 = [(AXPhoenixClassifierConfiguration *)selfCopy predictionCountThresholdsKey];
      [v4 addObject:?];
      MEMORY[0x277D82BD8](predictionCountThresholdsKey2);
    }

    objc_storeStrong(&v135, 0);
  }

  objc_storeStrong(&v136, 0);
  objc_storeStrong(&v137, 0);
  objc_storeStrong(&v138, 0);
  objc_storeStrong(location, 0);
}

- (id)toDictionary
{
  v64[2] = *MEMORY[0x277D85DE8];
  dataKey = [(AXPhoenixClassifierConfiguration *)self dataKey];
  v63[0] = dataKey;
  accelerometerSampleRateInHzKey = [(AXPhoenixClassifierConfiguration *)self accelerometerSampleRateInHzKey];
  v61[0] = accelerometerSampleRateInHzKey;
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXPhoenixClassifierConfiguration accelerometerSampleRateInHz](self, "accelerometerSampleRateInHz")}];
  v62[0] = v47;
  maxAccelerationBufferSizeKey = [(AXPhoenixClassifierConfiguration *)self maxAccelerationBufferSizeKey];
  v61[1] = maxAccelerationBufferSizeKey;
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXPhoenixClassifierConfiguration maxAccelerationBufferSize](self, "maxAccelerationBufferSize")}];
  v62[1] = v45;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:?];
  v64[0] = v44;
  policyKey = [(AXPhoenixClassifierConfiguration *)self policyKey];
  v63[1] = policyKey;
  modelPredictionRateInHzKey = [(AXPhoenixClassifierConfiguration *)self modelPredictionRateInHzKey];
  v59[0] = modelPredictionRateInHzKey;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXPhoenixClassifierConfiguration modelPredictionRateInHz](self, "modelPredictionRateInHz")}];
  v60[0] = v41;
  maxPredictionBufferSizeKey = [(AXPhoenixClassifierConfiguration *)self maxPredictionBufferSizeKey];
  v59[1] = maxPredictionBufferSizeKey;
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXPhoenixClassifierConfiguration maxPredictionBufferSize](self, "maxPredictionBufferSize")}];
  v60[1] = v39;
  minDurationBetweenTriggersInSecondsKey = [(AXPhoenixClassifierConfiguration *)self minDurationBetweenTriggersInSecondsKey];
  v59[2] = minDurationBetweenTriggersInSecondsKey;
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXPhoenixClassifierConfiguration minDurationBetweenTriggersInSeconds](self, "minDurationBetweenTriggersInSeconds")}];
  v60[2] = v37;
  predictionConfidenceThresholdKey = [(AXPhoenixClassifierConfiguration *)self predictionConfidenceThresholdKey];
  v59[3] = predictionConfidenceThresholdKey;
  v3 = MEMORY[0x277CCABB0];
  [(AXPhoenixClassifierConfiguration *)self predictionConfidenceThreshold];
  v35 = [v3 numberWithDouble:?];
  v60[3] = v35;
  predictionCountThresholdsKey = [(AXPhoenixClassifierConfiguration *)self predictionCountThresholdsKey];
  v59[4] = predictionCountThresholdsKey;
  doubleTapPolicyKey = [(AXPhoenixClassifierConfiguration *)self doubleTapPolicyKey];
  v57[0] = doubleTapPolicyKey;
  predictionClassNoneKey = [(AXPhoenixClassifierConfiguration *)self predictionClassNoneKey];
  v55[0] = predictionClassNoneKey;
  doubleTapPolicyThresholds = [(AXPhoenixClassifierConfiguration *)self doubleTapPolicyThresholds];
  v30 = [(NSArray *)doubleTapPolicyThresholds objectAtIndexedSubscript:?];
  v56[0] = v30;
  predictionClassDoubleTapKey = [(AXPhoenixClassifierConfiguration *)self predictionClassDoubleTapKey];
  v55[1] = predictionClassDoubleTapKey;
  doubleTapPolicyThresholds2 = [(AXPhoenixClassifierConfiguration *)self doubleTapPolicyThresholds];
  v27 = [(NSArray *)doubleTapPolicyThresholds2 objectAtIndexedSubscript:?];
  v56[1] = v27;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
  v58[0] = v26;
  tripleTapPolicyKey = [(AXPhoenixClassifierConfiguration *)self tripleTapPolicyKey];
  v57[1] = tripleTapPolicyKey;
  predictionClassNoneKey2 = [(AXPhoenixClassifierConfiguration *)self predictionClassNoneKey];
  v53[0] = predictionClassNoneKey2;
  tripleTapPolicyThresholds = [(AXPhoenixClassifierConfiguration *)self tripleTapPolicyThresholds];
  v22 = [(NSArray *)tripleTapPolicyThresholds objectAtIndexedSubscript:0];
  v54[0] = v22;
  predictionClassTripleTapKey = [(AXPhoenixClassifierConfiguration *)self predictionClassTripleTapKey];
  v53[1] = predictionClassTripleTapKey;
  tripleTapPolicyThresholds2 = [(AXPhoenixClassifierConfiguration *)self tripleTapPolicyThresholds];
  v19 = [(NSArray *)tripleTapPolicyThresholds2 objectAtIndexedSubscript:1];
  v54[1] = v19;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
  v58[1] = v18;
  generalPolicyKey = [(AXPhoenixClassifierConfiguration *)self generalPolicyKey];
  v57[2] = generalPolicyKey;
  predictionClassNoneKey3 = [(AXPhoenixClassifierConfiguration *)self predictionClassNoneKey];
  v51[0] = predictionClassNoneKey3;
  generalPolicyThresholds = [(AXPhoenixClassifierConfiguration *)self generalPolicyThresholds];
  v14 = [(NSArray *)generalPolicyThresholds objectAtIndexedSubscript:0];
  v52[0] = v14;
  predictionClassDoubleTapKey2 = [(AXPhoenixClassifierConfiguration *)self predictionClassDoubleTapKey];
  v51[1] = predictionClassDoubleTapKey2;
  generalPolicyThresholds2 = [(AXPhoenixClassifierConfiguration *)self generalPolicyThresholds];
  v11 = [(NSArray *)generalPolicyThresholds2 objectAtIndexedSubscript:1];
  v52[1] = v11;
  predictionClassTripleTapKey2 = [(AXPhoenixClassifierConfiguration *)self predictionClassTripleTapKey];
  v51[2] = predictionClassTripleTapKey2;
  generalPolicyThresholds3 = [(AXPhoenixClassifierConfiguration *)self generalPolicyThresholds];
  v8 = [(NSArray *)generalPolicyThresholds3 objectAtIndexedSubscript:2];
  v52[2] = v8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:?];
  v58[2] = v7;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
  v60[4] = v6;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:5];
  v64[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](generalPolicyThresholds3);
  MEMORY[0x277D82BD8](predictionClassTripleTapKey2);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](generalPolicyThresholds2);
  MEMORY[0x277D82BD8](predictionClassDoubleTapKey2);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](generalPolicyThresholds);
  MEMORY[0x277D82BD8](predictionClassNoneKey3);
  MEMORY[0x277D82BD8](generalPolicyKey);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](tripleTapPolicyThresholds2);
  MEMORY[0x277D82BD8](predictionClassTripleTapKey);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](tripleTapPolicyThresholds);
  MEMORY[0x277D82BD8](predictionClassNoneKey2);
  MEMORY[0x277D82BD8](tripleTapPolicyKey);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](doubleTapPolicyThresholds2);
  MEMORY[0x277D82BD8](predictionClassDoubleTapKey);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](doubleTapPolicyThresholds);
  MEMORY[0x277D82BD8](predictionClassNoneKey);
  MEMORY[0x277D82BD8](doubleTapPolicyKey);
  MEMORY[0x277D82BD8](predictionCountThresholdsKey);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](predictionConfidenceThresholdKey);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](minDurationBetweenTriggersInSecondsKey);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](maxPredictionBufferSizeKey);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](modelPredictionRateInHzKey);
  MEMORY[0x277D82BD8](policyKey);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](maxAccelerationBufferSizeKey);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](accelerometerSampleRateInHzKey);
  MEMORY[0x277D82BD8](dataKey);
  *MEMORY[0x277D85DE8];

  return v5;
}

@end