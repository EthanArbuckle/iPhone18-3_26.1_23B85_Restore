@interface PTMetalTextureUtil
+ (unint64_t)macroBlockSizeForPixelFormat:(unint64_t)format device:(id)device;
- (PTMetalTextureUtil)initWithMetalContext:(id)context;
- (id)createWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unint64_t)format mipmapLevelCount:(unint64_t)count;
- (id)mipmapLevelsUsingTextureView:(id)view;
- (int)copy:(id)copy inTex:(id)tex outTex:(id)outTex;
- (int)mix:(id)mix inTexX:(id)x inTexY:(id)y outTex:(id)tex alpha:(float)alpha;
- (int)multiply:(id)multiply inTex:(id)tex outTex:(id)outTex multiplier:(float)multiplier;
- (int)resample420To444:(id)to444 inLuma:(id)luma inChroma:(id)chroma outYUV:(id)v;
@end

@implementation PTMetalTextureUtil

- (PTMetalTextureUtil)initWithMetalContext:(id)context
{
  contextCopy = context;
  v50.receiver = self;
  v50.super_class = PTMetalTextureUtil;
  v5 = [(PTMetalTextureUtil *)&v50 init];
  if (!v5)
  {
    goto LABEL_20;
  }

  device = [contextCopy device];
  device = v5->_device;
  v5->_device = device;

  v5->_supportGPUFamilyApple7 = [contextCopy supportsFamily:1007];
  imageblocksSupported = [contextCopy imageblocksSupported];
  v5->_imageblocksSupported = imageblocksSupported;
  if (imageblocksSupported)
  {
    v9 = [contextCopy computePipelineStateFor:@"copy" withConstants:0];
    copy = v5->_copy;
    v5->_copy = v9;

    if (!v5->_copy)
    {
      v11 = _PTLogSystem();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

LABEL_20:
        v27 = 0;
        goto LABEL_21;
      }

LABEL_5:
      [(PTMetalTextureUtil *)v11 initWithMetalContext:v12, v13, v14, v15, v16, v17, v18];
      goto LABEL_19;
    }
  }

  else
  {
    v19 = [contextCopy computePipelineStateFor:@"copyNoImageblocks" withConstants:0];
    v20 = v5->_copy;
    v5->_copy = v19;

    if (!v5->_copy)
    {
      v11 = _PTLogSystem();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      goto LABEL_5;
    }
  }

  v21 = [contextCopy computePipelineStateFor:@"multiply" withConstants:0];
  multiply = v5->_multiply;
  v5->_multiply = v21;

  if (!v5->_multiply)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTMetalTextureUtil *)v11 initWithMetalContext:v28, v29, v30, v31, v32, v33, v34];
    }

    goto LABEL_19;
  }

  v23 = [contextCopy computePipelineStateFor:@"mix" withConstants:0];
  mix = v5->_mix;
  v5->_mix = v23;

  if (!v5->_mix)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTMetalTextureUtil *)v11 initWithMetalContext:v35, v36, v37, v38, v39, v40, v41];
    }

    goto LABEL_19;
  }

  v25 = [contextCopy computePipelineStateFor:@"resample420To444" withConstants:0];
  resample420To444 = v5->_resample420To444;
  v5->_resample420To444 = v25;

  if (!v5->_resample420To444)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTMetalTextureUtil *)v11 initWithMetalContext:v42, v43, v44, v45, v46, v47, v48];
    }

    goto LABEL_19;
  }

  v27 = v5;
LABEL_21:

  return v27;
}

- (id)createWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unint64_t)format mipmapLevelCount:(unint64_t)count
{
  v8 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:format width:width height:height mipmapped:count != 0];
  [v8 setUsage:19];
  if (self->_supportGPUFamilyApple7)
  {
    v9 = 0;
  }

  else
  {
    v9 = 32;
  }

  [v8 setResourceOptions:v9];
  if (count != -1)
  {
    if (count <= 1)
    {
      countCopy = 1;
    }

    else
    {
      countCopy = count;
    }

    [v8 setMipmapLevelCount:countCopy];
  }

  v11 = [(MTLDevice *)self->_device newTextureWithDescriptor:v8];

  return v11;
}

- (id)mipmapLevelsUsingTextureView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_new();
  if ([viewCopy mipmapLevelCount])
  {
    v5 = 0;
    do
    {
      v6 = [viewCopy newTextureViewWithPixelFormat:objc_msgSend(viewCopy textureType:"pixelFormat") levels:objc_msgSend(viewCopy slices:"textureType"), v5, 1, 0, 1];
      [v4 addObject:v6];

      ++v5;
    }

    while ([viewCopy mipmapLevelCount] > v5);
  }

  v7 = [v4 copy];

  return v7;
}

