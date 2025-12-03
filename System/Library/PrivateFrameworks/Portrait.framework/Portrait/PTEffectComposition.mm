@interface PTEffectComposition
- (PTEffectComposition)initWithConfig:(id)config;
- (float32x2_t)computeDownsamplingFactorWithInputSource:(void *)source inputTarget:(uint64_t)target renderRequest:(void *)request;
- (unsigned)render:(id)render renderRequest:(id)request;
@end

@implementation PTEffectComposition

- (PTEffectComposition)initWithConfig:(id)config
{
  configCopy = config;
  v17.receiver = self;
  v17.super_class = PTEffectComposition;
  v5 = [(PTEffectComposition *)&v17 init];
  device = [configCopy device];

  if (!device)
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition initWithConfig:];
    }

    goto LABEL_14;
  }

  v7 = [PTMetalContext alloc];
  device2 = [configCopy device];
  v9 = [(PTMetalContext *)v7 initWithDevice:device2 bundleClass:objc_opt_class()];
  metalContext = v5->_metalContext;
  v5->_metalContext = v9;

  v11 = v5->_metalContext;
  if (!v11)
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition initWithConfig:];
    }

    goto LABEL_14;
  }

  if (![(PTMetalContext *)v11 imageblocksSupported])
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition initWithConfig:];
    }

    goto LABEL_14;
  }

  v12 = [(PTMetalContext *)v5->_metalContext computePipelineStateFor:@"composite" withConstants:0];
  composite = v5->_composite;
  v5->_composite = v12;

  if (!v5->_composite)
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition initWithConfig:];
    }

LABEL_14:

    v14 = 0;
    goto LABEL_15;
  }

  v14 = v5;
LABEL_15:

  return v14;
}

- (float32x2_t)computeDownsamplingFactorWithInputSource:(void *)source inputTarget:(uint64_t)target renderRequest:(void *)request
{
  requestCopy = request;
  sourceCopy = source;
  width = [sourceCopy width];
  height = [sourceCopy height];

  v9.f32[0] = width;
  v9.f32[1] = height;
  v22 = v9;
  [requestCopy inputTargetRect];
  v19 = v10;
  [requestCopy inputTargetRect];
  v11.f64[0] = v19;
  v11.f64[1] = v12;
  v13 = vcvt_f32_f64(v11);
  [requestCopy inputCropRect];
  v20 = v14;
  [requestCopy inputCropRect];
  v18 = v15;

  v16.f64[0] = v20;
  v16.f64[1] = v18;
  return vdiv_f32(vdiv_f32(v13, vdiv_f32(vcvt_f32_f64(v16), v22)), v22);
}

