@interface PTDisparityUpscale
- (PTDisparityUpscale)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize;
- (id)guidedUpsampling:(id)upsampling inDisparity:(id)disparity inRGBA:(id)a colorDepth:(int64_t)depth;
@end

@implementation PTDisparityUpscale

- (PTDisparityUpscale)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize
{
  width = disparitySize.width;
  height = disparitySize.height;
  v59 = size.height;
  v60 = size.width;
  v65[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v63.receiver = self;
  v63.super_class = PTDisparityUpscale;
  v8 = [(PTDisparityUpscale *)&v63 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_24;
  }

  objc_storeStrong(&v8->_metalContext, context);
  v9->_upscaleFactor = 2.0;
  Bool = PTDefaultsPublicGetBool(@"harvesting.enabled", 0);
  v9->_isShaderHarvesting = Bool;
  upscaleFactor = v9->_upscaleFactor;
  v12.f64[0] = width;
  v12.f64[1] = height;
  v13 = vmulq_n_f64(v12, upscaleFactor);
  v14.f64[0] = v60;
  v14.f64[1] = v59;
  *&v9->_width = vcvtq_u64_f64(vbslq_s8(vcgtq_f64(v13, v14), v14, v13));
  if (upscaleFactor > 1.0 && (Bool & 1) == 0)
  {
    v15 = [[PTUtil alloc] initWithMetalContext:v9->_metalContext];
    portraitUtil = v9->_portraitUtil;
    v9->_portraitUtil = v15;

    if (v9->_portraitUtil)
    {
      textureUtil = [(PTMetalContext *)v9->_metalContext textureUtil];
      v18 = [textureUtil createWithWidth:v9->_width height:v9->_height pixelFormat:25];
      disparityUpscaled = v9->_disparityUpscaled;
      v9->_disparityUpscaled = v18;

      if (v9->_disparityUpscaled)
      {
        HIDWORD(v20) = HIDWORD(height);
        LOBYTE(v58) = 0;
        LODWORD(v20) = 1000593162;
        v21 = [MEMORY[0x277CD7570] filterDescriptorWithWidth:width height:height arrayLength:1 kernelSpatialDiameter:3 kernelTemporalDiameter:1 epsilon:1 sourceChannels:v20 guideChannels:3 preallocateIntermediates:v58];
        if (!v21)
        {
          v22 = _PTLogSystem();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(PTDisparityUpscale *)v22 initWithMetalContext:v23 colorSize:v24 disparitySize:v25, v26, v27, v28, v29];
          }
        }

        v30 = objc_alloc(MEMORY[0x277CD7568]);
        device = [(PTMetalContext *)v9->_metalContext device];
        v32 = [v30 initWithDevice:device filterDescriptor:v21];
        guidedFilter = v9->_guidedFilter;
        v9->_guidedFilter = v32;

        if (v9->_guidedFilter)
        {
          v34 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:width height:height mipmapped:0];
          [v34 setUsage:19];
          if ([(PTMetalContext *)v9->_metalContext supportsFamily:1007])
          {
            v35 = 0;
          }

          else
          {
            v35 = 32;
          }

          [v34 setResourceOptions:v35];
          [v34 setTextureType:3];
          device2 = [(PTMetalContext *)v9->_metalContext device];
          v37 = [device2 newTextureWithDescriptor:v34];
          v64 = v37;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
          v65[0] = v38;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
          coefficientsTextureArray = v9->_coefficientsTextureArray;
          v9->_coefficientsTextureArray = v39;

          goto LABEL_15;
        }

        v49 = _PTLogSystem();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          [(PTRaytracingV3001 *)v49 initWithMetalContext:v50 colorSize:v51 disparitySize:v52 debugRendering:v53 verbose:v54 options:v55 quality:v56];
        }
      }

      else
      {
        v21 = _PTLogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [PTDisparityUpscale initWithMetalContext:v21 colorSize:? disparitySize:?];
        }
      }
    }

    else
    {
      v21 = _PTLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(PTDisparityUpscale *)v21 initWithMetalContext:v42 colorSize:v43 disparitySize:v44, v45, v46, v47, v48];
      }
    }

LABEL_24:
    v41 = 0;
    goto LABEL_25;
  }

LABEL_15:
  v41 = v9;
LABEL_25:

  return v41;
}

- (id)guidedUpsampling:(id)upsampling inDisparity:(id)disparity inRGBA:(id)a colorDepth:(int64_t)depth
{
  v33[1] = *MEMORY[0x277D85DE8];
  upsamplingCopy = upsampling;
  disparityCopy = disparity;
  aCopy = a;
  v13 = aCopy;
  v14 = disparityCopy;
  if (self->_upscaleFactor > 1.0)
  {
    if (!self->_guideConversionTexture)
    {
      pixelFormat = [aCopy pixelFormat];
      textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
      v17 = textureUtil;
      if (pixelFormat == 555)
      {
        v18 = 71;
      }

      else
      {
        v18 = 115;
      }

      v19 = [textureUtil createWithWidth:self->_width height:self->_height pixelFormat:v18];
      guideConversionTexture = self->_guideConversionTexture;
      self->_guideConversionTexture = v19;
    }

    textureUtil2 = [(PTMetalContext *)self->_metalContext textureUtil];
    v22 = textureUtil2;
    LODWORD(v23) = 1042983595;
    if (depth == 8)
    {
      *&v23 = 1.0;
    }

    [textureUtil2 multiply:upsamplingCopy inTex:v13 outTex:self->_guideConversionTexture multiplier:v23];

    guidedFilter = self->_guidedFilter;
    v33[0] = disparityCopy;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [(MPSImageSpatioTemporalGuidedFilter *)guidedFilter encodeRegressionToCommandBuffer:upsamplingCopy sourceTextureArray:v25 guidanceTexture:self->_guideConversionTexture constraintsTextureArray:0 numberOfIterations:1 destinationCoefficientsTextureArray:self->_coefficientsTextureArray];

    v26 = self->_guideConversionTexture;
    coefficientsTextureArray = self->_coefficientsTextureArray;
    v28 = self->_guidedFilter;
    disparityUpscaled = self->_disparityUpscaled;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&disparityUpscaled count:1];
    [(MPSImageSpatioTemporalGuidedFilter *)v28 encodeReconstructionToCommandBuffer:upsamplingCopy guidanceTexture:v26 coefficientsTextureArray:coefficientsTextureArray destinationTextureArray:v29];

    v14 = self->_disparityUpscaled;
  }

  v30 = v14;

  return v14;
}

@end