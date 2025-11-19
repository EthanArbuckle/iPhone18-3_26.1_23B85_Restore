@interface AXPhoenixClassifierConfiguration
- (AXPhoenixClassifierConfiguration)init;
- (AXPhoenixClassifierConfiguration)initWithDictionary:(id)a3 missingKeys:(id)a4;
- (id)toDictionary;
- (void)_initializeKeys;
- (void)_parseFromDictionary:(id)a3 missingKeys:(id)a4;
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

- (AXPhoenixClassifierConfiguration)initWithDictionary:(id)a3 missingKeys:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AXPhoenixClassifierConfiguration;
  v11 = [(AXPhoenixClassifierConfiguration *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    [(AXPhoenixClassifierConfiguration *)v11 _initializeKeys];
    [(AXPhoenixClassifierConfiguration *)v11 _parseFromDictionary:location[0] missingKeys:v9];
  }

  v6 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
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
  v5 = self;
  v4[1] = a2;
  [(AXPhoenixClassifierConfiguration *)self setAccelerometerSampleRateInHz:100];
  [(AXPhoenixClassifierConfiguration *)v5 setMaxAccelerationBufferSize:250];
  v4[0] = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  [v4[0] setObject:? atIndexedSubscript:?];
  [v4[0] setObject:&unk_287037BA0 atIndexedSubscript:?];
  [v4[0] setObject:? atIndexedSubscript:?];
  [(AXPhoenixClassifierConfiguration *)v5 setGeneralPolicyThresholds:v4[0]];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  [v3 setObject:&unk_287037B88 atIndexedSubscript:0];
  [v3 setObject:&unk_287037BB8 atIndexedSubscript:1];
  [(AXPhoenixClassifierConfiguration *)v5 setDoubleTapPolicyThresholds:v3];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  [v2 setObject:&unk_287037B88 atIndexedSubscript:0];
  [v2 setObject:&unk_287037BB8 atIndexedSubscript:1];
  [(AXPhoenixClassifierConfiguration *)v5 setTripleTapPolicyThresholds:v2];
  [(AXPhoenixClassifierConfiguration *)v5 setPredictionConfidenceThreshold:0.95];
  [(AXPhoenixClassifierConfiguration *)v5 setMinDurationBetweenTriggersInSeconds:2];
  [(AXPhoenixClassifierConfiguration *)v5 setMaxPredictionBufferSize:8];
  [(AXPhoenixClassifierConfiguration *)v5 setModelPredictionRateInHz:10];
  objc_storeStrong(&v2, 0);
  objc_storeStrong(&v3, 0);
  objc_storeStrong(v4, 0);
}