- (unsigned)render:(id)render renderRequest:(id)request
{
  renderCopy = render;
  requestCopy = request;
  inputSourcePixelBuffer = [requestCopy inputSourcePixelBuffer];
  device = [(PTMetalContext *)self->_metalContext device];
  v10 = [PTPixelBufferUtil createTextureFromPixelBuffer:inputSourcePixelBuffer device:device textureCache:self->metalTextureCache sRGB:0 metalYCBCRConversion:1];

  inputTargetPixelBuffer = [requestCopy inputTargetPixelBuffer];
  device2 = [(PTMetalContext *)self->_metalContext device];
  v13 = [PTPixelBufferUtil createTextureFromPixelBuffer:inputTargetPixelBuffer device:device2 textureCache:self->metalTextureCache sRGB:0 metalYCBCRConversion:1];

  outputPixelBuffer = [requestCopy outputPixelBuffer];
  device3 = [(PTMetalContext *)self->_metalContext device];
  v16 = [PTPixelBufferUtil createTextureFromPixelBuffer:outputPixelBuffer device:device3 textureCache:self->metalTextureCache sRGB:0 metalYCBCRConversion:1];

  if (!v10 || !v13 || !v16)
  {
    v21 = _PTLogSystem();
    if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition render:renderRequest:];
    }

    goto LABEL_11;
  }

  width = [v13 width];
  if (width == [v16 width])
  {
    height = [v13 height];
    if (height == [v16 height])
    {
      [(PTEffectComposition *)self computeDownsamplingFactorWithInputSource:v10 inputTarget:v13 renderRequest:requestCopy];
      if (vabds_f32(v19, v20) > 0.1)
      {
        v21 = _PTLogSystem();
        if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_ERROR))
        {
          [PTEffectComposition render:renderRequest:];
        }

LABEL_11:
        v22 = -10;
        goto LABEL_15;
      }

      if (v19 >= v20)
      {
        v24 = v19;
      }

      else
      {
        v24 = v20;
      }

      v25 = (log2f(1.0 / v24) + -1.0);
      sourceMipmap = self->_sourceMipmap;
      if (v24 <= 0.5)
      {
        if (!sourceMipmap || (v27 = -[MTLTexture width](self->_sourceMipmap, "width"), v27 != [v10 width] >> 1) || (v28 = -[MTLTexture height](self->_sourceMipmap, "height"), v28 != objc_msgSend(v10, "height") >> 1))
        {
          textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
          v30 = [textureUtil createWithWidth:objc_msgSend(v10 height:"width") >> 1 pixelFormat:objc_msgSend(v10 mipmapLevelCount:"height") >> 1, 71, -1];
          v31 = self->_sourceMipmap;
          self->_sourceMipmap = v30;
        }

        textureUtil2 = [(PTMetalContext *)self->_metalContext textureUtil];
        [textureUtil2 copy:renderCopy inTex:v10 outTex:self->_sourceMipmap];

        if (v25 < 1)
        {
          goto LABEL_28;
        }

        sourceMipmap = [renderCopy blitCommandEncoder];
        [sourceMipmap generateMipmapsForTexture:self->_sourceMipmap];
        [sourceMipmap endEncoding];
      }

      else
      {
        self->_sourceMipmap = 0;
      }

LABEL_28:
      v21 = [[PTImageblockConfig alloc] initWithTexture:v16];
      computeCommandEncoder = [renderCopy computeCommandEncoder];
      [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v21 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v21, "imageblockSize")}];
      [computeCommandEncoder setComputePipelineState:self->_composite];
      if (self->_sourceMipmap)
      {
        textureUtil3 = [(PTMetalContext *)self->_metalContext textureUtil];
        v35 = [textureUtil3 mipmapLevelsUsingTextureView:self->_sourceMipmap];

        v36 = [v35 count];
        if (v36 - 1 >= v25)
        {
          v37 = v25;
        }

        else
        {
          v37 = v36 - 1;
        }

        v38 = [v35 objectAtIndexedSubscript:v37];
        [computeCommandEncoder setTexture:v38 atIndex:0];
      }

      else
      {
        [computeCommandEncoder setTexture:v10 atIndex:0];
      }

      [computeCommandEncoder setTexture:v13 atIndex:1];
      [computeCommandEncoder setTexture:v16 atIndex:2];
      *&v50 = [v10 width];
      *&v49 = [v10 height];
      [requestCopy inputCropRect];
      v40.f64[1] = v39;
      v42.f64[1] = v41;
      v43.i64[0] = __PAIR64__(v49, v50);
      v43.i64[1] = __PAIR64__(v49, v50);
      v55 = vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v42), v40), v43);
      [requestCopy inputTargetRect];
      v45.f64[1] = v44;
      v47.f64[1] = v46;
      v54 = vcvt_hight_f32_f64(vcvt_f32_f64(v47), v45);
      [requestCopy inputTargetRectCornerRadius];
      v53 = v48;
      [computeCommandEncoder setBytes:&v55 length:16 atIndex:0];
      [computeCommandEncoder setBytes:&v54 length:16 atIndex:1];
      [computeCommandEncoder setBytes:&v53 length:4 atIndex:2];
      if (v21)
      {
        [(PTImageblockConfig *)v21 threads];
        [(PTImageblockConfig *)v21 threadsPerGroup];
      }

      else
      {
        memset(v52, 0, sizeof(v52));
        memset(v51, 0, sizeof(v51));
      }

      [computeCommandEncoder dispatchThreads:v52 threadsPerThreadgroup:v51];
      [computeCommandEncoder endEncoding];

      v22 = 0;
      goto LABEL_15;
    }
  }

  v21 = _PTLogSystem();
  if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_ERROR))
  {
    [PTEffectComposition render:renderRequest:];
  }

  v22 = -3;
LABEL_15:

  return v22;
}

@end