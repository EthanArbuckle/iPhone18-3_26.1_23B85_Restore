@interface PTDisparityUpscale
- (PTDisparityUpscale)initWithMetalContext:(id)a3 colorSize:(CGSize)a4 disparitySize:(CGSize)a5;
- (id)guidedUpsampling:(id)a3 inDisparity:(id)a4 inRGBA:(id)a5 colorDepth:(int64_t)a6;
@end

@implementation PTDisparityUpscale

- (PTDisparityUpscale)initWithMetalContext:(id)a3 colorSize:(CGSize)a4 disparitySize:(CGSize)a5
{
  width = a5.width;
  height = a5.height;
  v59 = a4.height;
  v60 = a4.width;
  v65[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v63.receiver = self;
  v63.super_class = PTDisparityUpscale;
  v8 = [(PTDisparityUpscale *)&v63 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_24;
  }

  objc_storeStrong(&v8->_metalContext, a3);
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
      v17 = [(PTMetalContext *)v9->_metalContext textureUtil];
      v18 = [v17 createWithWidth:v9->_width height:v9->_height pixelFormat:25];
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
        v31 = [(PTMetalContext *)v9->_metalContext device];
        v32 = [v30 initWithDevice:v31 filterDescriptor:v21];
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
          v36 = [(PTMetalContext *)v9->_metalContext device];
          v37 = [v36 newTextureWithDescriptor:v34];
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

- (id)guidedUpsampling:(id)a3 inDisparity:(id)a4 inRGBA:(id)a5 colorDepth:(int64_t)a6
{
  v33[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  v14 = v11;
  if (self->_upscaleFactor > 1.0)
  {
    if (!self->_guideConversionTexture)
    {
      v15 = [v12 pixelFormat];
      v16 = [(PTMetalContext *)self->_metalContext textureUtil];
      v17 = v16;
      if (v15 == 555)
      {
        v18 = 71;
      }

      else
      {
        v18 = 115;
      }

      v19 = [v16 createWithWidth:self->_width height:self->_height pixelFormat:v18];
      guideConversionTexture = self->_guideConversionTexture;
      self->_guideConversionTexture = v19;
    }

    v21 = [(PTMetalContext *)self->_metalContext textureUtil];
    v22 = v21;
    LODWORD(v23) = 1042983595;
    if (a6 == 8)
    {
      *&v23 = 1.0;
    }

    [v21 multiply:v10 inTex:v13 outTex:self->_guideConversionTexture multiplier:v23];

    guidedFilter = self->_guidedFilter;
    v33[0] = v11;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [(MPSImageSpatioTemporalGuidedFilter *)guidedFilter encodeRegressionToCommandBuffer:v10 sourceTextureArray:v25 guidanceTexture:self->_guideConversionTexture constraintsTextureArray:0 numberOfIterations:1 destinationCoefficientsTextureArray:self->_coefficientsTextureArray];

    v26 = self->_guideConversionTexture;
    coefficientsTextureArray = self->_coefficientsTextureArray;
    v28 = self->_guidedFilter;
    disparityUpscaled = self->_disparityUpscaled;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&disparityUpscaled count:1];
    [(MPSImageSpatioTemporalGuidedFilter *)v28 encodeReconstructionToCommandBuffer:v10 guidanceTexture:v26 coefficientsTextureArray:coefficientsTextureArray destinationTextureArray:v29];

    v14 = self->_disparityUpscaled;
  }

  v30 = v14;

  return v14;
}

@end