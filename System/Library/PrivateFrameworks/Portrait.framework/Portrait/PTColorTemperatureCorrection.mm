@interface PTColorTemperatureCorrection
- (PTColorTemperatureCorrection)initWithMetalContext:(id)a3;
- (id)description;
- (void)colorTemperatureCorrectionYUVCube:(id)a3 inYUV:(id)a4 outColorTemperatureCorrectionCube:(id)a5 colorTemperatureRGB:(id)a6 colorCorrectionIntensity:(float)a7;
- (void)estimateColorTemperatureFromBackground:(id)a3 inYUV:(id)a4 inBackgroundLuma:(id)a5 inBackgroundChroma:(id)a6 outColorTemperatureBuffer:(id)a7;
- (void)estimateColorTemperatureFromBackground:(void *)a3 colorTransferFunction:(int)a4 matrixYUVtoRGB:(uint64_t)a5 inBackgroundLuma:(void *)a6 inBackgroundChroma:(void *)a7 outColorTemperatureBuffer:(void *)a8;
@end

@implementation PTColorTemperatureCorrection

- (PTColorTemperatureCorrection)initWithMetalContext:(id)a3
{
  v5 = a3;
  v49.receiver = self;
  v49.super_class = PTColorTemperatureCorrection;
  v6 = [(PTColorTemperatureCorrection *)&v49 init];
  objc_storeStrong(&v6->_metalContext, a3);
  v7 = [(PTMetalContext *)v6->_metalContext computePipelineStateFor:@"colorTemperatureCorrectionYUVCube" withConstants:0];
  colorTemperatureCorrectionYUVCube = v6->_colorTemperatureCorrectionYUVCube;
  v6->_colorTemperatureCorrectionYUVCube = v7;

  if (!v6->_colorTemperatureCorrectionYUVCube)
  {
    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(PTColorTemperatureCorrection *)v19 initWithMetalContext:v20, v21, v22, v23, v24, v25, v26];
    }

    goto LABEL_14;
  }

  v9 = [(PTMetalContext *)v6->_metalContext computePipelineStateFor:@"colorTemperatureHistogram" withConstants:0];
  colorTemperatureHistogram = v6->_colorTemperatureHistogram;
  v6->_colorTemperatureHistogram = v9;

  if (!v6->_colorTemperatureHistogram)
  {
    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(PTColorTemperatureCorrection *)v19 initWithMetalContext:v27, v28, v29, v30, v31, v32, v33];
    }

    goto LABEL_14;
  }

  v11 = [(PTMetalContext *)v6->_metalContext computePipelineStateFor:@"colorTemperatureClear" withConstants:0];
  colorTemperatureClear = v6->_colorTemperatureClear;
  v6->_colorTemperatureClear = v11;

  if (!v6->_colorTemperatureClear)
  {
    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(PTColorTemperatureCorrection *)v19 initWithMetalContext:v34, v35, v36, v37, v38, v39, v40];
    }

    goto LABEL_14;
  }

  v13 = [(PTMetalContext *)v6->_metalContext computePipelineStateFor:@"colorTemperatureFromHistogram" withConstants:0];
  colorTemperatureFromHistogram = v6->_colorTemperatureFromHistogram;
  v6->_colorTemperatureFromHistogram = v13;

  if (!v6->_colorTemperatureFromHistogram)
  {
    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(PTColorTemperatureCorrection *)v19 initWithMetalContext:v41, v42, v43, v44, v45, v46, v47];
    }

LABEL_14:

    v18 = 0;
    goto LABEL_15;
  }

  v15 = [(PTMetalContext *)v6->_metalContext device];
  v16 = [v15 newBufferWithLength:44 options:0];
  colorTemperatureHistogramBuffer = v6->_colorTemperatureHistogramBuffer;
  v6->_colorTemperatureHistogramBuffer = v16;

  v18 = v6;
LABEL_15:

  return v18;
}

- (void)colorTemperatureCorrectionYUVCube:(id)a3 inYUV:(id)a4 outColorTemperatureCorrectionCube:(id)a5 colorTemperatureRGB:(id)a6 colorCorrectionIntensity:(float)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v25 = a7;
  v16 = [v13 transferFunction];
  v17 = [PTColorConversion getTransferFunction:v16 toLinear:1];

  v24 = v17;
  memset(v23, 0, sizeof(v23));
  [PTColorConversion getColorMatrix:v13 toRGB:0];
  memset(v22, 0, sizeof(v22));
  [PTColorConversion getColorMatrix:v13 toRGB:1];
  v18 = [v12 computeCommandEncoder];
  [v18 setComputePipelineState:self->_colorTemperatureCorrectionYUVCube];
  [v18 setTexture:v14 atIndex:0];
  [v18 setBuffer:v15 offset:0 atIndex:0];
  [v18 setBytes:v22 length:24 atIndex:1];
  [v18 setBytes:&v24 length:4 atIndex:2];
  [v18 setBytes:v23 length:24 atIndex:3];
  [v18 setBytes:&v25 length:4 atIndex:4];
  v21[0] = [v14 width];
  v21[1] = [v14 height];
  v21[2] = [v14 depth];
  v19 = vdupq_n_s64(0x10uLL);
  v20 = 1;
  [v18 dispatchThreads:v21 threadsPerThreadgroup:&v19];
  [v18 endEncoding];
}

