@interface PTColorTemperatureCorrection
- (PTColorTemperatureCorrection)initWithMetalContext:(id)context;
- (id)description;
- (void)colorTemperatureCorrectionYUVCube:(id)cube inYUV:(id)v outColorTemperatureCorrectionCube:(id)correctionCube colorTemperatureRGB:(id)b colorCorrectionIntensity:(float)intensity;
- (void)estimateColorTemperatureFromBackground:(id)background inYUV:(id)v inBackgroundLuma:(id)luma inBackgroundChroma:(id)chroma outColorTemperatureBuffer:(id)buffer;
- (void)estimateColorTemperatureFromBackground:(void *)background colorTransferFunction:(int)function matrixYUVtoRGB:(uint64_t)b inBackgroundLuma:(void *)luma inBackgroundChroma:(void *)chroma outColorTemperatureBuffer:(void *)buffer;
@end

@implementation PTColorTemperatureCorrection

- (PTColorTemperatureCorrection)initWithMetalContext:(id)context
{
  contextCopy = context;
  v49.receiver = self;
  v49.super_class = PTColorTemperatureCorrection;
  v6 = [(PTColorTemperatureCorrection *)&v49 init];
  objc_storeStrong(&v6->_metalContext, context);
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

  device = [(PTMetalContext *)v6->_metalContext device];
  v16 = [device newBufferWithLength:44 options:0];
  colorTemperatureHistogramBuffer = v6->_colorTemperatureHistogramBuffer;
  v6->_colorTemperatureHistogramBuffer = v16;

  v18 = v6;
LABEL_15:

  return v18;
}

- (void)colorTemperatureCorrectionYUVCube:(id)cube inYUV:(id)v outColorTemperatureCorrectionCube:(id)correctionCube colorTemperatureRGB:(id)b colorCorrectionIntensity:(float)intensity
{
  cubeCopy = cube;
  vCopy = v;
  correctionCubeCopy = correctionCube;
  bCopy = b;
  intensityCopy = intensity;
  transferFunction = [vCopy transferFunction];
  v17 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  v24 = v17;
  memset(v23, 0, sizeof(v23));
  [PTColorConversion getColorMatrix:vCopy toRGB:0];
  memset(v22, 0, sizeof(v22));
  [PTColorConversion getColorMatrix:vCopy toRGB:1];
  computeCommandEncoder = [cubeCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_colorTemperatureCorrectionYUVCube];
  [computeCommandEncoder setTexture:correctionCubeCopy atIndex:0];
  [computeCommandEncoder setBuffer:bCopy offset:0 atIndex:0];
  [computeCommandEncoder setBytes:v22 length:24 atIndex:1];
  [computeCommandEncoder setBytes:&v24 length:4 atIndex:2];
  [computeCommandEncoder setBytes:v23 length:24 atIndex:3];
  [computeCommandEncoder setBytes:&intensityCopy length:4 atIndex:4];
  v21[0] = [correctionCubeCopy width];
  v21[1] = [correctionCubeCopy height];
  v21[2] = [correctionCubeCopy depth];
  v19 = vdupq_n_s64(0x10uLL);
  v20 = 1;
  [computeCommandEncoder dispatchThreads:v21 threadsPerThreadgroup:&v19];
  [computeCommandEncoder endEncoding];
}

- (void)estimateColorTemperatureFromBackground:(id)background inYUV:(id)v inBackgroundLuma:(id)luma inBackgroundChroma:(id)chroma outColorTemperatureBuffer:(id)buffer
{
  backgroundCopy = background;
  vCopy = v;
  lumaCopy = luma;
  chromaCopy = chroma;
  bufferCopy = buffer;
  transferFunction = [vCopy transferFunction];
  v18 = [PTColorConversion getTransferFunction:transferFunction toLinear:0];

  v21 = 0uLL;
  v22 = 0;
  [PTColorConversion getColorMatrix:vCopy toRGB:1];
  v19 = v21;
  v20 = v22;
  [(PTColorTemperatureCorrection *)self estimateColorTemperatureFromBackground:backgroundCopy colorTransferFunction:v18 matrixYUVtoRGB:&v19 inBackgroundLuma:lumaCopy inBackgroundChroma:chromaCopy outColorTemperatureBuffer:bufferCopy];
}

