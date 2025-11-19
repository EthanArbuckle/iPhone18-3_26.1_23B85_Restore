@interface DenoiseRemixStageConfig
+ (id)getOrRelease:(BOOL)a3;
- (id)_initWithLGAAlgorithm:(int)a3 enableBandZeroDenoising:(BOOL)a4 enableNoiseMap:(BOOL)a5;
@end

@implementation DenoiseRemixStageConfig

- (id)_initWithLGAAlgorithm:(int)a3 enableBandZeroDenoising:(BOOL)a4 enableNoiseMap:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = DenoiseRemixStageConfig;
  result = [(DenoiseRemixStageConfig *)&v9 init];
  if (result)
  {
    *(result + 3) = a3;
    *(result + 8) = a4;
    *(result + 9) = a5;
  }

  return result;
}

+ (id)getOrRelease:(BOOL)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C2330;
  if (v3)
  {
    qword_2A18C2330 = 0;
  }

  else if (!qword_2A18C2330)
  {
    v6 = [DenoiseRemixStageConfig alloc];
    v8 = objc_msgSend__initWithLGAAlgorithm_enableBandZeroDenoising_enableNoiseMap_(v6, v7, 1, 1, 0, @"SingleImageParametersForLearnedNR");
    v36[0] = v8;
    v35[1] = @"SingleImageParameters";
    v9 = [DenoiseRemixStageConfig alloc];
    v11 = objc_msgSend__initWithLGAAlgorithm_enableBandZeroDenoising_enableNoiseMap_(v9, v10, 0, 0, 0);
    v36[1] = v11;
    v35[2] = @"DefaultUBModeParameters";
    v12 = [DenoiseRemixStageConfig alloc];
    v14 = objc_msgSend__initWithLGAAlgorithm_enableBandZeroDenoising_enableNoiseMap_(v12, v13, 1, 1, 1);
    v36[2] = v14;
    v35[3] = @"ToneMappedUBParameters";
    v15 = [DenoiseRemixStageConfig alloc];
    v17 = objc_msgSend__initWithLGAAlgorithm_enableBandZeroDenoising_enableNoiseMap_(v15, v16, 0, 1, 1);
    v36[3] = v17;
    v35[4] = @"LowLightUBParameters";
    v18 = [DenoiseRemixStageConfig alloc];
    v20 = objc_msgSend__initWithLGAAlgorithm_enableBandZeroDenoising_enableNoiseMap_(v18, v19, 1, 1, 1);
    v36[4] = v20;
    v35[5] = @"LowLightUBParameters_max";
    v21 = [DenoiseRemixStageConfig alloc];
    v23 = objc_msgSend__initWithLGAAlgorithm_enableBandZeroDenoising_enableNoiseMap_(v21, v22, 1, 1, 1);
    v36[5] = v23;
    v35[6] = @"ProxyAssetEV0RefParameters";
    v24 = [DenoiseRemixStageConfig alloc];
    v26 = objc_msgSend__initWithLGAAlgorithm_enableBandZeroDenoising_enableNoiseMap_(v24, v25, 1, 1, 1);
    v36[6] = v26;
    v35[7] = @"ProxyAssetEVMRefParameters";
    v27 = [DenoiseRemixStageConfig alloc];
    v29 = objc_msgSend__initWithLGAAlgorithm_enableBandZeroDenoising_enableNoiseMap_(v27, v28, 1, 1, 1);
    v36[7] = v29;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v30, v36, v35, 8);
    v32 = qword_2A18C2330;
    qword_2A18C2330 = v31;
  }

  v33 = qword_2A18C2330;
  objc_sync_exit(v4);

  return v33;
}

@end