- (void)estimateColorTemperatureFromBackground:(id)a3 inYUV:(id)a4 inBackgroundLuma:(id)a5 inBackgroundChroma:(id)a6 outColorTemperatureBuffer:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v13 transferFunction];
  v18 = [PTColorConversion getTransferFunction:v17 toLinear:0];

  v21 = 0uLL;
  v22 = 0;
  [PTColorConversion getColorMatrix:v13 toRGB:1];
  v19 = v21;
  v20 = v22;
  [(PTColorTemperatureCorrection *)self estimateColorTemperatureFromBackground:v12 colorTransferFunction:v18 matrixYUVtoRGB:&v19 inBackgroundLuma:v14 inBackgroundChroma:v15 outColorTemperatureBuffer:v16];
}

- (void)estimateColorTemperatureFromBackground:(void *)a3 colorTransferFunction:(int)a4 matrixYUVtoRGB:(uint64_t)a5 inBackgroundLuma:(void *)a6 inBackgroundChroma:(void *)a7 outColorTemperatureBuffer:(void *)a8
{
  v14 = a3;
  v36 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [v14 computeCommandEncoder];
  [v18 setComputePipelineState:a1[3]];
  [v18 setBuffer:a1[6] offset:0 atIndex:0];
  v34 = xmmword_2244A5BF0;
  v35 = 1;
  v32 = xmmword_2244A5C00;
  v33 = 1;
  [v18 dispatchThreads:&v34 threadsPerThreadgroup:&v32];
  [v18 endEncoding];
  v19 = [v15 width];
  v20 = [v15 height];
  [PTColorConversion getChromaOffsetFromLuma:v15 texChroma:v16];
  v31 = v21;
  v22 = [v14 computeCommandEncoder];

  [v22 setComputePipelineState:a1[2]];
  [v22 setTexture:v15 atIndex:0];
  [v22 setTexture:v16 atIndex:1];
  [v22 setBytes:a5 length:24 atIndex:0];
  [v22 setBytes:&v36 length:4 atIndex:1];
  [v22 setBytes:&v31 length:8 atIndex:2];
  [v22 setBuffer:a1[6] offset:0 atIndex:3];
  v23 = v19 / v20;
  v24 = sqrtf(2048.0 / v23);
  v25.f32[0] = v23 * v24;
  v25.f32[1] = v24;
  v26 = vand_s8(vcvt_s32_f32(v25), 0xFFFFFFFCFFFFFFF8);
  v27.i64[0] = v26.i32[0];
  v27.i64[1] = v26.i32[1];
  v34 = v27;
  v35 = 1;
  v32 = xmmword_2244A5810;
  v33 = 1;
  [v22 dispatchThreads:&v34 threadsPerThreadgroup:&v32];
  [v22 endEncoding];
  v28 = [v14 computeCommandEncoder];

  [v28 setComputePipelineState:a1[4]];
  [v28 setBuffer:a1[6] offset:0 atIndex:0];
  [v28 setBuffer:v17 offset:0 atIndex:1];
  [v28 setBytes:&v30 length:16 atIndex:2];
  [v28 setBytes:&v29 length:16 atIndex:3];
  v34 = vdupq_n_s64(1uLL);
  v35 = 1;
  v32 = xmmword_2244A5C30;
  v33 = 1;
  [v28 dispatchThreads:&v34 threadsPerThreadgroup:&v32];
  [v28 endEncoding];
}

- (id)description
{
  v2 = [(MTLBuffer *)self->_colorTemperatureHistogramBuffer contents];
  v3 = MEMORY[0x277CCACA8];
  v4 = atomic_load(v2);
  v5 = v2 + 1;
  v6 = atomic_load(v2 + 1);
  v7 = v2 + 2;
  v8 = atomic_load(v2 + 2);
  v9 = v2 + 3;
  v10 = atomic_load(v2 + 3);
  v11 = v2 + 4;
  v12 = atomic_load(v2 + 4);
  v13 = v2 + 5;
  v14 = atomic_load(v2 + 5);
  v15 = v2 + 6;
  v16 = atomic_load(v2 + 6);
  v17 = v2 + 7;
  v18 = atomic_load(v2 + 7);
  v19 = v2 + 8;
  v20 = atomic_load(v2 + 8);
  v21 = v2 + 9;
  v22 = atomic_load(v2 + 9);
  LODWORD(v2) = atomic_load(v2);
  LODWORD(v5) = atomic_load(v5);
  LODWORD(v2) = v5 + v2;
  LODWORD(v5) = atomic_load(v7);
  LODWORD(v7) = atomic_load(v9);
  LODWORD(v2) = v2 + v5 + v7;
  LODWORD(v5) = atomic_load(v11);
  LODWORD(v7) = atomic_load(v13);
  LODWORD(v5) = v5 + v7;
  LODWORD(v7) = atomic_load(v15);
  LODWORD(v2) = v2 + v5 + v7;
  LODWORD(v5) = atomic_load(v17);
  LODWORD(v7) = atomic_load(v19);
  LODWORD(v5) = v5 + v7;
  LODWORD(v7) = atomic_load(v21);
  return [v3 stringWithFormat:@"Histogram\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t(sum: %i)", v4, v6, v8, v10, v12, v14, v16, v18, v20, v22, (v2 + v5 + v7)];
}

@end