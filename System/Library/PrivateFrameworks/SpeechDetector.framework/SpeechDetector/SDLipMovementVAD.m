@interface SDLipMovementVAD
- (LipMovementVADDelegate)delegate;
- (SDLipMovementVAD)initWithModelFile:(id)a3;
- (void)addFaceTrackingData:(id)a3 atMachAbsTime:(unint64_t)a4;
- (void)runModel;
- (void)setupBlendshapeIndexArray;
@end

@implementation SDLipMovementVAD

- (LipMovementVADDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)runModel
{
  v81[3] = *MEMORY[0x277D85DE8];
  v72 = 0;
  v69 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_287BD29B0 dataType:65568 error:&v72];
  v64 = v72;
  v3 = [&unk_287BD29C8 objectAtIndexedSubscript:1];
  v4 = [v3 intValue];

  if (v4 >= 1)
  {
    v5 = 0;
    v6 = &unk_287BD29E0;
    v7 = 0x2803FC000uLL;
    v8 = &unk_287BD2968;
    v9 = 0x277CCA000uLL;
    v10 = 0x277CBE000uLL;
    v68 = self;
    do
    {
      v11 = [v6 objectAtIndexedSubscript:2];
      v12 = [v11 intValue];

      if (v12 >= 1)
      {
        v13 = 0;
        do
        {
          blendshapeLocationToIndexMap = self->_blendshapeLocationToIndexMap;
          v15 = [*(v7 + 1240) objectAtIndexedSubscript:v13];
          v16 = [(NSMutableDictionary *)blendshapeLocationToIndexMap objectForKeyedSubscript:v15];

          v17 = [(NSMutableArray *)self->_lipMovementDataArray objectAtIndex:v5];
          [v17 blendshapes];
          v19 = v18 = v6;
          v20 = [v19 objectAtIndex:{objc_msgSend(v16, "intValue")}];

          v81[0] = v8;
          v21 = [*(v9 + 2992) numberWithInt:v5];
          v81[1] = v21;
          v22 = [*(v9 + 2992) numberWithInt:v13];
          v81[2] = v22;
          [*(v10 + 2656) arrayWithObjects:v81 count:3];
          v23 = v9;
          v24 = v5;
          v26 = v25 = v8;

          v6 = v18;
          self = v68;
          v7 = 0x2803FC000;
          [v69 setObject:v20 forKeyedSubscript:v26];

          ++v13;
          v27 = [v6 objectAtIndexedSubscript:2];
          LODWORD(v16) = [v27 intValue];

          v8 = v25;
          v5 = v24;
          v9 = v23;
          v10 = 0x277CBE000;
        }

        while (v13 < v16);
      }

      ++v5;
      v28 = [&unk_287BD29C8 objectAtIndexedSubscript:1];
      v29 = [v28 intValue];
    }

    while (v5 < v29);
  }

  v30 = [MEMORY[0x277CBEB38] dictionary];
  [v30 setObject:v69 forKey:@"input_1"];
  v71 = 0;
  v31 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:v30 error:&v71];
  v66 = v71;
  v67 = v31;
  lipMovementVADModel = self->_lipMovementVADModel;
  options = self->_options;
  v70 = v64;
  v34 = [(MLModel *)lipMovementVADModel predictionFromFeatures:v31 options:options error:&v70];
  v35 = v70;

  if (v35)
  {
    v36 = SDLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(SDLogContextFacilityLocalSRBridge, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v74 = "[SDLipMovementVAD runModel]";
      v75 = 2114;
      v76 = *&v35;
      _os_log_error_impl(&dword_26B2CF000, v36, OS_LOG_TYPE_ERROR, "%s Error when running inference for LipMovementVAD: %{public}@", buf, 0x16u);
    }
  }

  v65 = v35;
  v63 = [v34 featureValueForName:@"Identity_1"];
  v37 = [v63 multiArrayValue];
  v38 = [v37 objectForKeyedSubscript:&unk_287BD29F8];
  [v38 floatValue];
  v40 = v39;

  v41 = v40;
  self->_visualSpeechProbability = v40;
  v42 = [v34 featureValueForName:@"Identity"];
  v43 = [v42 multiArrayValue];
  v44 = [v43 objectForKeyedSubscript:&unk_287BD2A10];
  [v44 floatValue];
  v46 = v45;

  v47 = [v43 objectForKeyedSubscript:&unk_287BD2A28];
  [v47 floatValue];
  v49 = v48;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v51 = WeakRetained;
    v52 = v30;
    v53 = objc_loadWeakRetained(&self->_delegate);
    v54 = objc_opt_respondsToSelector();

    v30 = v52;
    if (v54)
    {
      v55 = [(NSMutableArray *)self->_lipMovementDataArray firstObject];
      v56 = [v55 absMachTime];

      v57 = [(NSMutableArray *)self->_lipMovementDataArray lastObject];
      v58 = [v57 absMachTime];

      v59 = objc_loadWeakRetained(&self->_delegate);
      v60 = v58;
      v30 = v52;
      [v59 didUpdateVisualSpeechProbability:v56 from:v60 to:self->_visualSpeechProbability];
    }
  }

  v61 = SDLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(SDLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v74 = "[SDLipMovementVAD runModel]";
    v75 = 2048;
    v76 = v41;
    v77 = 2048;
    v78 = v49;
    v79 = 2048;
    v80 = v46;
    _os_log_impl(&dword_26B2CF000, v61, OS_LOG_TYPE_DEFAULT, "%s LipMovementVAD ran prediction, output is: %f. Probability of speech: %f, Probability of no speech: %f", buf, 0x2Au);
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)addFaceTrackingData:(id)a3 atMachAbsTime:(unint64_t)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CECEC0]];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CECDA0]];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CECDA8]];

  if (v10 && [v10 length] == 204)
  {
    v11 = [v10 bytes];
    for (i = 0; i != 204; i += 4)
    {
      LODWORD(v12) = *(v11 + i);
      v14 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
      [v7 addObject:v14];
    }
  }

  else
  {
    if (v6)
    {
      v15 = SDLogContextFacilityLocalSRBridge;
      if (os_log_type_enabled(SDLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315394;
        v25 = "[SDLipMovementVAD addFaceTrackingData:atMachAbsTime:]";
        v26 = 2114;
        v27 = v10;
        _os_log_impl(&dword_26B2CF000, v15, OS_LOG_TYPE_DEFAULT, "%s Received nonnul metadata object from AppleCVA, but nil blendshapes or unexpected amount of blendshapes. Blendshape object: %{public}@", &v24, 0x16u);
      }
    }

    if ([(NSMutableArray *)self->_lipMovementDataArray count])
    {
      for (j = 0; j != 51; ++j)
      {
        v17 = [(NSMutableArray *)self->_lipMovementDataArray lastObject];
        v18 = [v17 blendshapes];
        v19 = [v18 objectAtIndex:j];

        [v7 addObject:v19];
      }
    }

    else
    {
      v20 = 51;
      do
      {
        [v7 addObject:&unk_287BD2968];
        --v20;
      }

      while (v20);
    }
  }

  lipMovementDataArray = self->_lipMovementDataArray;
  v22 = [[LipMovementData alloc] initWithBlendshape:v7 andTime:a4];
  [(NSMutableArray *)lipMovementDataArray addObject:v22];

  --self->_framesToNextPrediction;
  if ([(NSMutableArray *)self->_lipMovementDataArray count]== 16)
  {
    [(NSMutableArray *)self->_lipMovementDataArray removeObjectAtIndex:0];
  }

  if ([(NSMutableArray *)self->_lipMovementDataArray count]== 15 && !self->_framesToNextPrediction)
  {
    self->_framesToNextPrediction = 6;
    [(SDLipMovementVAD *)self runModel];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setupBlendshapeIndexArray
{
  v6[5] = 0;
  CVAFaceTrackingCopySemantics();
  v3 = [0 objectForKeyedSubscript:*MEMORY[0x277CECDB0]];
  v4 = objc_opt_new();
  blendshapeLocationToIndexMap = self->_blendshapeLocationToIndexMap;
  self->_blendshapeLocationToIndexMap = v4;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SDLipMovementVAD_setupBlendshapeIndexArray__block_invoke;
  v6[3] = &unk_279CD9090;
  v6[4] = self;
  [v3 enumerateObjectsUsingBlock:v6];
}

void __45__SDLipMovementVAD_setupBlendshapeIndexArray__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [*(*(a1 + 32) + 48) setObject:v7 forKeyedSubscript:v6];
}

- (SDLipMovementVAD)initWithModelFile:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v25.receiver = self;
  v25.super_class = SDLipMovementVAD;
  v6 = [(SDLipMovementVAD *)&v25 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    v18 = SDLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(SDLogContextFacilityLocalSRBridge, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "[SDLipMovementVAD initWithModelFile:]";
      _os_log_error_impl(&dword_26B2CF000, v18, OS_LOG_TYPE_ERROR, "%s No path found for lip movement model.", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v6->_framesToNextPrediction = 15;
  v6->_visualSpeechProbability = 0.0;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  lipMovementDataArray = v7->_lipMovementDataArray;
  v7->_lipMovementDataArray = v8;

  objc_storeStrong(&v7->_configFile, a3);
  [(SDLipMovementVAD *)v7 setupBlendshapeIndexArray];
  v10 = objc_alloc_init(MEMORY[0x277CBFF38]);
  [v10 setComputeUnits:0];
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7->_configFile];
  v12 = objc_alloc_init(MEMORY[0x277CBFF68]);
  options = v7->_options;
  v7->_options = v12;

  v24 = 0;
  v14 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v11 configuration:v10 error:&v24];
  v15 = v24;
  lipMovementVADModel = v7->_lipMovementVADModel;
  v7->_lipMovementVADModel = v14;

  if (!v7->_lipMovementVADModel || v15)
  {
    v19 = SDLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(SDLogContextFacilityLocalSRBridge, OS_LOG_TYPE_ERROR))
    {
      v22 = v19;
      v23 = [v15 localizedDescription];
      *buf = 136315650;
      v27 = "[SDLipMovementVAD initWithModelFile:]";
      v28 = 2114;
      v29 = v11;
      v30 = 2114;
      v31 = v23;
      _os_log_error_impl(&dword_26B2CF000, v22, OS_LOG_TYPE_ERROR, "%s Failed to load LipMovementVAD model from %{public}@ with error: %{public}@", buf, 0x20u);
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

LABEL_6:
  v17 = v7;
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

@end