- (void)estimateColorTemperatureFromBackground:(void *)background colorTransferFunction:(int)function matrixYUVtoRGB:(uint64_t)b inBackgroundLuma:(void *)luma inBackgroundChroma:(void *)chroma outColorTemperatureBuffer:(void *)buffer
{
  backgroundCopy = background;
  functionCopy = function;
  lumaCopy = luma;
  chromaCopy = chroma;
  bufferCopy = buffer;
  computeCommandEncoder = [backgroundCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self[3]];
  [computeCommandEncoder setBuffer:self[6] offset:0 atIndex:0];
  v34 = xmmword_2244A5BF0;
  v35 = 1;
  v32 = xmmword_2244A5C00;
  v33 = 1;
  [computeCommandEncoder dispatchThreads:&v34 threadsPerThreadgroup:&v32];
  [computeCommandEncoder endEncoding];
  width = [lumaCopy width];
  height = [lumaCopy height];
  [PTColorConversion getChromaOffsetFromLuma:lumaCopy texChroma:chromaCopy];
  v31 = v21;
  computeCommandEncoder2 = [backgroundCopy computeCommandEncoder];

  [computeCommandEncoder2 setComputePipelineState:self[2]];
  [computeCommandEncoder2 setTexture:lumaCopy atIndex:0];
  [computeCommandEncoder2 setTexture:chromaCopy atIndex:1];
  [computeCommandEncoder2 setBytes:b length:24 atIndex:0];
  [computeCommandEncoder2 setBytes:&functionCopy length:4 atIndex:1];
  [computeCommandEncoder2 setBytes:&v31 length:8 atIndex:2];
  [computeCommandEncoder2 setBuffer:self[6] offset:0 atIndex:3];
  v23 = width / height;
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
  [computeCommandEncoder2 dispatchThreads:&v34 threadsPerThreadgroup:&v32];
  [computeCommandEncoder2 endEncoding];
  computeCommandEncoder3 = [backgroundCopy computeCommandEncoder];

  [computeCommandEncoder3 setComputePipelineState:self[4]];
  [computeCommandEncoder3 setBuffer:self[6] offset:0 atIndex:0];
  [computeCommandEncoder3 setBuffer:bufferCopy offset:0 atIndex:1];
  [computeCommandEncoder3 setBytes:&v30 length:16 atIndex:2];
  [computeCommandEncoder3 setBytes:&v29 length:16 atIndex:3];
  v34 = vdupq_n_s64(1uLL);
  v35 = 1;
  v32 = xmmword_2244A5C30;
  v33 = 1;
  [computeCommandEncoder3 dispatchThreads:&v34 threadsPerThreadgroup:&v32];
  [computeCommandEncoder3 endEncoding];
}

- (id)description
{
  contents = [(MTLBuffer *)self->_colorTemperatureHistogramBuffer contents];
  v3 = MEMORY[0x277CCACA8];
  v4 = atomic_load(contents);
  v5 = contents + 1;
  v6 = atomic_load(contents + 1);
  v7 = contents + 2;
  v8 = atomic_load(contents + 2);
  v9 = contents + 3;
  v10 = atomic_load(contents + 3);
  v11 = contents + 4;
  v12 = atomic_load(contents + 4);
  v13 = contents + 5;
  v14 = atomic_load(contents + 5);
  v15 = contents + 6;
  v16 = atomic_load(contents + 6);
  v17 = contents + 7;
  v18 = atomic_load(contents + 7);
  v19 = contents + 8;
  v20 = atomic_load(contents + 8);
  v21 = contents + 9;
  v22 = atomic_load(contents + 9);
  LODWORD(contents) = atomic_load(contents);
  LODWORD(v5) = atomic_load(v5);
  LODWORD(contents) = v5 + contents;
  LODWORD(v5) = atomic_load(v7);
  LODWORD(v7) = atomic_load(v9);
  LODWORD(contents) = contents + v5 + v7;
  LODWORD(v5) = atomic_load(v11);
  LODWORD(v7) = atomic_load(v13);
  LODWORD(v5) = v5 + v7;
  LODWORD(v7) = atomic_load(v15);
  LODWORD(contents) = contents + v5 + v7;
  LODWORD(v5) = atomic_load(v17);
  LODWORD(v7) = atomic_load(v19);
  LODWORD(v5) = v5 + v7;
  LODWORD(v7) = atomic_load(v21);
  return [v3 stringWithFormat:@"Histogram\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t(sum: %i)", v4, v6, v8, v10, v12, v14, v16, v18, v20, v22, (contents + v5 + v7)];
}

@end