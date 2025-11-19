@interface PTMetalTextureUtil
+ (unint64_t)macroBlockSizeForPixelFormat:(unint64_t)a3 device:(id)a4;
- (PTMetalTextureUtil)initWithMetalContext:(id)a3;
- (id)createWithWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(unint64_t)a5 mipmapLevelCount:(unint64_t)a6;
- (id)mipmapLevelsUsingTextureView:(id)a3;
- (int)copy:(id)a3 inTex:(id)a4 outTex:(id)a5;
- (int)mix:(id)a3 inTexX:(id)a4 inTexY:(id)a5 outTex:(id)a6 alpha:(float)a7;
- (int)multiply:(id)a3 inTex:(id)a4 outTex:(id)a5 multiplier:(float)a6;
- (int)resample420To444:(id)a3 inLuma:(id)a4 inChroma:(id)a5 outYUV:(id)a6;
@end

@implementation PTMetalTextureUtil

- (PTMetalTextureUtil)initWithMetalContext:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = PTMetalTextureUtil;
  v5 = [(PTMetalTextureUtil *)&v50 init];
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = [v4 device];
  device = v5->_device;
  v5->_device = v6;

  v5->_supportGPUFamilyApple7 = [v4 supportsFamily:1007];
  v8 = [v4 imageblocksSupported];
  v5->_imageblocksSupported = v8;
  if (v8)
  {
    v9 = [v4 computePipelineStateFor:@"copy" withConstants:0];
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
    v19 = [v4 computePipelineStateFor:@"copyNoImageblocks" withConstants:0];
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

  v21 = [v4 computePipelineStateFor:@"multiply" withConstants:0];
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

  v23 = [v4 computePipelineStateFor:@"mix" withConstants:0];
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

  v25 = [v4 computePipelineStateFor:@"resample420To444" withConstants:0];
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

- (id)createWithWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(unint64_t)a5 mipmapLevelCount:(unint64_t)a6
{
  v8 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a5 width:a3 height:a4 mipmapped:a6 != 0];
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
  if (a6 != -1)
  {
    if (a6 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a6;
    }

    [v8 setMipmapLevelCount:v10];
  }

  v11 = [(MTLDevice *)self->_device newTextureWithDescriptor:v8];

  return v11;
}

- (id)mipmapLevelsUsingTextureView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 mipmapLevelCount])
  {
    v5 = 0;
    do
    {
      v6 = [v3 newTextureViewWithPixelFormat:objc_msgSend(v3 textureType:"pixelFormat") levels:objc_msgSend(v3 slices:"textureType"), v5, 1, 0, 1];
      [v4 addObject:v6];

      ++v5;
    }

    while ([v3 mipmapLevelCount] > v5);
  }

  v7 = [v4 copy];

  return v7;
}

- (int)copy:(id)a3 inTex:(id)a4 outTex:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[PTImageblockConfig alloc] initWithTexture:v8];
  v12 = [v10 computeCommandEncoder];

  if (!v12)
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v13 disparityApplyPostModifier:v14 inDisparity:v15 outDisparity:v16 postModifier:v17, v18, v19, v20];
    }
  }

  if (self->_imageblocksSupported)
  {
    [v12 setImageblockWidth:-[PTImageblockConfig imageblockSize](v11 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v11, "imageblockSize")}];
  }

  [v12 setComputePipelineState:self->_copy];
  [v12 setTexture:v9 atIndex:0];

  [v12 setTexture:v8 atIndex:1];
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

  [v12 dispatchThreads:v23 threadsPerThreadgroup:v22];
  [v12 endEncoding];

  return 0;
}

- (int)multiply:(id)a3 inTex:(id)a4 outTex:(id)a5 multiplier:(float)a6
{
  v26 = a6;
  v9 = a5;
  v10 = a4;
  v11 = [a3 computeCommandEncoder];
  if (!v11)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v12 disparityApplyPostModifier:v13 inDisparity:v14 outDisparity:v15 postModifier:v16, v17, v18, v19];
    }
  }

  [v11 setComputePipelineState:self->_multiply];
  [v11 setTexture:v10 atIndex:0];

  [v11 setTexture:v9 atIndex:1];
  [v11 setBytes:&v26 length:4 atIndex:0];
  v20 = [v9 width];
  v21 = [v9 height];

  v25[0] = v20;
  v25[1] = v21;
  v25[2] = 1;
  v23 = xmmword_2244A5230;
  v24 = 1;
  [v11 dispatchThreads:v25 threadsPerThreadgroup:&v23];
  [v11 endEncoding];

  return 0;
}

- (int)mix:(id)a3 inTexX:(id)a4 inTexY:(id)a5 outTex:(id)a6 alpha:(float)a7
{
  v29 = a7;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [a3 computeCommandEncoder];
  if (!v14)
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v15 disparityApplyPostModifier:v16 inDisparity:v17 outDisparity:v18 postModifier:v19, v20, v21, v22];
    }
  }

  [v14 setComputePipelineState:self->_mix];
  [v14 setTexture:v13 atIndex:0];

  [v14 setTexture:v12 atIndex:1];
  [v14 setTexture:v11 atIndex:2];
  [v14 setBytes:&v29 length:4 atIndex:0];
  v23 = [v11 width];
  v24 = [v11 height];

  v28[0] = v23;
  v28[1] = v24;
  v28[2] = 1;
  v26 = xmmword_2244A5230;
  v27 = 1;
  [v14 dispatchThreads:v28 threadsPerThreadgroup:&v26];
  [v14 endEncoding];

  return 0;
}

- (int)resample420To444:(id)a3 inLuma:(id)a4 inChroma:(id)a5 outYUV:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [PTColorConversion getChromaOffsetFromLuma:v12 texChroma:v11];
  v22 = v14;
  v15 = [v13 computeCommandEncoder];

  [v15 setComputePipelineState:self->_resample420To444];
  [v15 setTexture:v12 atIndex:0];

  [v15 setTexture:v11 atIndex:1];
  [v15 setTexture:v10 atIndex:2];
  [v15 setBytes:&v22 length:8 atIndex:0];
  v16 = [v10 width];
  v17 = [v10 height];

  v21[0] = v16;
  v21[1] = v17;
  v21[2] = 1;
  v19 = xmmword_2244A5230;
  v20 = 1;
  [v15 dispatchThreads:v21 threadsPerThreadgroup:&v19];
  [v15 endEncoding];

  return 0;
}

+ (unint64_t)macroBlockSizeForPixelFormat:(unint64_t)a3 device:(id)a4
{
  v5 = a4;
  v6 = 32;
  if (a3 != 500 && a3 != 520)
  {
    MTLPixelFormatGetInfoForDevice();
    v6 = 16;
  }

  return v6;
}

@end