- (int)copy:(id)copy inTex:(id)tex outTex:(id)outTex
{
  outTexCopy = outTex;
  texCopy = tex;
  copyCopy = copy;
  v11 = [[PTImageblockConfig alloc] initWithTexture:outTexCopy];
  computeCommandEncoder = [copyCopy computeCommandEncoder];

  if (!computeCommandEncoder)
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v13 disparityApplyPostModifier:v14 inDisparity:v15 outDisparity:v16 postModifier:v17, v18, v19, v20];
    }
  }

  if (self->_imageblocksSupported)
  {
    [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v11 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v11, "imageblockSize")}];
  }

  [computeCommandEncoder setComputePipelineState:self->_copy];
  [computeCommandEncoder setTexture:texCopy atIndex:0];

  [computeCommandEncoder setTexture:outTexCopy atIndex:1];
  if (v11)
  {
    [(PTImageblockConfig *)v11 threads];
    [(PTImageblockConfig *)v11 threadsPerGroup];
  }

  else
  {
    memset(v23, 0, sizeof(v23));
    memset(v22, 0, sizeof(v22));
  }

  [computeCommandEncoder dispatchThreads:v23 threadsPerThreadgroup:v22];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)multiply:(id)multiply inTex:(id)tex outTex:(id)outTex multiplier:(float)multiplier
{
  multiplierCopy = multiplier;
  outTexCopy = outTex;
  texCopy = tex;
  computeCommandEncoder = [multiply computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v12 disparityApplyPostModifier:v13 inDisparity:v14 outDisparity:v15 postModifier:v16, v17, v18, v19];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_multiply];
  [computeCommandEncoder setTexture:texCopy atIndex:0];

  [computeCommandEncoder setTexture:outTexCopy atIndex:1];
  [computeCommandEncoder setBytes:&multiplierCopy length:4 atIndex:0];
  width = [outTexCopy width];
  height = [outTexCopy height];

  v25[0] = width;
  v25[1] = height;
  v25[2] = 1;
  v23 = xmmword_2244A5230;
  v24 = 1;
  [computeCommandEncoder dispatchThreads:v25 threadsPerThreadgroup:&v23];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)mix:(id)mix inTexX:(id)x inTexY:(id)y outTex:(id)tex alpha:(float)alpha
{
  alphaCopy = alpha;
  texCopy = tex;
  yCopy = y;
  xCopy = x;
  computeCommandEncoder = [mix computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v15 disparityApplyPostModifier:v16 inDisparity:v17 outDisparity:v18 postModifier:v19, v20, v21, v22];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_mix];
  [computeCommandEncoder setTexture:xCopy atIndex:0];

  [computeCommandEncoder setTexture:yCopy atIndex:1];
  [computeCommandEncoder setTexture:texCopy atIndex:2];
  [computeCommandEncoder setBytes:&alphaCopy length:4 atIndex:0];
  width = [texCopy width];
  height = [texCopy height];

  v28[0] = width;
  v28[1] = height;
  v28[2] = 1;
  v26 = xmmword_2244A5230;
  v27 = 1;
  [computeCommandEncoder dispatchThreads:v28 threadsPerThreadgroup:&v26];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)resample420To444:(id)to444 inLuma:(id)luma inChroma:(id)chroma outYUV:(id)v
{
  vCopy = v;
  chromaCopy = chroma;
  lumaCopy = luma;
  to444Copy = to444;
  [PTColorConversion getChromaOffsetFromLuma:lumaCopy texChroma:chromaCopy];
  v22 = v14;
  computeCommandEncoder = [to444Copy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_resample420To444];
  [computeCommandEncoder setTexture:lumaCopy atIndex:0];

  [computeCommandEncoder setTexture:chromaCopy atIndex:1];
  [computeCommandEncoder setTexture:vCopy atIndex:2];
  [computeCommandEncoder setBytes:&v22 length:8 atIndex:0];
  width = [vCopy width];
  height = [vCopy height];

  v21[0] = width;
  v21[1] = height;
  v21[2] = 1;
  v19 = xmmword_2244A5230;
  v20 = 1;
  [computeCommandEncoder dispatchThreads:v21 threadsPerThreadgroup:&v19];
  [computeCommandEncoder endEncoding];

  return 0;
}

+ (unint64_t)macroBlockSizeForPixelFormat:(unint64_t)format device:(id)device
{
  deviceCopy = device;
  v6 = 32;
  if (format != 500 && format != 520)
  {
    MTLPixelFormatGetInfoForDevice();
    v6 = 16;
  }

  return v6;
}

@end