- (void)_parseFromDictionary:(id)a3 missingKeys:(id)a4
{
  v140 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v138 = 0;
  objc_storeStrong(&v138, a4);
  v127 = location[0];
  v128 = [(AXPhoenixClassifierConfiguration *)v140 dataKey];
  v137 = [v127 objectForKey:?];
  MEMORY[0x277D82BD8](v128);
  if (v137)
  {
    v124 = [(AXPhoenixClassifierConfiguration *)v140 accelerometerSampleRateInHzKey];
    v125 = [v137 objectForKey:?];
    MEMORY[0x277D82BD8](v125);
    MEMORY[0x277D82BD8](v124);
    if (v125)
    {
      v121 = v140;
      v123 = [(AXPhoenixClassifierConfiguration *)v140 accelerometerSampleRateInHzKey];
      v122 = [v137 objectForKey:?];
      -[AXPhoenixClassifierConfiguration setAccelerometerSampleRateInHz:](v121, "setAccelerometerSampleRateInHz:", [v122 unsignedIntegerValue]);
      MEMORY[0x277D82BD8](v122);
      MEMORY[0x277D82BD8](v123);
    }

    else
    {
      v119 = v138;
      v120 = [(AXPhoenixClassifierConfiguration *)v140 accelerometerSampleRateInHzKey];
      [v119 addObject:?];
      MEMORY[0x277D82BD8](v120);
    }

    v117 = [(AXPhoenixClassifierConfiguration *)v140 maxAccelerationBufferSizeKey];
    v118 = [v137 objectForKey:?];
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](v117);
    if (v118)
    {
      v114 = v140;
      v116 = [(AXPhoenixClassifierConfiguration *)v140 maxAccelerationBufferSizeKey];
      v115 = [v137 objectForKey:?];
      -[AXPhoenixClassifierConfiguration setMaxAccelerationBufferSize:](v114, "setMaxAccelerationBufferSize:", [v115 unsignedIntegerValue]);
      MEMORY[0x277D82BD8](v115);
      MEMORY[0x277D82BD8](v116);
    }

    else
    {
      v112 = v138;
      v113 = [(AXPhoenixClassifierConfiguration *)v140 maxAccelerationBufferSizeKey];
      [v112 addObject:?];
      MEMORY[0x277D82BD8](v113);
    }
  }

  else
  {
    v110 = v138;
    v111 = [(AXPhoenixClassifierConfiguration *)v140 dataKey];
    [v110 addObject:?];
    MEMORY[0x277D82BD8](v111);
  }

  v108 = location[0];
  v109 = [(AXPhoenixClassifierConfiguration *)v140 policyKey];
  v136 = [v108 objectForKey:?];
  MEMORY[0x277D82BD8](v109);
  if (v136)
  {
    v106 = [(AXPhoenixClassifierConfiguration *)v140 modelPredictionRateInHzKey];
    v107 = [v136 objectForKey:?];
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](v106);
    if (v107)
    {
      v103 = v140;
      v105 = [(AXPhoenixClassifierConfiguration *)v140 modelPredictionRateInHzKey];
      v104 = [v136 objectForKey:?];
      -[AXPhoenixClassifierConfiguration setModelPredictionRateInHz:](v103, "setModelPredictionRateInHz:", [v104 unsignedIntegerValue]);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v105);
    }

    else
    {
      v101 = v138;
      v102 = [(AXPhoenixClassifierConfiguration *)v140 modelPredictionRateInHzKey];
      [v101 addObject:?];
      MEMORY[0x277D82BD8](v102);
    }

    v99 = [(AXPhoenixClassifierConfiguration *)v140 maxPredictionBufferSizeKey];
    v100 = [v136 objectForKey:?];
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v99);
    if (v100)
    {
      v96 = v140;
      v98 = [(AXPhoenixClassifierConfiguration *)v140 maxPredictionBufferSizeKey];
      v97 = [v136 objectForKey:?];
      -[AXPhoenixClassifierConfiguration setMaxPredictionBufferSize:](v96, "setMaxPredictionBufferSize:", [v97 unsignedIntegerValue]);
      MEMORY[0x277D82BD8](v97);
      MEMORY[0x277D82BD8](v98);
    }

    else
    {
      v94 = v138;
      v95 = [(AXPhoenixClassifierConfiguration *)v140 maxPredictionBufferSizeKey];
      [v94 addObject:?];
      MEMORY[0x277D82BD8](v95);
    }

    v92 = [(AXPhoenixClassifierConfiguration *)v140 minDurationBetweenTriggersInSecondsKey];
    v93 = [v136 objectForKey:?];
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v92);
    if (v93)
    {
      v89 = v140;
      v91 = [(AXPhoenixClassifierConfiguration *)v140 minDurationBetweenTriggersInSecondsKey];
      v90 = [v136 objectForKey:?];
      -[AXPhoenixClassifierConfiguration setMinDurationBetweenTriggersInSeconds:](v89, "setMinDurationBetweenTriggersInSeconds:", [v90 unsignedIntegerValue]);
      MEMORY[0x277D82BD8](v90);
      MEMORY[0x277D82BD8](v91);
    }

    else
    {
      v87 = v138;
      v88 = [(AXPhoenixClassifierConfiguration *)v140 minDurationBetweenTriggersInSecondsKey];
      [v87 addObject:?];
      MEMORY[0x277D82BD8](v88);
    }

    v85 = [(AXPhoenixClassifierConfiguration *)v140 predictionConfidenceThresholdKey];
    v86 = [v136 objectForKey:?];
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v85);
    if (v86)
    {
      v82 = v140;
      v84 = [(AXPhoenixClassifierConfiguration *)v140 predictionConfidenceThresholdKey];
      v83 = [v136 objectForKey:?];
      [v83 doubleValue];
      [(AXPhoenixClassifierConfiguration *)v82 setPredictionConfidenceThreshold:?];
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v84);
    }

    else
    {
      v80 = v138;
      v81 = [(AXPhoenixClassifierConfiguration *)v140 predictionConfidenceThresholdKey];
      [v80 addObject:?];
      MEMORY[0x277D82BD8](v81);
    }

    v79 = [(AXPhoenixClassifierConfiguration *)v140 predictionCountThresholdsKey];
    v135 = [v136 objectForKey:?];
    MEMORY[0x277D82BD8](v79);
    if (v135)
    {
      v78 = [(AXPhoenixClassifierConfiguration *)v140 doubleTapPolicyKey];
      v134 = [v135 objectForKey:?];
      MEMORY[0x277D82BD8](v78);
      if (v134)
      {
        v74 = MEMORY[0x277CBEB18];
        v75 = [(AXPhoenixClassifierConfiguration *)v140 doubleTapPolicyThresholds];
        v133 = [v74 arrayWithArray:?];
        MEMORY[0x277D82BD8](v75);
        v76 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassNoneKey];
        v77 = [v134 objectForKey:?];
        MEMORY[0x277D82BD8](v77);
        MEMORY[0x277D82BD8](v76);
        if (v77)
        {
          v70 = MEMORY[0x277CCABB0];
          v73 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassNoneKey];
          v72 = [v134 objectForKey:?];
          v71 = [v70 numberWithUnsignedInteger:{objc_msgSend(v72, "unsignedIntegerValue")}];
          [v133 setObject:? atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v71);
          MEMORY[0x277D82BD8](v72);
          MEMORY[0x277D82BD8](v73);
        }

        else
        {
          v68 = v138;
          v69 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassNoneKey];
          [v68 addObject:?];
          MEMORY[0x277D82BD8](v69);
        }

        v66 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassDoubleTapKey];
        v67 = [v134 objectForKey:?];
        MEMORY[0x277D82BD8](v67);
        MEMORY[0x277D82BD8](v66);
        if (v67)
        {
          v62 = MEMORY[0x277CCABB0];
          v65 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassDoubleTapKey];
          v64 = [v134 objectForKey:?];
          v63 = [v62 numberWithUnsignedInteger:{objc_msgSend(v64, "unsignedIntegerValue")}];
          [v133 setObject:? atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v63);
          MEMORY[0x277D82BD8](v64);
          MEMORY[0x277D82BD8](v65);
        }

        else
        {
          v60 = v138;
          v61 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassDoubleTapKey];
          [v60 addObject:?];
          MEMORY[0x277D82BD8](v61);
        }

        [(AXPhoenixClassifierConfiguration *)v140 setDoubleTapPolicyThresholds:v133];
        objc_storeStrong(&v133, 0);
      }

      else
      {
        v58 = v138;
        v59 = [(AXPhoenixClassifierConfiguration *)v140 doubleTapPolicyKey];
        [v58 addObject:?];
        MEMORY[0x277D82BD8](v59);
      }

      v56 = v135;
      v57 = [(AXPhoenixClassifierConfiguration *)v140 tripleTapPolicyKey];
      v132 = [v56 objectForKey:?];
      MEMORY[0x277D82BD8](v57);
      if (v132)
      {
        v52 = MEMORY[0x277CBEB18];
        v53 = [(AXPhoenixClassifierConfiguration *)v140 tripleTapPolicyThresholds];
        v131 = [v52 arrayWithArray:?];
        MEMORY[0x277D82BD8](v53);
        v54 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassNoneKey];
        v55 = [v132 objectForKey:?];
        MEMORY[0x277D82BD8](v55);
        MEMORY[0x277D82BD8](v54);
        if (v55)
        {
          v48 = MEMORY[0x277CCABB0];
          v51 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassNoneKey];
          v50 = [v132 objectForKey:?];
          v49 = [v48 numberWithUnsignedInteger:{objc_msgSend(v50, "unsignedIntegerValue")}];
          [v131 setObject:? atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v49);
          MEMORY[0x277D82BD8](v50);
          MEMORY[0x277D82BD8](v51);
        }

        else
        {
          v46 = v138;
          v47 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassNoneKey];
          [v46 addObject:?];
          MEMORY[0x277D82BD8](v47);
        }

        v44 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassTripleTapKey];
        v45 = [v132 objectForKey:?];
        MEMORY[0x277D82BD8](v45);
        MEMORY[0x277D82BD8](v44);
        if (v45)
        {
          v40 = MEMORY[0x277CCABB0];
          v43 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassTripleTapKey];
          v42 = [v132 objectForKey:?];
          v41 = [v40 numberWithUnsignedInteger:{objc_msgSend(v42, "unsignedIntegerValue")}];
          [v131 setObject:? atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v41);
          MEMORY[0x277D82BD8](v42);
          MEMORY[0x277D82BD8](v43);
        }

        else
        {
          v38 = v138;
          v39 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassTripleTapKey];
          [v38 addObject:?];
          MEMORY[0x277D82BD8](v39);
        }

        [(AXPhoenixClassifierConfiguration *)v140 setTripleTapPolicyThresholds:v131];
        objc_storeStrong(&v131, 0);
      }

      else
      {
        v36 = v138;
        v37 = [(AXPhoenixClassifierConfiguration *)v140 tripleTapPolicyKey];
        [v36 addObject:?];
        MEMORY[0x277D82BD8](v37);
      }

      v34 = v135;
      v35 = [(AXPhoenixClassifierConfiguration *)v140 generalPolicyKey];
      v130 = [v34 objectForKey:?];
      MEMORY[0x277D82BD8](v35);
      if (v130)
      {
        v30 = MEMORY[0x277CBEB18];
        v31 = [(AXPhoenixClassifierConfiguration *)v140 generalPolicyThresholds];
        v129 = [v30 arrayWithArray:?];
        MEMORY[0x277D82BD8](v31);
        v32 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassNoneKey];
        v33 = [v130 objectForKey:?];
        MEMORY[0x277D82BD8](v33);
        MEMORY[0x277D82BD8](v32);
        if (v33)
        {
          v26 = MEMORY[0x277CCABB0];
          v29 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassNoneKey];
          v28 = [v130 objectForKey:?];
          v27 = [v26 numberWithUnsignedInteger:{objc_msgSend(v28, "unsignedIntegerValue")}];
          [v129 setObject:? atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v27);
          MEMORY[0x277D82BD8](v28);
          MEMORY[0x277D82BD8](v29);
        }

        else
        {
          v24 = v138;
          v25 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassNoneKey];
          [v24 addObject:?];
          MEMORY[0x277D82BD8](v25);
        }

        v22 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassDoubleTapKey];
        v23 = [v130 objectForKey:?];
        MEMORY[0x277D82BD8](v23);
        MEMORY[0x277D82BD8](v22);
        if (v23)
        {
          v18 = MEMORY[0x277CCABB0];
          v21 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassDoubleTapKey];
          v20 = [v130 objectForKey:?];
          v19 = [v18 numberWithUnsignedInteger:{objc_msgSend(v20, "unsignedIntegerValue")}];
          [v129 setObject:? atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v19);
          MEMORY[0x277D82BD8](v20);
          MEMORY[0x277D82BD8](v21);
        }

        else
        {
          v16 = v138;
          v17 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassDoubleTapKey];
          [v16 addObject:?];
          MEMORY[0x277D82BD8](v17);
        }

        v14 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassTripleTapKey];
        v15 = [v130 objectForKey:?];
        MEMORY[0x277D82BD8](v15);
        MEMORY[0x277D82BD8](v14);
        if (v15)
        {
          v10 = MEMORY[0x277CCABB0];
          v13 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassTripleTapKey];
          v12 = [v130 objectForKey:?];
          v11 = [v10 numberWithUnsignedInteger:{objc_msgSend(v12, "unsignedIntegerValue")}];
          [v129 setObject:? atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v11);
          MEMORY[0x277D82BD8](v12);
          MEMORY[0x277D82BD8](v13);
        }

        else
        {
          v8 = v138;
          v9 = [(AXPhoenixClassifierConfiguration *)v140 predictionClassTripleTapKey];
          [v8 addObject:?];
          MEMORY[0x277D82BD8](v9);
        }

        [(AXPhoenixClassifierConfiguration *)v140 setGeneralPolicyThresholds:v129];
        objc_storeStrong(&v129, 0);
      }

      else
      {
        v6 = v138;
        v7 = [(AXPhoenixClassifierConfiguration *)v140 generalPolicyKey];
        [v6 addObject:?];
        MEMORY[0x277D82BD8](v7);
      }

      objc_storeStrong(&v130, 0);
      objc_storeStrong(&v132, 0);
      objc_storeStrong(&v134, 0);
    }

    else
    {
      v4 = v138;
      v5 = [(AXPhoenixClassifierConfiguration *)v140 predictionCountThresholdsKey];
      [v4 addObject:?];
      MEMORY[0x277D82BD8](v5);
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
  v49 = [(AXPhoenixClassifierConfiguration *)self dataKey];
  v63[0] = v49;
  v48 = [(AXPhoenixClassifierConfiguration *)self accelerometerSampleRateInHzKey];
  v61[0] = v48;
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXPhoenixClassifierConfiguration accelerometerSampleRateInHz](self, "accelerometerSampleRateInHz")}];
  v62[0] = v47;
  v46 = [(AXPhoenixClassifierConfiguration *)self maxAccelerationBufferSizeKey];
  v61[1] = v46;
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXPhoenixClassifierConfiguration maxAccelerationBufferSize](self, "maxAccelerationBufferSize")}];
  v62[1] = v45;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:?];
  v64[0] = v44;
  v43 = [(AXPhoenixClassifierConfiguration *)self policyKey];
  v63[1] = v43;
  v42 = [(AXPhoenixClassifierConfiguration *)self modelPredictionRateInHzKey];
  v59[0] = v42;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXPhoenixClassifierConfiguration modelPredictionRateInHz](self, "modelPredictionRateInHz")}];
  v60[0] = v41;
  v40 = [(AXPhoenixClassifierConfiguration *)self maxPredictionBufferSizeKey];
  v59[1] = v40;
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXPhoenixClassifierConfiguration maxPredictionBufferSize](self, "maxPredictionBufferSize")}];
  v60[1] = v39;
  v38 = [(AXPhoenixClassifierConfiguration *)self minDurationBetweenTriggersInSecondsKey];
  v59[2] = v38;
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXPhoenixClassifierConfiguration minDurationBetweenTriggersInSeconds](self, "minDurationBetweenTriggersInSeconds")}];
  v60[2] = v37;
  v36 = [(AXPhoenixClassifierConfiguration *)self predictionConfidenceThresholdKey];
  v59[3] = v36;
  v3 = MEMORY[0x277CCABB0];
  [(AXPhoenixClassifierConfiguration *)self predictionConfidenceThreshold];
  v35 = [v3 numberWithDouble:?];
  v60[3] = v35;
  v34 = [(AXPhoenixClassifierConfiguration *)self predictionCountThresholdsKey];
  v59[4] = v34;
  v33 = [(AXPhoenixClassifierConfiguration *)self doubleTapPolicyKey];
  v57[0] = v33;
  v32 = [(AXPhoenixClassifierConfiguration *)self predictionClassNoneKey];
  v55[0] = v32;
  v31 = [(AXPhoenixClassifierConfiguration *)self doubleTapPolicyThresholds];
  v30 = [(NSArray *)v31 objectAtIndexedSubscript:?];
  v56[0] = v30;
  v29 = [(AXPhoenixClassifierConfiguration *)self predictionClassDoubleTapKey];
  v55[1] = v29;
  v28 = [(AXPhoenixClassifierConfiguration *)self doubleTapPolicyThresholds];
  v27 = [(NSArray *)v28 objectAtIndexedSubscript:?];
  v56[1] = v27;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
  v58[0] = v26;
  v25 = [(AXPhoenixClassifierConfiguration *)self tripleTapPolicyKey];
  v57[1] = v25;
  v24 = [(AXPhoenixClassifierConfiguration *)self predictionClassNoneKey];
  v53[0] = v24;
  v23 = [(AXPhoenixClassifierConfiguration *)self tripleTapPolicyThresholds];
  v22 = [(NSArray *)v23 objectAtIndexedSubscript:0];
  v54[0] = v22;
  v21 = [(AXPhoenixClassifierConfiguration *)self predictionClassTripleTapKey];
  v53[1] = v21;
  v20 = [(AXPhoenixClassifierConfiguration *)self tripleTapPolicyThresholds];
  v19 = [(NSArray *)v20 objectAtIndexedSubscript:1];
  v54[1] = v19;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
  v58[1] = v18;
  v17 = [(AXPhoenixClassifierConfiguration *)self generalPolicyKey];
  v57[2] = v17;
  v16 = [(AXPhoenixClassifierConfiguration *)self predictionClassNoneKey];
  v51[0] = v16;
  v15 = [(AXPhoenixClassifierConfiguration *)self generalPolicyThresholds];
  v14 = [(NSArray *)v15 objectAtIndexedSubscript:0];
  v52[0] = v14;
  v13 = [(AXPhoenixClassifierConfiguration *)self predictionClassDoubleTapKey];
  v51[1] = v13;
  v12 = [(AXPhoenixClassifierConfiguration *)self generalPolicyThresholds];
  v11 = [(NSArray *)v12 objectAtIndexedSubscript:1];
  v52[1] = v11;
  v10 = [(AXPhoenixClassifierConfiguration *)self predictionClassTripleTapKey];
  v51[2] = v10;
  v9 = [(AXPhoenixClassifierConfiguration *)self generalPolicyThresholds];
  v8 = [(NSArray *)v9 objectAtIndexedSubscript:2];
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
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  *MEMORY[0x277D85DE8];

  return v5;
}

@end